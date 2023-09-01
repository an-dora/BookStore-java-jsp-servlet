package com.zh.servlet.manage;

import java.io.Console;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zh.bean.BookBean;
import com.zh.bean.BookdetailBean;
import com.zh.bean.SessionUser;
import com.zh.util.Dbcp;

public class EditBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SessionUser user = new SessionUser();
		user = (SessionUser) request.getSession().getAttribute("_user");
		if (user == null) {
			response.sendRedirect("login.jsp");
			return;
		}
		String bookid = request.getParameter("bookid");

		String result = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		BookBean book = null;
		try {
			con = Dbcp.getConnection();
			pstmt = con.prepareStatement(
					"select bookid, instore, bookname, author, publisher, unitprice, summary, classid, edition, packaging, format, publdata, numpages,language, authorsIntroduce, contentIntroduce, directory, preface, bookimage from bookinfo where bookid=?;");
			pstmt.setString(1, bookid); //
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				book = new BookBean();
				book.setBookid(rs.getString(1));
				book.setInstore(rs.getInt(2));
				book.setBookname(rs.getString(3));
				book.setAuthor(rs.getString(4));
				book.setPublisher(rs.getString(5));
				book.setUnitprice(rs.getDouble(6));
				book.setSummary(rs.getString(7));
				book.setClassid(rs.getString(8));

				book.setEdition(rs.getInt(9));
				book.setPackaging(rs.getString(10));
				book.setFormat(rs.getInt(11));
				book.setPubldata(rs.getString(12));
				book.setNumpages(rs.getInt(13));
				book.setLanguage(rs.getString(14));
				book.setAuthorsIntroduce(rs.getString(15));
				book.setContentIntroduce(rs.getString(16));
				book.setDirectory(rs.getString(17));
				book.setPreface(rs.getString(18));
				book.setBookimage(rs.getString(19));

			}
			result = "admin/manage/editbook.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			result = "error.jsp";
		} finally {
			Dbcp.closePreparedStatement(pstmt);
			Dbcp.closeConnection(con);
		}
		request.setAttribute("book", book);
		request.getRequestDispatcher(result).forward(request, response);
	}
}
