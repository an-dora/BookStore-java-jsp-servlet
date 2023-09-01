<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="com.zh.process.RandomNumberGenerator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>Kiểm tra thông tin đơn hàng</title>
<link href="res/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="res/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<link href="res/mycss/home.css" rel="stylesheet">
<link href="res/mycss/userorder.css" rel="stylesheet" >
<jsp:include page="${basePath}/res-jsp/web_ico.jsp"/>
</head>
<body>
 	<jsp:include page="${basePath}/res-jsp/navigation.jsp"/>
 	<div class="row">
 		<div class="myspan">
	 		<div class="current">
	 			<img alt="" src="res/images/webico/115.png">
	 		</div>
			<div class="myuser-order">
				<span class="tit-txt">Điền và kiểm tra thông tin đặt hàng:</span>
				<form action="addorderform?temp=0" method="post"  class="form-horizontal" id="myform">
				<div class="checkout-steps">
					<div class="step-tit"><h5>Thông tin người nhận</h5></div>
						<div class="control-group shouName">
							<label class="control-label">Tên người nhận:</label>
							<div class="controls">
								<input type="text" name="receiver" id="receiver"/>
							</div>
						</div>
						<div class="control-group lian">
							<label class="control-label">Số điện thoại：</label>
							<div class="controls">
								<input type="text" name="contact"/>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Địa chỉ giao hàng：</label>
							<div class="controls">
								<input type="text" name="address" class="input-xxlarge"/>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Nhận xét：</label>
							<div class="controls">
								<textarea id="orderremark" name="orderremark" style="margin: 0px; height: 80px; width: 600px;"></textarea>
							</div>
						</div>
						
						<hr>
						<div class="step-tit"><h5>Phương thức thanh toán</h5></div>
						 <div class="payment-list">
							<div class="control-group">
						      <label class="radio inline">
						        <input type="radio" value="Thanh toán bằng ZaloPay" name="pay" checked="checked">Thanh toán bằng ZaloPay
						      </label>
						      <label class="radio inline">
						        <input type="radio" value="Thanh toán khi nhận hàng" name="pay">Thanh toán khi nhận hàng
						      </label>
						      <label class="radio inline">
						        <input type="radio" value="Thanh toán thẻ ngân hàng" name="pay" disabled="disabled">thanh toán thẻ ngân hàng
						      </label>
						      <label class="radio inline">
						      <h5>Thanh toán bằng thẻ ngân hàng hiện không được hỗ trợ</h5>
						      </label>
							</div>
						</div>
							
						<hr>
						<div class="step-tit"><h5>Yêu cầu giao hàng</h5></div>
							<c:import url="/goorder"/>
						<hr>
						<div class="step-tit"><h5>Thông tin hóa đơn</h5></div>
						<div class="invoice-cont">
							<span class="mr10"> Hóa đơn thường (điện tử) &nbsp; </span><span class="mr10"> Riêng tư &nbsp; </span>
						</div>
						
						<hr>
						<div class="step-tit"><h5>Phục vụ</h5></div>
						<div class="invoice-cont">
							<span>Nhà sách chịu trách nhiệm giao hàng và đảm bảo dịch vụ hậu mãi cho bạn</span><br><br>
							<span style="color:red;"><strong>Hỗ trợ hoàn tiền trong bảy ngày</strong></span>
						</div>
					</div>
					<div class="order-summary">
						<div><span>Một lần: </span><strong><%=request.getAttribute("sum") %></strong>VND</div>
						<div><span>Giảm giá： </span><strong style="color:#FC0;">&minus;0</strong>VND</div>
						<div><span>Vận chuyển hàng hóa： </span><strong style="color:#F60;">&minus;<%=request.getAttribute("postage") %></strong>VND</div>
						<div class="summary">
							<span class="yt">Tổng số phải trả：</span>
							<div class="ee"><strong class="sums"><%=request.getAttribute("sumA") %></strong>VND</div>
						</div>
						<div class="tijiao">
							<input type="submit" value="Nộp đơn đặt hàng" class="btn btn-large btn-success"/>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
<jsp:include page="${basePath}/res-jsp/footer.jsp"/>
<script type="text/javascript" src="res/js/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="res/js/validation/additional-methods.js"></script>
<script type="text/javascript" src="res/js/validation/my-form-validation.js"></script>
<script type="text/javascript">
$(function(){
		$(".input-xxlarge").blur(function(){
			$(this).val($(".input-xxlarge").val().replace(/(^\s+)|(\s+$)/g, ""));
		});
	});
$(function(){
		$("#receiver").blur(function(){
			$(this).val($("#receiver").val().replace(/(^\s+)|(\s+$)/g, ""));
		});
	});
$(function(){
		$("#orderremark").blur(function(){
			$(this).val($("#orderremark").val().replace(/(^\s+)|(\s+$)/g, ""));
		});
	});
</script>
</body>
</html>
