package com.zh.servlet.manage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zh.bean.SessionUser;
import com.zh.util.Dbcp;

public class UpdateBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException, IOException {
		doPost(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException, IOException {
		SessionUser user = new SessionUser();
		user = (SessionUser) request.getSession().getAttribute("_user");
		if(user==null)
		{
			response.sendRedirect("login.jsp");
			return;
		}
		String result = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
		con = Dbcp.getConnection();
		String updateQuery = "UPDATE bookinfo SET instore=?, bookname=?, bookimage=?, author=?, publisher=?, unitprice=?, summary=?, classid=?, edition=?, packaging=?, format=?, publdata=?, numpages=?, language=?, authorsIntroduce=?, contentIntroduce=?, directory=?, preface=? WHERE bookid=?";
		pstmt = con.prepareStatement(updateQuery);

		pstmt.setInt(1, Integer.parseInt(request.getParameter("instore")));
		pstmt.setString(2, request.getParameter("bookname"));
		pstmt.setString(3, request.getParameter("bookimage"));
		pstmt.setString(4, request.getParameter("author"));
		pstmt.setString(5, request.getParameter("publisher"));
		pstmt.setString(6, request.getParameter("unitprice"));
		pstmt.setString(7, request.getParameter("summary"));
		pstmt.setString(8, request.getParameter("classid"));
		pstmt.setInt(9, Integer.parseInt(request.getParameter("edition")));
		pstmt.setString(10, request.getParameter("packaging"));
		pstmt.setInt(11, Integer.parseInt(request.getParameter("format")));
		pstmt.setString(12, request.getParameter("publdata"));
		pstmt.setInt(13, Integer.parseInt(request.getParameter("numpages")));
		pstmt.setString(14, request.getParameter("language"));
		pstmt.setString(15, request.getParameter("authorsIntroduce"));
		pstmt.setString(16, request.getParameter("contentIntroduce"));
		pstmt.setString(17, request.getParameter("directory"));
		pstmt.setString(18, request.getParameter("preface"));
		pstmt.setInt(19, Integer.parseInt(request.getParameter("bookid")));

		pstmt.executeUpdate();
		System.out.println("Số dòng bị ảnh hưởng: " + pstmt);
		result ="admin/manage/managebook.jsp?edit=1";
		} catch (SQLException ex) {
			ex.printStackTrace(); result = "error.jsp";
		} finally {
			Dbcp.closePreparedStatement(pstmt); Dbcp.closeConnection(con);
		}

		response.sendRedirect(result);
	}
}
