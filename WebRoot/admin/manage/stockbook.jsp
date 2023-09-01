<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="vn-VN">
<head>
<base href="<%=basePath%>">
<title>Quản lý Mua hàng - Kho bãi</title>
<link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="res/mycss/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
<link href="res/mycss/top.css" rel="stylesheet">
<jsp:include page="${basePath}/res-jsp/web_ico.jsp" />
</head>
<body>
 	<jsp:include page="top.jsp"/>
 	<div class="row">
		 <div class="myspan">
    		<form action="addstockbook" method="post" class="form-horizontal" id="mybookform">
				<div id="legend" class="">
					<legend>Thêm thông tin mua hàng</legend>
				</div>
				<div class="control-group">
					<label class="control-label">Số lượng mua:</label>
					<div class="controls">
						<input type="text" name="stockid"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Số sách:</label>
					<div class="controls">
						<input type="text" name="bookid"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Giá mua:</label>
					<div class="controls">
						<input type="text" name="stockprice"
						onkeyup="value=value.replace(/\.\d{2,}$/,value.substr(value.indexOf('.'),3))"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Số lượng mua:</label>
					<div class="controls">
						<input type="text" name="stockquantity"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Ngày mua:</label>
					<div class="controls">
						<input type="text" name="stockdate" readonly class="stockdate"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Nhận xét:</label>
					<div class="controls">
						<textarea rows="3" name="stockremark" class="clear-blank"></textarea>
					</div>
				</div>
				<div>
					<div class="controls">
						<input type="submit" value="Tra cứu" class="btn btn-success btn-large" style="width:220px;"/>
					</div>
				</div>
			</form>
    	 </div>
    </div>
<jsp:include page="${basePath}/res-jsp/footer01.jsp"/>
<script type="text/javascript" src="res/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="res/js/bootstrap-datetimepicker.vn-VN.js" charset="UTF-8"></script>
<script type="text/javascript" src="res/js/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="res/js/validation/additional-methods.js"></script>
<script type="text/javascript" src="res/js/validation/my-form-bookmanage-validation.js"></script>
<jsp:include page="${basePath}/res-jsp/messagebox.jsp"/>
<script type="text/javascript">
$(document).ready(function(){  
    $('.top_active a').each(function(){  
        if($($(this))[0].href==String(window.location))  
            $(this).parent().addClass('active');  
    });  
});
</script>
<script type="text/javascript">
    $(".stockdate").datetimepicker({format: 'yyyy-mm-dd',
    	autoclose: true, todayBtn: true, minView:2, startDate:1900-01-01,
    	startView:4,language:'vn-VN'});
</script>
</body>
</html>
