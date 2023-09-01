<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="vn-VN">
<head>
<base href="<%=basePath%>">
<title>Giỏ hàng của tôi</title>
<link href="res/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="res/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<link href="res/mycss/home.css" rel="stylesheet">
<link href="res/mycss/shoppingcart.css" rel="stylesheet" >
<jsp:include page="${basePath}/res-jsp/web_ico.jsp"/>
</head>
<body>
 	<jsp:include page="${basePath}/res-jsp/navigation.jsp"/>
	<div class="row">
 		<div class="myspan">
		 	<div class="mynavigation-left">
		 		<jsp:include page="navigation_left.jsp"/>
		    </div>
		 	<div class="myuser-right">
				<div class="mynavbar">
					<div class="navbar-inner">
	    				<a class="brand" href="admin/users/shoppingcart.jsp">
	    					<img src="res/images/webico/shoppingcart.png" height="20" width="20">Giỏ hàng
	    				</a>
	    			</div>
	    			<c:import url="/getshoppingcart"/>
				</div>
			</div>
		</div>
	</div>
<div id="myModal_no" class="modal hide fade">
	<div class="modal-header">
    	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    	<h3>Nhắc nhở thân thiện</h3>
  	</div>
	<div class="modal-body">
		<h4 style="margin-left:120px; color:#0CBBEF">Giỏ hàng của bạn đã đầy, vui lòng thanh toán trước</h4>
	</div>
	<div class="modal-footer">
    	<button class="btn" data-dismiss="modal" aria-hidden="true">Đóng</button>
  </div>
</div>
<jsp:include page="${basePath}/res-jsp/footer.jsp"/>
<script type="text/javascript" src="res/js/shopp-cart.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('.top_active a').each(function(){  
        if($($(this))[0].href==String(window.location))  
            $(this).addClass('active');  
    });  
});
</script>
<script type="text/javascript">
$(function(){
	$("#checkAll").click(function () {
		if ($(this).prop("checked")) {
			$(".mycheck input").attr("checked",true);
			$(".checkAll").text("bỏ chọn tất cả");
		}else {
			$(".mycheck input").removeAttr("checked");
			$(".checkAll").text("chọn tất cả");
	 	}
	});
});

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
		if(returnvar!==null)
		{
			if (returnvar == 0) {
				$('#myModal_no').modal();
			}
		}
	});
</script>
<script type="text/javascript">
$(function(){
	$('.mydel').click(function(){
		var href =  $(this).attr('href1');
		var result = confirm('Bạn có chắc chắn muốn xóa tất cả？');
		if(result){
			window.top.location.href=href;
		}
	});
});
</script>
</body>
</html>
