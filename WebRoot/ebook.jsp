<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="vn-VN">
<head>
<base href="<%=basePath%>">
<title>Sách điện tử</title>
<link href="res/bootstrap/css/bootstrap.css"  rel="stylesheet">
<link href="res/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<link href="res/mycss/home.css"  rel="stylesheet">
<link href="res/mycss/ebook.css" rel="stylesheet">
<jsp:include page="res-jsp/web_ico.jsp"/>
</head>
<body>
<jsp:include page="res-jsp/navigation.jsp"/>
<div class="ebookA">
<div class="ebookB">
	
	<div class="modA">
		<div class="hd"><hr><h3>Tải xuống miễn phí</h3></div>
		<div class="bd">
			<ul>
				<c:import url="/ebookBaidu"/>
			</ul>
		</div>
	</div>
	
	<div class="mod">
		<div class="hd"><hr><h3>Nổi bật</h3></div>
		<div class="bd">
			<ul>
				<c:import url="/ebookBaidu"/>
			</ul>
		</div>
	</div>
	
	<div class="mod">
		<div class="hd"><hr><h3>Lựa chọn</h3></div>
		<div class="bd">
			<ul>
				<c:import url="/ebookBaidu"/>
			</ul>
		</div>
	</div>
</div>
</div>
<jsp:include page="res-jsp/footer.jsp"/>
</body>
</html>