<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="vn-VN">
<head>
<base href="<%=basePath%>">
<title>Liên Hệ</title>
<link href="res/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="res/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<link href="res/mycss/home.css"  rel="stylesheet">
<link href="res/mycss/question.css"  rel="stylesheet">
<jsp:include page="res-jsp/web_ico.jsp"/>
</head>
<body>
	<jsp:include page="res-jsp/navigation.jsp"/>

	<div class="row-fluid">
		<div class="span8 offset2" style="margin-top:140px;">
			<div class="content">
					<div class="question" id="question">
						<div class="question-list">
							<h3>câu trả lời phổ biến</h3>
							<dl class="mod-item">
								<dt class="vm-question">Tôi có thể xuất hóa đơn khi mua sách không?</dt>
								<dd class="vm-answer">Tất nhiên, miễn là những cuốn sách được mua trong Nhà sách có thể được xuất hóa đơn.</dd>
							</dl>
							<dl class="mod-item">
								<dt class="vm-question">Sách này có phải là sách chính hãng không?</dt>
								<dd class="vm-answer">phải là hàng chính hãng Nhà sách mua hàng qua Website chính thức bạn nhé.</dd>
							</dl>
							<dl class="mod-item">
								<dt class="vm-question">Miễn phí vận chuyển?</dt>
								<dd class="vm-answer">nếu bạn mua trên 2 cuốn sách tại Nhà sách, bạn sẽ được miễn phí vận chuyển.</dd>
							</dl>
							<dl class="mod-item">
								<dt class="vm-question">có thể thanh toán sau khi nhận hàng không?</dt>
								<dd class="vm-answer">tất nhiên bạn có thể thanh toán tiền sau khi đã nhận được hàng của mình</dd>
							</dl>
							<dl class="mod-item">
								<dt class="vm-question">sau khi giao dịch thành công có cần feedback hay không?</dt>
								<dd class="vm-answer">
									sau khi bạn nhận được hàng và thanh toán hãy cho chúng tôi một vài feedback về  sản phẩm, chúng tôi rất hân hạnh phục vụ bạn.
								</dd>
							</dl>
						</div>
					</div>
			</div>
		</div>
	</div>
<jsp:include page="res-jsp/footer.jsp"/>
</body>
</html>
