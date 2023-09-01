<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="vn-VN">
<head>
<base href="<%=basePath%>">
<title>Feedback</title>
<link href="res/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="res/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<link href="res/mycss/home.css"  rel="stylesheet">
<jsp:include page="res-jsp/web_ico.jsp"/>
<style type="text/css">
input.error:focus,.error:focus {
transition:border linear 0.2s,box-shadow linear .2s;
outline:none;
border-color:red;
box-shadow:0 0 8px red;
}
 #link-error,#phone-error,#content-error, #img-error {
   width: auto;
   color:red;
   margin-left:320px;
   margin-top:-35px;
   background: #fff;
   position: absolute;
}
</style>
</head>
<body>
	<jsp:include page="res-jsp/navigation.jsp"/>
	<div class="row-fluid">
		<div class="span8 offset2" style="margin-top:140px;">
			<div class="content">
				<h3>Xin chào:</h3>
				<p style="text-indent:2em;">
					Cảm ơn các bạn đã quan tâm ủng hộ, chúng tôi sẽ tận tình cung cấp cho các bạn những thông tin chi tiết và chính xác nhất để đáp ứng nhu cầu của cư dân mạng. Nhưng luôn có một bí mật, bất kể bạn có thích bố cục trang hay không;
Cho dù thông tin dữ liệu có sai hay hình ảnh có đúng hay không, tôi hy vọng sẽ nhận được sự đánh giá khách quan của bạn, xin tiếp thu những ý kiến ​​​​và đề xuất chân thành nhất của bạn, và chúng tôi sẽ trả lời và sửa những ý kiến ​​quý báu của bạn trong thời gian sớm nhất.
Và theo tầm quan trọng của phản hồi, hãy đưa ra một phần thưởng nhất định và gửi cho chúng tôi một món quà lưu niệm đẹp.
				</p>
			</div>
			<div class="span4 offset3">
				<form action="feedback" method="post" enctype="multipart/form-data" id="feedback">
					<label>Loại Câu Hỏi:</label> 
					<label class="radio inline">
						<input type="radio" name="type" value="dữ liệu" checked>Dữ liệu 
					</label>
					<label class="radio inline"> 
						<input type="radio" name="type"value="hình ảnh">Hình ảnh 
					</label> 
					<label class="radio inline"> 
						<input type="radio" name="type" value="trang">Trang 
					</label>
					<div>
						<label>Địa chỉ liên kết:</label>
						<input style="width:300px" type="text" name="link" id="link">
					</div>
					<div>
						<label>Mô tả vấn đề:</label>
						<textarea style="width:300px; height:100px;" name="content" id="content"></textarea>
					</div>
					<div>
						<label>Tải lên hình ảnh:</label> 
						<input name="img" type="file" id="img" accept=".jpg,.png,.gif"/>
					</div>
					<div>
						<label>Thông tin liên lạc:<span style="color:#989898">Email Hoặc gọi để liên lạc thêm</span></label> 
						<input style="width:300px;" type="text" name="phone" >
					</div>
					<input class="btn btn-large" value="Gửi phản hồi" type="submit">
				</form>
			</div>
		</div>
	</div>
<div id="myModal_yes" class="modal hide fade">
	<div class="modal-header">
    	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    	<h3>Nhắc nhở</h3>
  	</div>
	<div class="modal-body">
		<p>Chúng tôi đã nhận được đề xuất của bạn!
		<p style="margin-left:200px;">Cảm ơn ý kiến​ của bạn!</p>
		<p style="margin-left:400px;">chúc bạn một ngày tốt lành!</p>
	</div>
	<div class="modal-footer">
    	<button class="btn" data-dismiss="modal" aria-hidden="true">Đóng</button>
  </div>
</div>
<div id="myModal_no" class="modal hide fade">
	<div class="modal-header">
    	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    	<h3>Nhắc nhở</h3>
  	</div>
	<div class="modal-body">
		<p>Xin lỗi, phản hồi của bạn đã bị mất!
		<p style="margin-left:280px;">Vui lòng điền lại, chúng tôi chắc chắn sẽ xem rõ nguyên nhân!</p>
	</div>
	<div class="modal-footer">
    	<button class="btn" data-dismiss="modal" aria-hidden="true">Đóng</button>
  </div>
</div>
<jsp:include page="res-jsp/footer.jsp"/>
<script type="text/javascript" src="res/js/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="res/js/validation/additional-methods.js"></script>
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
		if(returnvar!==null)
		{
			if (returnvar == 1) {
				$('#myModal_yes').modal();
			} else {
				$('#myModal_no').modal();
			}
		}
	});
	$(function(){
		$("#content").blur(function(){
			$(this).val($("#content").val().replace(/(^\s+)|(\s+$)/g, ""));
		});
	});
</script>
<script type="text/javascript">
$().ready(function() {
  $("#feedback").validate({
    rules : {
		link : {
			required : true,
			url:true,
			maxlength : 200,
		},
		content : {
			required : true,
			maxlength : 500,
		},
		img : {
			required : true,
			accept: "gif|png|jpeg",
		},
		phone : {
			required : true,
			phone : true,
			maxlength : 50
		},
    },
	messages : {
		link : {
			required : "Vui lòng điền vào địa chỉ liên kết",
			url : "Vui lòng nhập đúng URL",
			maxlength : "URL bạn đã nhập quá dài"
		},
		content : {
			required : "Vui lòng mô tả ngắn gọn vấn đề",
			maxlength : "Bạn đã nhập quá nhiều"
		},
		img : {
			required : "Vui lòng tải lên một hình ảnh",
			accept : "Định dạng hình ảnh chỉ có thể là.gif/.png/.jpg",
			maxlength : "Tên ảnh dài quá"
		},
		phone : {
			required : "Vui lòng nhập thông tin liên hệ",
			maxlength : "Chiều dài không thể vượt quá 50",
		}
	},

  });
});
</script>
</body>
</html>