package com.zh.servlet.file;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.zh.bean.BookBean;
import com.zh.bean.SessionUser;

public class UploadImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	@SuppressWarnings("unchecked")
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SessionUser user = new SessionUser();
		user = (SessionUser) request.getSession().getAttribute("_user");
		if(user==null)
		{
			response.sendRedirect("login.jsp");
			return;
		}
		List<BookBean> books = new ArrayList<BookBean>();
		
		if(!ServletFileUpload.isMultipartContent(request)){
			response.sendRedirect("admin/manage/book.jsp?return=0");
			return;
		}
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		BookBean book = new BookBean();
		String result = null;
		InputStream  is = null;
		OutputStream os = null;
		try {
			List<FileItem> files = upload.parseRequest(request);
			for(FileItem item : files){

				if(item.isFormField()){
					String name = item.getFieldName();  
					String value =  new String((item.getString("iso8859-1")).getBytes("iso8859-1"),"UTF-8");
			        if (name.equals("instore")) {      
			        	book.setInstore(Integer.valueOf(value).intValue());
			        }
			        if (name.equals("bookname")) {
			        	book.setBookname(value);
			        }
			        if (name.equals("unitprice")) {
			        	book.setUnitprice(Double.valueOf(value).doubleValue());
			        }
			        if (name.equals("author")) {
			        	book.setAuthor(value);
			        }
			        if (name.equals("publisher")) {
			        	book.setPublisher(value);
			        }
			        if (name.equals("summary")) {
			        	book.setSummary(value);
			        }
			        if (name.equals("classid")) {
			        	book.setClassid(value);
			        }
				}else{
					String fileName = URLEncoder.encode(item.getName(), "UTF-8");
					fileName = URLDecoder.decode(fileName, "UTF-8");
					book.setBookimage(fileName);
					books.add(book);
					
					File file = new File(getServletContext().getRealPath("/")+"\\res\\images\\bookimage\\" + fileName);
					
					is = item.getInputStream();
					os = new FileOutputStream(file);
					byte[] buffer = new byte[1024];
					while(is.read(buffer) != -1){
						os.write(buffer);
					}
				}
			}
			result = "/addbook";
		} catch (Exception e) {
			e.printStackTrace();
			result = "error.jsp";
		} finally {
			is.close();
			os.close();
		}
		request.setAttribute("books", books);
		request.getRequestDispatcher(result).forward(request, response);
	}
}
