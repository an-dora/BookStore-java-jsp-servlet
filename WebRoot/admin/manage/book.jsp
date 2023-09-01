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
<title>Thêm Sách - Sách Lên Kệ</title>
<link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="res/mycss/top.css" rel="stylesheet">
<jsp:include page="${basePath}/res-jsp/web_ico.jsp" />
</head>
<body>
 	<jsp:include page="top.jsp"/>
 	<div class="row">
		 <div class="myspan">
		    <form action="uploadbookimage" method="post" enctype="multipart/form-data" class="form-horizontal" id="mybookform">
				<div id="legend" class="">
					<legend>Thêm thông tin sách cơ bản</legend>
				</div>
				<div class="control-group">
					<label class="control-label">Số lượng sách:</label>
					<div class="controls">
						<input type="number" name="instore" id="instore"/>
				</div>
				<div class="control-group">
					<label class="control-label">Tên sách:</label>
					<div class="controls">
						<input type="text" name="bookname"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Giá:</label>
					<div class="controls">
						<input type="text" name="unitprice"
						onkeyup="value=value.replace(/\.\d{2,}$/,value.substr(value.indexOf('.'),3))"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">tác giả:</label>
					<div class="controls">
						<input type="text" name="author"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Nhà xuất bản:</label>
					<div class="controls">
						<input type="text" name="publisher" data-provide="typeahead" data-items="5" autocomplete="off" id="publisher"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Thể loại sách:</label>
					<div class="controls">
						<select name="classid">
							<option value="0">Xin vui lòng chọn</option>
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
					<label class="control-label">Giới thiệu</label>
					<div class="controls">
						<div class="textarea">
							<textarea name="summary" class="clear-blank"
								style="margin: 0px; height: 80px; width: 208px;"> </textarea>
						</div>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Tải lên bìa sách:</label>
					<div class="controls">
						<div class="box">
						    <input type="text" name="copyFile"  class="textbox" />
						        <a href="javascript:void(0);"  class="btn">Duyệt</a>
						    <input type="file" class="uploadFile" name="upload" onchange="getFile(this,'copyFile')" id="upload"
						    accept=".jpg,.png,.gif"/>
						</div>
					</div>
				</div>
				<div>
					<div class="controls  right_b">
						<input type="submit" value="Tra cứu" class="btn btn-success btn-large"/>
					</div>
				</div>
			</form>
		 </div>
    </div>
<jsp:include page="${basePath}/res-jsp/footer01.jsp"/>
<script type="text/javascript" src="res/js/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="res/js/validation/additional-methods.js"></script>
<script type="text/javascript" src="res/js/validation/my-form-bookmanage-validation.js"></script>
<jsp:include page="${basePath}/res-jsp/messagebox.jsp"/>
<script type="text/javascript">
/* Tải tệp lên */
	function getFile(obj,inputName){
		var file_name = $(obj).val();  
		$("input[name='"+inputName+"']").val(file_name);
	}

	/* Dấu nhắc nhập của nhà xuất bản */
var subjects = ['Nhà xuất bản Giáo dục Nhân dân', 'Nhà xuất bản Văn học Nhân dân', 'Nhà xuất bản Nghi Lâm', 'Hiệu sách Trung Hoa', 'Nhà xuất bản Liên kết Đời sống·Đọc sách·Kiến thức Mới',
	'Nhà xuất bản Khoa học', 'Nhà xuất bản Đại học Thanh Hoa', 'Nhà xuất bản Công nghiệp Điện tử', 'Nhà xuất bản Công nghiệp Cơ khí', 'Nhà xuất bản Công nghiệp Hóa chất', 'Nhà xuất bản Công nghiệp Xây dựng', 'Báo chí Bưu chính Viễn thông Nhân dân',
	'Nhà báo Điện lực Trung Quốc', 'Nhà báo Khoa học và Công nghệ Bắc Kinh', 'Nhà báo Tài chính Trung Quốc', 'Nhà báo Kinh tế và Tài chính Trung Quốc', 'Nhà báo CITIC', 'Nhà báo Luật pháp', 'Nhà báo Pháp lý Trung Quốc',
	'Nhà xuất bản Tòa án Nhân dân', 'Nhà xuất bản Giáo dục Đại học', 'Nhà xuất bản Thanh niên Trung Quốc', 'Nhà xuất bản Đại học Vũ Hán', 'Nhà xuất bản Phương Đông', 'Nhà xuất bản Ngôi sao mới', 'Nhà xuất bản Đại học Phúc Đán',
	'Nhà xuất bản Công nghiệp Quốc phòng', 'Nhà xuất bản Nghiên cứu và Giảng dạy Ngoại ngữ', 'Nhà xuất bản Đại học Tài chính và Kinh tế Thượng Hải', 'Nhà xuất bản Văn học Nghệ thuật Trường Giang', 'Nhà xuất bản Động đất']; 
$('#publisher').typeahead({source: subjects});
</script>
</body>
</html>
