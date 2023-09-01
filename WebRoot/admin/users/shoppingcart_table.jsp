<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.zh.bean.CartBean"%>
<%@ page import="java.util.List"%>
<table class="table table-striped table-hover">
	<col width="80px">
	<col width="160px">
	<col width="130px">
	<col width="100px">
	<col width="130px">
	<col width="110px">
	<col>
	<thead>
		<tr>
			<th>Tùy chọn</th>
			<th>Trưng bày sách</th>
			<th>Tên sách</th>
			<th>Đơn giá</th>
			<th>Số lượng</th>
			<th>Số tiền</th>
			<th>Vận hành</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${requestScope.carts}" var="j">
			<tr>
				<td class="mycheck">
  					<input type="checkbox" class="mycheckbox${ j.count}">
  				</td>
				<td><a href="bookinformation?bookid=${ j.bookid }">
					<img src="res/images/bookimage/${ j.bookimage} " width="100" height="100"></a>
				</td>
				<td id="namebook">${ j.bookname }<input id="bookid${ j.count}" value="${j.bookid }" style="display:none;"/></td>
				<td class="price${ j.count}">${ j.unitprice}</td>
				<td>
				<span class="property-quantity">
     	        	<span class="property-quantity-control">
                		<button class="btn vm-minus lower${ j.count}" style="outline:none;">-</button>
                        <input id="count" class="text_box${ j.count}" type="text" value="${ j.quantity }" disabled>
                        <button class="btn  vm-plus add${ j.count}" style="outline:none;">+</button>
                	</span>
                </span>
                </td>
				<td><h5><span class="sum${ j.count}" style="color:red;"></span></h5></td>
				<td>
					<a href="addfavorite?bookid=${ j.bookid }">
						<span class="icon-heart"></span>Thêm vào mục yêu thích
					</a><br><br>
					<a href="deleteshoppingcart?bookid=${ j.bookid }&del=0" class="del">
						<span class="icon-trash"></span>Xóa bỏ
					</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<span style="display: none" id="stockQuantity">100</span>
<c:if test="${requestScope.carts == '[]'}">
<a href="index.jsp">
<img src="res/images/webico/kongcart.png" height="220px" width="900px"></a>
</c:if>
<div class="myheji"> 
	<hr class="my-hr">
	<input id="checkAll" type="checkbox"/><span class="checkAll">Chọn tất cả</span> 
	<a href="deleteshoppingcart?del=1" class="mydel del" style="cursor:pointer;">Xóa hết</a> 
	<strong class="jine">Một lần<span class="msum"></span>VND</strong>		
	<span class="jiesuan">
		<a href="admin/users/addorderform.jsp" 
			class="mybtn" id="mybtn" >Thanh toán</a>
	</span>
</div>
<script>
document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("mybtn").addEventListener("click", function(event) {
        const quantityInput = parseInt(document.getElementById("count").value);
        const name = document.getElementById("namebook").textContent;
        

        console.log(quantityInput + "=====" + name);
        if (quantityInput > 2 && name === "Bạch Dạ Hành (Tái Bản)") {
            alert("Số lượng tồn kho không đủ.");
            event.preventDefault();
        }
    });
});

</script>