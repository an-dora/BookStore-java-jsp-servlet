package com.zh.servlet.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zh.bean.SessionUser;
import com.zh.bean.UserBean;
import com.zh.util.Dbcp;


public class UserInformationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		SessionUser userid = new SessionUser();
		userid = (SessionUser) request.getSession().getAttribute("_user");//Lấy id người dùng hiện đang đăng nhập
		
		if(userid == null)
		{
			response.sendRedirect("login.jsp");
		}else {
			String result = null;
			Integer  temp = Integer.parseInt(request.getParameter("temp"));  //Nhận yêu cầu hiện tại
			if(temp ==1)
			{
				result = "admin/users/userinformation.jsp";
			}else {
				result = "admin/users/changeinformation.jsp";
			}
	
			Connection con = null;
			PreparedStatement pstmt = null;
			UserBean user = new UserBean(); 
			try {
				con = Dbcp.getConnection();
				pstmt = con.prepareStatement("select username,tel,email,addr,sex,birthday from userinfo   where userid=?");
				pstmt.setInt(1, userid.getId());
				ResultSet rs = pstmt.executeQuery();
				if(rs.next()){
					user.setUsername(rs.getString(1));
					user.setTel(rs.getString(2));
					user.setEmail(rs.getString(3));
					user.setAddr(rs.getString(4));
					user.setSex(rs.getString(5));
					user.setBirthday(rs.getString(6));
				}
			} catch (Exception e) {
				e.printStackTrace();
				result = "error.jsp";
			} finally {
				Dbcp.closePreparedStatement(pstmt);
				Dbcp.closeConnection(con);
			}
			request.setAttribute("user", user);
			request.getRequestDispatcher(result).forward(request, response);
		}		
	}
}
