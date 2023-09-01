<%@page import="com.zh.bean.Pagination"%>
<%@page import="com.zh.bean.BookBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table class="table table-striped table-hover">
	<col width="100px">
	<col width="100px">
	<col width="100px">
	<col width="60px">
	<col width="60px">
	<col width="100px">
	<col width="230px">
	<col width="80px">
	<col width="140px">
	<col>
	<thead>
		<tr>
			<th>Số thứ tự</th>
			<th>Tên tài khoản</th>
			<th>Thông tin sách</th>
			<th>Doanh thu</th>
			<th>Số lượng</th>
			<th>Thời gian phục vụ</th>
			<th>Thông tin giao hàng</th>
			<th>Người giao hàng</th>
			<th>Nhận xét</th>
			<th>Vận hành</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${requestScope.orders}" var="i">
			<tr>
				<td>${ i.orderid }</td>
				<td>${ i.username }</td>
				<td><img src="res/images/bookimage/${ i.bookimage} " width="50" height="50"><br>
				</td>
				<td>${ i.unitprice }&times;${ i.quantity }</td>
				<td></td>
				<td>${ i.ordertime }</td>
				<td class="dysl">Người nhận：${ i.receiver }<br>
					Địa chỉ giao hàng：${ i.address }<br>
					Thông tin liên lạc：${ i.contact }<br>
				</td>
				<td>${ i.courier }</td>
				<td class="dysl">${ i.orderremark }</td>
				<td>
					<a href1="deleteOrderM?id=${ i.id }" class="btn btn-small btn-danger button-book-delete">
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
		<li><a href="admin/manage/manageorder.jsp?page=<%= i %>"><%= i %></a></li>
	<%
		}
	%>
	</ul>
	<span class="text pull-right">
		tổng cộng<%= p.getCount() %>hồ sơ, hiện tại<%= p.getPage() %>Trang
	</span>
</div>