<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="vn-VN">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng Nhập</title>
<link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="res/mycss/login.css" rel="stylesheet">
<jsp:include page="res-jsp/web_ico.jsp" />
</head>
<style>
.form-horizontal .control-label {
    float: left;
    width: 160px;
    margin-left: 30px;
    padding-top: 5px;
    text-align: right;
}
</style>
<body>
	<div class=navbar>
		<a href="index.jsp" style="text-decoration: none;"><span class="logo-text">NSO</span>
		</a>
		<div class="trigger">
			<a href="register.jsp" style="text-decoration: none;">Đăng ký
				miễn phí</a>
		</div>
	</div>
	
	<div class="login-panel">
		<div class="container">
			<div class="form">
				<form action="login" method="post" class="form-horizontal" style="width: 430px;">
					<div class="control-group">
						<label class="control-label">Tên tài khoản:</label>
						<div class="controls">
							<input type="text" name="username"
								placeholder="Vui lòng nhập tên người dùng" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Mật khẩu:</label>
						<div class="controls">
							<input type="password" name="password"
								placeholder="xin vui lòng nhập mật khẩu" />
						</div>
					</div>
<!-- 					<div class="control-group">
						<label class="control-label">Mã xác nhận:</label>
						<div class="controls">
							<input type="text" name="vcode" style="width: 100px;" /> <img
								alt="" src="vcode.jpg" class="vcode">
						</div>
					</div> -->
					<div class="control-group left">
						<label class="control-label"> <input type="checkbox"
							checked />Ghi nhớ trạng thái đăng nhập
						</label>
						<div class="wang">
							<a href="register.jsp" style="text-decoration: none;">Quên
								mật khẩu?</a>
						</div>
					</div>
					<div class="denglu">
						<button type="submit" class="btn btn-success btn-block btn-large">
							Đăng nhập</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div class="modal hide fade login-errors">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">&times;</button>
			<h3>Thông báo</h3>
		</div>
		<div class="modal-body">
			<ul>
				<c:forEach items="${requestScope.errors}" var="i">
					<li>${ i }</li>
				</c:forEach>
			</ul>
		</div>
		<div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true">Đóng</button>
		</div>
	</div>
	<div id="myModal_yes" class="modal hide fade">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">&times;</button>
			<h3>nhắc nhở</h3>
		</div>
		<div class="modal-body">
			<h4 style="color: #6C9A12;">Mật khẩu của bạn đã được thay đổi
				thành công!</h4>
			<h4 style="margin-left: 300px; color: #6C9A12;">Bạn có thể đăng
				nhập bằng mật khẩu mới của mình!</h4>
		</div>
		<div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true">Đóng</button>
		</div>
	</div>
	<jsp:include page="res-jsp/footer01.jsp" />
	<script type="text/javascript">
		$(function() {
			(function($) {
				$.getUrlParam = function(name) {
					var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
					var r = window.location.search.substr(1).match(reg);
					if (r != null)
						return unescape(r[2]);
					return null;
				};
			})(jQuery);
			var returnvar = $.getUrlParam('return');
			if (returnvar !== null) {
				if (returnvar == 1) {
					$('#myModal_yes').modal({
						backdrop : 'static',
						keyboard : false
					});
				}
			}
		});
	</script>
	<script type="text/javascript">
		$(function() {
			if ($('.login-errors .modal-body li').length > 0) {
				$('.login-errors').modal();
			}
		});
	</script>

<!-- 	<script type="text/javascript">
		$(function() {
			$('.login-panel form .vcode').click(function() {
				$(this).attr('src', 'vcode.jpg?_' + new Date());
			});
		});
	</script> -->
</body>
</html>