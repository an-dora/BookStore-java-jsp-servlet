<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>Thêm e-book - sách lên kệ</title>
<link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="res/mycss/top.css" rel="stylesheet">
<jsp:include page="${basePath}/res-jsp/web_ico.jsp" />
</head>
<body>
<jsp:include page="top.jsp"/>
	<div class="row">
		 <div class="myspan">
			<form class="form-horizontal" action="addebook" method="post" enctype="multipart/form-data" id="mybookform">
				<fieldset>
					<div id="legend" class="">
						<legend class="">Thêm sách điện tử</legend>
					</div>
					<div class="control-group">
						<label class="control-label">Tiêu đề sách điện tử:</label>
						<div class="controls">
							<input type="text" name="bookname"/>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Tác giả:</label>
						<div class="controls">
							<input type="text" name="author"/>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Đơn giá:</label>
						<div class="controls">
							<input type="text" name="unitprice"
							onkeyup="value=value.replace(/\.\d{2,}$/,value.substr(value.indexOf('.'),3))"/>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Thể loại sách điện tử:</label>
						<div class="controls">
							<select name="classid"> 
								<option value="1"></option>
								<option value="A">Ngoại ngữ</option>
								<option value="B">Triết học, tôn giáo</option>
								<option value="C">Giới thiệu chung về Khoa học xã hội</option>
								<option value="D">Chính trị, pháp luật</option>
								<option value="E">Quân đội</option>
								<option value="F">Kinh tế</option>
								<option value="G">Văn hóa, khoa học, giáo dục, thể thao</option>
								<option value="H">Ngôn ngữ</option>
								<option value="I">Văn học</option>
								<option value="J">Nghệ thuật</option>
								<option value="K">Lịch sử địa lý</option>
								<option value="N">Giới thiệu chung về Khoa học tự nhiên</option>
								<option value="O">Khoa học Toán học, Hóa học</option>
								<option value="P">Thiên văn học, khoa học trái đất</option>
								<option value="Q">Sinh vật học</option>
								<option value="R">Y học & Sức khỏe</option>
								<option value="S">Khoa học Nông nghiệp</option>
								<option value="T">Ngành công nghiệp điện tử</option>
								<option value="U">Vận tải</option>
								<option value="V">Hàng không vũ trụ</option>
								<option value="X">Khoa học Môi trường, Khoa học An toàn</option>
								<option value="Z">Khác</option>
							</select>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Giới thiệu:</label>
						<div class="controls">
							<div class="textarea">
								<textarea name="summary" class="clear-blank"
									style="margin: 0px; height: 80px; width: 210px;"></textarea>
							</div>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label">Tải lên sách điện tử:</label>
						<div class="controls">
							<input class="input-file" type="file" name="ebooktxt"
							accept=".zip,.rar"/>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label">Tải lên hình ảnh:</label>
						<div class="controls">
							<input class="input-file" type="file" name="ebookimage" id="ebookimage"
							accept=".jpg,.png,.gif"/>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label">Thêm liên kết ngoài:</label>
						<div class="controls">
							<input type="text" name="link" id="link"/>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label"></label>
						<div class="controls right_b">
							<button class="btn btn-success btn-large">Nộp</button>
						</div>
					</div>

				</fieldset>
			</form>
		</div>
	</div>
<jsp:include page="${basePath}/res-jsp/footer01.jsp"/>
<script type="text/javascript" src="res/js/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="res/js/validation/additional-methods.js"></script>
<script type="text/javascript" src="res/js/validation/my-form-bookmanage-validation.js"></script>
<jsp:include page="${basePath}/res-jsp/messagebox.jsp"/>
</body>
</html>
