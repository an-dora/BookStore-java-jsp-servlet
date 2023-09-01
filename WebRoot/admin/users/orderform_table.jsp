<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.zh.bean.BookBean"%>
<%@page import="java.util.List"%>

<table class="table table-striped table-hover">
<%-- 	<col width="130px">
	<col width="70px">
	<col width="70px">
	<col width="260px">
	<col width="90px">
	<col width="120px"> --%>
	<col>
	<thead>
		<tr>
			<th>Tất cả các đơn đặt hàng</th>
			<th>Số lượng</th>
			<th>Số tiền</th>
			<th>Thông tin giao hàng</th>
			<th>Người giao hàng</th>
			<th>Tình trạng</th>
			<th>Thông tin hậu cần</th>
		</tr>
	</thead>
	<c:forEach items="${requestScope.orderforms}" var="j">
	<tbody>
		<tr class="mytr">
			<td>Thời gian phục vụ:${ j.ordertime}&nbsp;&nbsp;&nbsp;&nbsp;
				Số thứ tự:${ j.orderid }&nbsp;&nbsp;&nbsp;&nbsp;
				Tên sách:${j.bookname }&nbsp;&nbsp;
				
			</td>
			<td style="float:right; border:0px; margin-top:-35px;">
			<a href="deleteOrder?bookid=${ j.bookid }&orderid=${ j.orderid }" ><i class="icon-trash"></i></a></td>
		</tr>
		<tr class="ordertr">
 			<td><br><br>
 				<a href="bookinformation?bookid=${ j.bookid }" style="text-decoration: none;">
					<img src="res/images/bookimage/${ j.bookimage} " width="100" height="100">
				</a>
			</td>
			<td><br><br>&times;${ j.quantity }</td>
			<td><br><br>${ j.quantity*j.unitprice }VND</td>
			<td style="text-align:left;"><br><br>
				Người nhận:${ j.receiver }<br>
				Địa chỉ giao hàng:${ j.address }<br>
				Số liên lạc:${ j.contact }</td>
			<td><br><br>${ j.courier }</td>
			<td><br><br>Chưa thanh toán<br>
				<a class="pay" style="text-decoration:none;">${ j.pay}</a></td>
			<td><br><br>Hàng của bạn đang chờ giao, vui lòng thanh toán trước!<%-- ${ j.orderremark } --%></td>
		</tr>
	</tbody>
	</c:forEach>
</table>
<c:if test="${requestScope.orderforms == '[]'}">
<h2 style="margin-left:80px;margin-top:40px; color:#0096DA;">Không có gì ở đây ca!!!</h2>
</c:if>