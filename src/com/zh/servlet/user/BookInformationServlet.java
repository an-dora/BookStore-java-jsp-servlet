package com.zh.servlet.user;

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
import com.zh.util.Dbcp;

public class BookInformationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException, IOException {
		doPost(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException, IOException {
		String bookid = request.getParameter("bookid");
		String result = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		BookBean book = null;
		BookdetailBean bookdetail = null;
		try {
			con = Dbcp.getConnection();
			pstmt = con.prepareStatement("select bookid, instore, bookname, author, publisher, unitprice, summary, bookimage,buynum, classid, edition, packaging, format, publdata, numpages, language from bookinfo where bookid=?;");
			pstmt.setString(1, bookid);          //
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				book = new BookBean();
				bookdetail = new BookdetailBean();
				
				book.setBookid(rs.getString(1));
				book.setInstore(rs.getInt(2));
				book.setBookname(rs.getString(3));
				book.setAuthor(rs.getString(4));
				book.setPublisher(rs.getString(5));
				book.setUnitprice(rs.getDouble(6));
				book.setSummary(rs.getString(7));
				book.setBookimage(rs.getString(8));
				book.setBuynum(rs.getInt(9));
				book.setClassid(rs.getString(10));
				
				book.setEdition(rs.getInt(11));
				book.setPackaging(rs.getString(12));
				book.setFormat(rs.getInt(13));
				book.setPubldata(rs.getString(14));
				book.setNumpages(rs.getInt(15));
				book.setLanguage(rs.getString(16));
				
				/*
				 * String temp = rs.getString(17); if(temp.equals(" ")) {temp =
				 * "Có lỗi xảy rồi";} bookdetail.setAuthorsIntroduce(temp);
				 * 
				 * temp = rs.getString(17); if(temp.equals(" ")) {temp = "Có lỗi xảy rồi";}
				 * bookdetail.setContentIntroduce(temp);
				 * 
				 * temp = rs.getString(18); if(temp.equals(" ")) {temp = "Có lỗi xảy rồi";}
				 * 
				 * bookdetail.setDirectory(temp.length()>500?temp.substring(0, 398)+"...":temp);
				 * 
				 * temp = rs.getString(19); if(temp.equals(" ")) {temp = "Có lỗi xảy rồi";}
				 * bookdetail.setPreface(temp.length()>500?temp.substring(0, 398)+"...":temp);
				 * 
				 * bookdetail.setBigImage(rs.getString(20));
				 */
			}
			result = "bookinformation.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			result = "error.jsp";
		} finally {
			Dbcp.closePreparedStatement(pstmt);
			Dbcp.closeConnection(con);
		}
		request.setAttribute("bookdetail", bookdetail);
		request.setAttribute("book", book);
		request.getRequestDispatcher(result).forward(request, response);
	}
}
