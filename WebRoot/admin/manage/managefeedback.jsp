<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	String path = request.getContextPath();	
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="vn-VN">
<head>
<base href="<%=basePath%>">
<title>Xem phản hồi-Quản lý thành phố sách</title>
<link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="res/mycss/managetop.css" rel="stylesheet" type="text/css">
<jsp:include page="${basePath}/res-jsp/web_ico.jsp"/> 
</head>
<body>
<jsp:include page="top.jsp"/> 
		<div class="row">
			<ul class="breadcrumb">
				<li class="active"><i class="icon-align-justify"></i> danh sách phản hồi</li>
			</ul>
			<div style="min-height:400px;">
				<c:import url="/managefeedback_table"/>
			</div>
		</div>
<jsp:include page="${basePath}/res-jsp/footer01.jsp"/>
<script type="text/javascript">
$(function(){
	$('.button-book-delete').click(function(){
		var href =  $(this).attr('href1');
		var result = confirm('Bạn có chắc chắn muốn xóa cuốn sách này');
		if(result){
			window.top.location.href=href;
		}
	});
});
</script>
</body>
</html>