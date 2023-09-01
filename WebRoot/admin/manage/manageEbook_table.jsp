<%@page import="com.zh.bean.Pagination"%>
<%@page import="com.zh.bean.BookBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table class="table table-striped table-hover">
	<col width="70px">
	<col width="160px">
	<col width="180px">
	<col width="160px">
	<col width="90px">
	<col width="180px">
	<col width="110px">
	<col>
	<thead>
		<tr>
			<th>Mã Sách</th>
			<th>Hình ảnh</th>
			<th>Tên sách</th>
			<th>Tác giả</th>
			<th>Đơn giá</th>
			<th>Giới thiệu</th>
			<th>Thể loại</th>
			<th>Quản lý</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${requestScope.ebooks}" var="i">
			<tr>
				<td>${ i.id }</td>
				<td><img class="m-img" src="res/ebook/ebookimage/${ i.ebookimage} " width="50" height="50"></td>
				<td>${ i.ebookname }</td>
				<td>${ i.author }</td>
				<td>${ i.unitprice }</td>
				
				<td class="dysl" data-toggle="tooltip"title="${ i.summary }">
				${ i.summary }</td>
				<td>${ i.classid }</td>
				<td>
					<a href1="deleteEbook?id=${ i.id }" class="btn btn-small btn-danger button-book-delete">
						<span class="icon-trash icon-white"></span> Xóa bỏ
					</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<div class="pagination">
	<ul>
	<% 
		Pagination p = (Pagination)request.getAttribute("pagination");
		for(int i = 1; i <= p.getTotal(); i ++){
	%>
		<li><a href="admin/manage/managebook.jsp?page=<%= i %>"><%= i %></a></li>
	<%
		}
	%>
	</ul>
	<span class="text pull-right">
		tổng cộng<%= p.getCount() %>hồ sơ, hiện tại<%= p.getPage() %>Trang
	</span>
</div>