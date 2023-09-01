package com.zh.servlet.messages;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zh.bean.MessageBean;
import com.zh.bean.SessionUser;
import com.zh.util.Dbcp;

public class ThumbServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		SessionUser user = new SessionUser();
		user = (SessionUser) request.getSession().getAttribute("_user");
		if(user==null)//nhan
		{
			response.sendRedirect("login.jsp");
			return;
		}
		Integer recom_userid = user.getId();
		String userid = request.getParameter("userid");
		
		MessageBean mb = new MessageBean();
		mb.setBookid(request.getParameter("bookid"));
		mb.setUserid(Integer.valueOf(userid));
		
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = Dbcp.getConnection();
			pstmt = con.prepareStatement(
					"select mid from messageinfo where bookid = ? and userid= ?",
					Statement.RETURN_GENERATED_KEYS);
			pstmt.setString(1, mb.getBookid());
			pstmt.setInt(2, mb.getUserid());
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				mb.setMid(rs.getInt(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		
		} finally {
			Dbcp.closePreparedStatement(pstmt);
			Dbcp.closeConnection(con);
		}
		try {
			con=Dbcp.getConnection();
			pstmt = con.prepareStatement(
					"select count(*) from thumb where userid=? and bookid= ? and mid = ?");
			pstmt.setInt(1, recom_userid);
			pstmt.setString(2, mb.getBookid());
			pstmt.setInt(3, mb.getMid());
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				mb.setIsmessage(rs.getInt(1));
			}			
		}catch (SQLException e) {
			e.printStackTrace();

		} finally {
			Dbcp.closePreparedStatement(pstmt);
			Dbcp.closeConnection(con);
		}
		if(mb.getIsmessage()!=0){
			out.write("had");
		}else {
			try {
			con = Dbcp.getConnection();
			pstmt = con.prepareStatement(
					"update messageinfo set thumbnum=thumbnum+1 where bookid = ? and userid = ?",
					Statement.RETURN_GENERATED_KEYS);
			pstmt.setString(1, mb.getBookid());
			pstmt.setInt(2, mb.getUserid());
			pstmt.executeUpdate();
				
			pstmt = con.prepareStatement(
					"insert into thumb(bookid,userid,mid) values(?,?,?)",
					Statement.RETURN_GENERATED_KEYS);
			pstmt.setString(1, mb.getBookid());
			pstmt.setInt(2, recom_userid);
			pstmt.setInt(3, mb.getMid());
			pstmt.executeUpdate();	
			out.write("ok");
			} catch (SQLException e) {
				e.printStackTrace();
				out.write("had");
			} finally {
				Dbcp.closePreparedStatement(pstmt);
				Dbcp.closeConnection(con);
				out.close();
			}
		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	doPost(request, response);
	}
}
