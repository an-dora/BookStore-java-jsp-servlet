<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<%@page import="com.zh.bean.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="vn-VN">
<head>
<base href="<%=basePath%>">
<title>chi tiết sách</title>
<link href="res/bootstrap/css/bootstrap.css"  rel="stylesheet">
<link href="res/bootstrap/css/bootstrap-responsive.css"  rel="stylesheet">
<link href="res/mycss/home.css"   rel="stylesheet">
<link href="res/mycss/information.css"  rel="stylesheet">
<jsp:include page="res-jsp/web_ico.jsp"/>
</head>
<body>
	<jsp:include page="res-jsp/navigation.jsp"/>
	<div class="bkinf">
		<div class="bkinf-top">
			<div class="preview">
				<div class="preview-booth">
					<a href="javascript:;"> 
						<img src="res/images/bookimage/<c:out value="${ book.bookimage }"></c:out>"
							height="600" width="600" alt=""> 
					</a>
				</div>
			</div>
			<div class="bkinf-top-right">
				<h1><c:out value="${ book.bookname }"></c:out></h1><br>
				<hr>
				<h5>Tác giả:&nbsp;<c:out value="${ book.author }"></c:out></h5><br>
				<div>
					<h4 class="unitprice">Giá:&nbsp;</h4>
					<h2 ><span class="price"><c:out value="${ book.unitprice }"/></span>VNĐ</h2>
				</div><br>
				<dl class="property-quantity">
					<dt class="vm-metatit">Số lượng:</dt>
	                <dd class="clearfix">
     	                 <div class="property-quantity-control">
                             <button class="vm-minus btn" style="outline:none;">-</button>
                             <input class="text_box" id="J_quantity" type="text" value="1" disabled>
                             <button class="vm-plus btn" style="outline:none;">+</button>
                         </div>
                    </dd>
                </dl>
				<br>
				
				<h3 class="unitprice">Tổng giá:&nbsp;<h2>VND<span id="sum" class="sum"></span></h2></h3>
				<br><br>
				<a onclick="goToNext()" class="btn btn-success btn-large">Mua ngay</a>
				<a onclick="goToNextCart()" class="btn btn-info btn-large"
				style="margin-left: 20px;">Thêm vào giỏ hàng</a>
				<input type="text" id="bookid" value="${book.bookid }" style="display:none;">
			</div>
		</div>
		
		<div class="bkinf-bottom">
			<ul class="nav nav-tabs">
			  <li  class="active">
			    <a href="#detail" data-toggle="tab">Thông tin chi tiết sản phẩm</a>
			  </li>
			  <li>
			  	<a href="#comment" data-toggle="tab">Tất cả các bình luận</a>
			  </li>
			  <li>
			  	<a href="#specification" data-toggle="tab">Thông số kỹ thuật</a>
			  </li>
			  <li>
			  	<a href="#question" data-toggle="tab">Vấn đề thường gặp</a>
			  </li>
			</ul>
			<div class="tab-content">
              <div class="tab-pane active" id="detail">
                <jsp:include page="bookinformation_a.jsp"/>
              </div>
              <div class="tab-pane" id="comment">
              	<c:import url="messagelist?bookid=${book.bookid}"/>
                <jsp:include page="bookinformation_c.jsp"/>
              </div>
              <div class="tab-pane" id="specification">
                <jsp:include page="bookinformation_b.jsp"/>
              </div>
              <div class="tab-pane" id="question">
                <jsp:include page="bookinformation_d.jsp"/>
              </div>
            </div>
		</div>
	</div>
	
<jsp:include page="res-jsp/footer.jsp"/>
<script type="text/javascript">
	$(function() {
	 	var name="${ismessage}";
		if(name=="message_no"){
		$(".message_tip").append("<span class='label label-important'><span class='icon-warning-sign'></span></span>  lặp lại bình luận!");
		}
		if(name=="message_ok"){
		$(".message_tip").append("<span class='label label-success'><span class='icon-ok'></span></span> Bình luận thành công!");
		}
		if(name=="no_buy"){
		$(".message_tip").append("<span class='label label-warning'><span class='icon-warning-sign'></span></span> Lỗi, bạn cần phải mua sản phẩm này để có thể bình luận~");
		} 
		
		$('.vm-minus').attr('disabled',true);
		$(".vm-plus").click(function() {
			var t = $(this).parent().find('input[class*=text_box]');
			t.val(parseInt(t.val()) + 1);
			if (parseInt(t.val())!=1){
	            $('.vm-minus').attr('disabled',false);
	        }
			setTotal();
		});
		$(".vm-minus").click(function() {
			var t = $(this).parent().find('input[class*=text_box]');
			t.val(parseInt(t.val()) - 1);
			if (parseInt(t.val())==1){
	            $('.vm-minus').attr('disabled',true);
	        }
			if (parseInt(t.val()) < 0) {
				t.val(0);
			}
			setTotal();
		});
		function setTotal() {
			var s = 0;
			$(".bkinf-top-right").each(
					function() {
						s += parseInt($(this).find('input[class*=text_box]').val())*parseFloat($(this).find('span[class*=price]').text());
					});
			$("#sum").html(s.toFixed(2));
		}
		setTotal();
		
	});
	
	function goToNext(){
	var nextPage="nowGoOrder?bookid="+document.getElementById("bookid").value +
							"&quantity="+document.getElementById("J_quantity").value;
	window.location=nextPage;}
	
	function goToNextCart(){
	var url="addshoppingcart?bookid="+document.getElementById("bookid").value +
							"&quantity="+document.getElementById("J_quantity").value;
	window.location.href=url;}
</script>
<script type="text/javascript">
	function zanfun(bookid,userid) {
		var strSession =document.getElementById("cuser").value;
		var xmlhttp;
		if (window.XMLHttpRequest) {
			
			xmlhttp = new XMLHttpRequest();
		} else {
			
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		if(strSession==""){
			window.location.href="login.jsp";
		}else{
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					if (xmlhttp.responseText == "ok") {
						var a = document.getElementById(userid).innerHTML;
						document.getElementById(userid).innerHTML = parseInt(a) + 1;
						$(".a").remove();
						$("."+userid).append("<span class='a'><span class='label label-success'><span class='icon-ok'></span></span>Đã thích!</span>");
					} 
					if (xmlhttp.responseText == "had") {
						$(".a").remove();
						$("."+userid).append("<span class='a'><span class='label label-important'><span class='icon-warning-sign'></span></span>Thích</span>");
					}
				}
			};
		}
		xmlhttp.open("POST", "thumb?bookid="+bookid+"&userid="+userid, true);
		xmlhttp.send();
		}
</script>
</body>
</html>
