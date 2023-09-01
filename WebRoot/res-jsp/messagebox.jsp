<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div id="myModal_yes" class="modal hide fade">
	<div class="modal-header">
    	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    	<h3>Lời nhắc nhở thân thiện</h3>
  	</div>
	<div class="modal-body">
	</div>
	<div class="modal-footer">
    	<button class="btn" data-dismiss="modal" aria-hidden="true">Đóng</button>
  </div>
</div>
<div id="myModal_no" class="modal hide fade">
	<div class="modal-header">
    	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    	<h3>Lời nhắc nhở thân thiện</h3>
  	</div>
	<div class="modal-body">
	</div>
	<div class="modal-footer">
    	<button class="btn" data-dismiss="modal" aria-hidden="true">Đóng</button>
  </div>
</div>
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
		if(returnvar == 1) {
			if($("title").html()=="Thêm sách - Quản lý sách")
				{$(".modal-body").html("<h4 style="+"margin-left:180px;"+"color:#1EB9EE"+">Đã thêm sách thành công!</h4>");
				$('#myModal_yes').modal();}
			if($("title").html()=="Thêm sách điện tử - sách trên kệ")
				{$(".modal-body").html("<h4 style="+"margin-left:180px;"+"color:#1EB9EE"+">Đã thêm sách điện tử thành công!</h4>");
				$('#myModal_yes').modal();}
			if($("title").html()=="Thêm chi tiết sách - Sách có sẵn")
				{$(".modal-body").html("<h4 style="+"margin-left:180px;"+"color:#1EB9EE"+">Đã thêm chi tiết sách thành công!</h4>");
				$('#myModal_yes').modal();}
			if($("title").html()=="Quản lý người dùng-Quản lý nhà sách")
				{$(".modal-body").html("<h4 style="+"margin-left:180px;"+"color:#1EB9EE"+">Đặt quản trị viên thành công!</h4>");
				$('#myModal_yes').modal();}
		}if(returnvar == 0){
			if($("title").html()=="Thêm Sách - Sách trên Kệ")
				{$(".modal-body").html("<h4 style="+"margin-left:180px;"+"color:#FF0033"+">Không thể thêm sách!</h4>");
				$('#myModal_no').modal();}
			if($("title").html()=="Thêm sách điện tử - sách trên kệ")
				{$(".modal-body").html("<h4 style="+"margin-left:180px;"+"color:#FF0033"+">Không thêm được sách điện tử!</h4>");
				$('#myModal_no').modal();}
			if($("title").html()=="Thêm chi tiết sách - Sách có sẵn")
				{$(".modal-body").html("<h4 style="+"margin-left:180px;"+"color:#FF0033"+">Không thể thêm chi tiết sách!</h4>");
				$('#myModal_no').modal();}
			if($("title").html()=="Quản lý người dùng-Quản lý nhà sách")
				{$(".modal-body").html("<h4 style="+"margin-left:180px;"+"color:#FF0033"+">Không đặt được quản trị viên!</h4>");
				$('#myModal_no').modal();}
		}
	}
	var edit = $.getUrlParam('edit');
	if(edit!==null)
	{
		if(edit==1)
		{
			if($("title").html()=="Tất cả quản lý thư viện")
				{$(".modal-body").html("<h4 style="+"margin-left:10px;"+"color:#1EB9EE"+">Sửa đổi thông tin cơ bản của cuốn sách thành công!</h4>");
				$('#myModal_yes').modal();}
		}
	}
});
</script>