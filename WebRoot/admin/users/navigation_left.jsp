<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div class="navbar-inner">
	<dl class="my-left-nav">
    	<dd class="top_active">
      		<a href="userinformation?temp=1">
      		Thông tin cá nhân
      		 <i class="icon-chevron-right"></i></a>
      	</dd>
      	<dd class="top_active">
      		<a href="admin/users/shoppingcart.jsp">
      		 Giỏ hàng của tôi
      		 <i class="icon-chevron-right"></i></a>
      	</dd>
      	<dd class="top_active">
      		<a href="admin/users/userfavorite.jsp">
      		Bộ sưu tập của tôi
      		 <i class="icon-chevron-right "></i></a>
      	</dd>
      	<dd class="top_active">
      		<a href="userinformation?temp=0">
      		 Hoàn thiện thông tin
      		 <i class="icon-chevron-right "></i></a>
      	</dd>
      	<dd class="top_active">
          	<a href="admin/users/orderform.jsp">
          	Thông tin đơn hàng
          	<i class="icon-chevron-right "></i></a>
        </dd>
        <dd class="top_active">
          	<a href="admin/users/changepassword.jsp">
          	Đổi mật khẩu
          	<i class="icon-chevron-right "></i></a>
        </dd>
   </dl>
  </div>
<!-- <div class="walk">
<img src="res/images/webico/walk.gif">
</div> -->