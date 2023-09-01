package com.zh.shopping.cart;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zh.bean.SessionUser;
import com.zh.util.Dbcp;

public class DeleteShoppingCartServlet extends HttpServlet {
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
		user = (SessionUser) request.getSession().getAttribute("_user");//lay id
		if(user==null)
		{
			response.sendRedirect("login.jsp");
			return;
		}
		Integer del = Integer.valueOf(request.getParameter("del"));
		
		String result = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = Dbcp.getConnection();
			if(del==1){
				pstmt = con.prepareStatement("delete from shopcarinfo  where userid=?");
				pstmt.setInt(1, user.getId());
				pstmt.executeUpdate();
			}else {
				pstmt = con.prepareStatement("delete from shopcarinfo  where userid=? and bookid=?");
				pstmt.setInt(1, user.getId());
				pstmt.setString(2, request.getParameter("bookid"));
				pstmt.executeUpdate();
			}
			result = "admin/users/shoppingcart.jsp?";
		} catch (Exception e) {
			e.printStackTrace();
			result = "error.jsp";
		} finally {
			Dbcp.closePreparedStatement(pstmt);
			Dbcp.closeConnection(con);
		}
		response.sendRedirect(result);
	}
}
