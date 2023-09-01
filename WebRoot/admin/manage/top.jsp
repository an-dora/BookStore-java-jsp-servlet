<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%> 
<%	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="top-nav">
	<div class="logo">
		<a href="<%=basePath %>index.jsp" >
			<span class="booklogo">NSO</span>
		</a>
	</div>
	<div class="top-nav-a">
		<ul class="nav nav-pills">
	  		<li class="top_active">
	  			<a href="admin/manage/managebook.jsp">Quản lý tất cả sách</a>
	  		</li>
	  		<li class="top_active">
	  			<a href="admin/manage/manageEbook.jsp">Quản lý tất cả sách điện tử</a>
	  		</li>
<!-- 	  		<li class="top_active">
	  			<a href="admin/manage/stockbook.jsp">Thêm thông tin mua hàng</a>
	  		</li> -->
	  		<li>
	  			<a class="dropdown-toggle"
			       data-toggle="dropdown"
			       href="#">Thêm...
			        <b class="caret"></b>
			      </a>
			    <ul class="dropdown-menu">
			      	<li><a href="admin/manage/book.jsp">Thêm sách nhanh</a></li>
<!-- 			      	<li class="divider"></li>
			      	<li><a href="admin/manage/addbookdetail.jsp">Thêm chi tiết sách</a></li> -->
			      	<li class="divider"></li>
			      	<li><a href="admin/manage/addebook.jsp">thêm sách điện tử</a></li>
			    </ul>
	  		</li>
	  		<li>
		  		<a class="dropdown-toggle" data-toggle="dropdown"
				       href="#">Quản lý...
				   <b class="caret"></b>
				</a>
				<ul class="dropdown-menu">
				     <li><a href="admin/manage/manageuser.jsp">Xem thông tin người dùng</a></li>
				     <li class="divider"></li>
				     <li><a href="admin/manage/manageorder.jsp">Xem các đơn đặt hàng</a></li>
				     <li class="divider"></li>
				     <li><a href="admin/manage/managefeedback.jsp">Xem phản hồi</a></li>
				</ul>
	  		</li>
		</ul>
	</div>
	<div class="trigger">
		<c:if test="${sessionScope['_user'] != null}">
		   <a href="userinformation?temp=1" class="dropdown-toggle">${sessionScope['_user'].name}</a>
		</c:if>	
	</div>
</div>