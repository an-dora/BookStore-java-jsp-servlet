<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="navbar-wrapper">
	<div class="container">
		<div class="navbar navbar-default">
			<div class="navbar-inner">
				<a class="brand" href="index.jsp">
				 	<h4>NSO</h4>
				</a>
				<div class="nav-collapse collapse">
					<ul class="nav pull-right">
   						<c:if test="${sessionScope['_user'] == null}">
    						<li><a href="login.jsp">Đăng nhập</a></li>
    						<li><a href="register.jsp">Đăng ký</a></li>
	    				</c:if>
		    			<c:if test="${sessionScope['_user'] != null}">
			  				<li class="dropdown">
				    			<button class="dropbtn">${sessionScope['_user'].name}<b class="caret"></b></button>
   								<ul class="dropdown-menu">
    								<li><a href="userinformation?temp=1">Thông tin cá nhân</a></li>
    								<c:if test="${sessionScope['_user'].permission == 1 }">
		    							<li class="divider"></li>
		    							<li><a href="admin/manage/managebook.jsp">Quản lý</a></li>
		    						</c:if>
	    							<li class="divider"></li>
		    						<li><a href="exitlogin?return=0" class="exit1">Đăng xuất</a></li>
		    						
			    				</ul>
							</li>
						</c:if>    
					</ul>    
				    <ul class="nav h_n">
					  	<li class=""><a href="index.jsp">Trang chủ</a></li>
						<li class=""><a href="allbook.jsp">Tất cả sách</a></li>
						<li class=""><a href="specialbook.jsp">Sách nổi bật</a></li>
						<li class=""><a href="ebook.jsp">Sách điện tử</a></li>
						<li class=""><a href="feedback.jsp">Nhận xét</a></li>
						<li><a href="contact.jsp">Thông tin liên hệ</a></li>
						<li><a href="question.jsp">Trợ giúp</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>