package com.zh.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.validator.GenericValidator;

import com.zh.bean.SessionUser;
import com.zh.util.Dbcp;
import com.zh.vcode.ValidateCode;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		/*
		 * String vcode = request.getParameter("vcode"); String svcode =
		 * (String)request.getSession(true).getAttribute(ValidateCode.VCODE_SESSION_KEY)
		 * ;
		 */
		List<String> errors = new ArrayList<String>();
		
		/*
		 * if(!vcode.toLowerCase().equals(svcode.toLowerCase())){
		 * errors.add("Lỗi mã xác minh"); request.setAttribute("errors", errors);
		 * request.getRequestDispatcher("login.jsp").forward(request, response); return;
		 * }
		 */
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(GenericValidator.isBlankOrNull(username)){
			errors.add("Tên ngươi dung không được để trống");
		}
		if(GenericValidator.isBlankOrNull(password)){
			errors.add("Mật khẩu không được để trống");
		}
		if(!GenericValidator.minLength(username, 2) || !GenericValidator.maxLength(username, 16)){
			errors.add("Độ dài tên người dùng phải từ 3 đến 16 kí tự");
		}
		if(!GenericValidator.minLength(password, 6) || !GenericValidator.maxLength(password, 16)){
			errors.add("Độ dài mật khẩu phải từ 6 đến 16 kí tự");
		}
		if(errors.size() > 0){
			request.setAttribute("errors", errors);
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			return;
		}
		
		SessionUser user = new SessionUser();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			con = Dbcp.getConnection();
			pstmt = con.prepareStatement("select userid,username,permission from userinfo  where username=? and password=? LIMIT 1");
			pstmt.setString(1, username);
			pstmt.setString(2, DigestUtils.md5Hex(password));
			rs = pstmt.executeQuery();
			if(rs.next()){
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setPermission(rs.getInt(3));

				request.getSession().setAttribute("_user", user);
				response.sendRedirect("index.jsp");
			}else{
				errors.add("Tên đăng nhập hoặc tài khoản không chính xác");
				request.setAttribute("errors", errors);
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
		}catch(Exception e){
			e.printStackTrace();
			response.sendRedirect("error.jsp");
		}finally {
			Dbcp.closePreparedStatement(pstmt);
			Dbcp.closeConnection(con);
		}
	}

}
