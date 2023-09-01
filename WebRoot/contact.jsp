<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="vn-VN">
<head>
<base href="<%=basePath%>">
<title>Liên Hệ</title>
<link href="res/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="res/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<link href="res/mycss/home.css"  rel="stylesheet">
<jsp:include page="res-jsp/web_ico.jsp"/>
<style type="text/css">
</style>
</head>
<body>
	<jsp:include page="res-jsp/navigation.jsp"/>

	<div class="row-fluid">
		<div class="span8 offset3" style="margin-top:140px; min-height:400px;">
			<div class="content">
				<h4>Số điện thoại: 139-7159-7910</h4><br> 
				<h4>Email: 1196997178@gmail.com</h4><br>
				<h4>Địa chỉ liên hệ: 123/456 Phường An Bình Quận Ninh Kiều TP Cần Thơ </h4><br>
				<h4 style="color:red;">Lưu ý: Trang web vẫn đang được hoàn thiện, nếu có gì bất tiện mong các bạn thông cảm.</h4>
				<br>
				<%--<h1 style="color:red;">Người không phải quản trị viên không nhấp vào nút bên dưới</h1>
				<a href="addBookClass" class="btn btn-info">Thêm dữ liệu loại sách</a>
				<a class="btn" href="addBookInfo">Thêm dữ liệu cơ bản về sách</a>
				<a class="btn" href="addBookDetailInfo">Thêm chi tiết sách</a>
				<a class="btn" href="addEbookInfo">Thêm dữ liệu sách điện tử</a>--%>
			</div>
		</div>
	</div>
<jsp:include page="res-jsp/footer.jsp"/>
</body>
</html>
