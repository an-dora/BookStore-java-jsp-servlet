<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%	String path = request.getContextPath();
	String basePath = request.getScheme() +"://" +request.getServerName() +":" +request.getServerPort() +path +"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="vn-VN">
<head>
<base href="<%=basePath%>">
<title>Đăng Ký</title>
<link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="res/mycss/register.css" rel="stylesheet">
<jsp:include page="res-jsp/web_ico.jsp"/>
</head>
<style>
.form-horizontal .control-label {
    float: left;
    width: 160px;
    margin-left: 40px;
    padding-top: 5px;
    text-align: right;
}
</style>
<body>
	<div class="content">
		<div class=navbar>
			<a href="index.jsp" style="text-decoration: none;">
				<span class="logo-text">NSO</span>
			</a>
			<div class="trigger">
				<span>Tôi đã có tài khoản</span> 
				<a href="login.jsp" style="text-decoration: none;">Đăng nhập</a>
			</div>
		</div>
		<div class="login-panel">
			<div class="container">
				<div class="form">
					<form action="register" method="post" class="form-horizontal" id="myform">
						<div class="control-group">
							<label class="control-label">Tên tài khoản:</label>
							<div class="controls">
								<input type="text" name="username" id="username"/>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Mật khẩu:</label>
							<div class="controls">
								<input type="password"  name="password" id="password"/>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Xác nhận mật khẩu:</label>
							<div class="controls">
								<input type="password" name="re_password" id="re_password" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Số điện thoại：</label>
							<div class="controls">
								<input type="text" name="tel"/>
							</div>
						</div>
						<div class="left">
							<label for="protocol">
								<input type="checkbox" class="checkbox" onClick="check_a()" id="ch" >
								Tôi đã đọc và đồng ý
								<a style="text-decoration:none;" 
									title="Thỏa thuận đăng ký người dùng của Nhà sách"  
			      					data-container="body" 
			      					data-toggle="popover" 
			      					data-placement="top" 
			      					data-content="1.Bạn đồng ý với thỏa thuận đăng ký của Nhà sách, vui lòng kiểm tra trước khi đăng ký.
			      					2.Nếu bạn không đồng ý, vui lòng đóng cửa sổ và thoát khỏi.">
									  "Thỏa thuận đăng ký người dùng của NSO"
								</a>
							</label>
						</div>
						<div class="zhuce">
								<input id="c_input" type="submit" name="register" value="Đăng ký ngay"class="btn btn-success btn-block btn-large" disabled="disabled"/>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="res-jsp/footer01.jsp"/>
<script type="text/javascript" src="res/js/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="res/js/validation/additional-methods.js"></script>
<script type="text/javascript" src="res/js/validation/my-form-validation.js"></script>
<script type="text/javascript">
	function check_a() {
		if (document.getElementById("ch").checked == true) {
			document.getElementById("c_input").disabled = "";
		} else {
			document.getElementById("c_input").disabled = "disabled";
		}
	}
	$(function() {
		$("[data-toggle='popover']").popover();
	});
</script>
</body>
</html>