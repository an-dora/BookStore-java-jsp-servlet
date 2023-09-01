<%@page import="com.zh.bean.Pagination"%>
<%@page import="com.zh.bean.BookBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table class="table table-striped table-hover">
	<col width="60px">
	<col width="100px">
	<col width="130px">
	<col width="300px">
	<col width="130px">
	<col width="110px">
	<col width="150px">
	<thead>
		<tr>
			<th>Số seri</th>
			<th>Loại phản hồi</th>
			<th>Kết nối</th>
			<th>Nội dung</th>
			<th>Thông tin liên lạc</th>
			<th>Hình ảnh</th>
			<th>Thời gian phản hồi</th>
			<th>Vận hành</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${requestScope.feedbacks}" var="i">
			<tr>
				<td>${ i.id }</td>
				<td>${ i.type }</td>
				<td class="dysl" data-toggle="tooltip" title="${ i.link }">${ i.link }</td>
				<td class="dysl" data-toggle="tooltip" title="${ i.content }">${ i.content }</td>
				<td class="dysl" data-toggle="tooltip" title="${ i.phone }">${ i.phone }</td>
				<td>
					<img src="res/images/feedback/${ i.img} " width="50" height="50"><br>
				</td>
				<td>${ i.time }</td>
				<td>
					<a href1="deleteFeedBack?id=${ i.id }" class="btn btn-small btn-danger button-book-delete">
						<span class="icon-trash icon-white"></span> xóa bỏ
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
		<li><a href="admin/manage/managefeedback.jsp?page=<%= i %>"><%= i %></a></li>
	<%
		}
	%>
	</ul>
	<span class="text pull-right">
		Tổng cộng<%= p.getCount() %>hồ sơ, hiện tại<%= p.getPage() %>Trang
	</span>
</div>