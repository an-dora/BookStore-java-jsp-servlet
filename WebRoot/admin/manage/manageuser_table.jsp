<%@page import="com.zh.bean.Pagination"%>
<%@page import="com.zh.bean.UserBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table class="table table-striped table-hover">
<%-- 	<col width="60px">
	<col width="120px">
	<col width="60px">
	<col width="100px">
	<col width="120px">
	<col width="120px">
	<col width="120px">
	<col width="150px">
	<col width="60px">
	<col> --%>
	<thead>
		<tr>
			<th>Mã</th>
			<th>Tên tài khoản</th>
			<th>Giới tính</th>
			<th>Sinh năm</th>
			<th>Mail</th>
			<th>Điện thoại</th>
			<th>Địa chỉ</th>
			<th>Quyền</th>
			<th>Hành động</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${requestScope.users}" var="items">
			<tr>
				<td>${ items.userid }</td>
				<td class="dysl" data-toggle="tooltip" title="${ items.username }">${ items.username }</td>
				<td>${ items.sex }</td>
				<td>${ items.birthday }</td>
				<td class="dysl" data-toggle="tooltip" title="${ items.email }">${ items.email }</td>
				<td>${ items.tel }</td>
				<td class="dysl" data-toggle="tooltip" title="${ items.addr }">${ items.addr }</td>
				<td <c:if test="${ items.permission =='true'}"> style="color:#56AC00; font-weight:bold"</c:if>>
				${ items.permission}</td>
				<td>
					<a href="setadmin?userid=${ items.userid }" class="btn btn-small" 
					<c:if test="${ items.userid == sessionScope._user.id}">style="display:none"</c:if>>
						<span></span>Đặt làm QTV
					</a>
					<a href1="deleteuser?userid=${ items.userid }" class="btn btn-small btn-danger button-book-delete"
					<c:if test="${ items.userid == sessionScope._user.id}">style="display:none"</c:if>>
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
		<li><a href="admin/manage/manageuser.jsp?page=<%= i %>"><%= i %></a></li>
	<%
		}
	%>
	</ul>
	<span class="text pull-right">
		tổng cộng<%= p.getCount() %>hồ sơ, hiện tại<%= p.getPage() %>Trang
	</span>
</div>