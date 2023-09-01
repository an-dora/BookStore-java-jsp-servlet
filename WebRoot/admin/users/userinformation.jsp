<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="vn-VN">
<head>
<base href="<%=basePath%>">
<title>Thông tin cá nhân</title>
<link href="res/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="res/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<link href="res/mycss/home.css" rel="stylesheet">
<link href="res/mycss/user.css" rel="stylesheet" >
<jsp:include page="${basePath}/res-jsp/web_ico.jsp"/>
</head>
<style>
.table th, .table td{
	text-align:left;
}
</style>
<body>
 	<jsp:include page="${basePath}/res-jsp/navigation.jsp"/>
 	<div class="row">
 		<div class="myspan">
		 		<div class="mynavigation-left">
		 			<jsp:include page="navigation_left.jsp"/>
			    </div>
			 	<div class="myuser-right">
			 		<table class="table">
			 		<col width="auto" >
				 		<thead>
						    <tr class="success">
						      <th>Thông tin cá nhân</th>
						    </tr>
						</thead>
						<tbody>
						<tr>
    						<td>Tên tài khoản:</td>
    						<td>${requestScope.user.username}</td>
  						</tr>	
  						<tr>
    						<td>Số điện thoại:</td>
    						<td>${requestScope.user.tel}</td>
  						</tr>
  						<tr>
    						<td>Giới tính:</td>
    						<td>${requestScope.user.sex}</td>
  						</tr>
  						<tr>
    						<td>Ngày sinh:</td>
    						<td>${requestScope.user.birthday }</td>
  						</tr>
  						<tr>
    						<td>Email:</td>
    						<td>${requestScope.user.email}</td>
  						</tr>
  						<tr>
    						<td>Địa chỉ:</td>
    						<td>${requestScope.user.addr}</td>
  						</tr>
  						<tr>
    						<td></td>
    						<td><a href="userinformation?temp=0">Cập nhật thông tin</a></td>
  						</tr>
  						</tbody>
					</table>
			 	</div>
			</div>
		</div>
<jsp:include page="${basePath}/res-jsp/footer.jsp"/>
<script type="text/javascript">
$(document).ready(function(){
    $('.top_active a').each(function(){  
        if($($(this))[0].href==String(window.location))  
            $(this).addClass('active');  
    });  
});
</script>
</body>
</html>