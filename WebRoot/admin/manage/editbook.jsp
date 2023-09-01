<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="vn-VN">
<head>
<base href="<%=basePath%>">
<title>Sửa đổi thông tin cơ bản về sách - Quản lý sách</title>
<link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="res/mycss/bootstrap-datetimepicker.min.css" rel="stylesheet"
	media="screen">
<link href="res/mycss/addbookdetail.css" rel="stylesheet">
<jsp:include page="${basePath}/res-jsp/web_ico.jsp" />
</head>
<body>
	<jsp:include page="top.jsp" />
	<div class="row">
		<div class="myspan">
			<form action="updatebook" method="post" class="form-horizontal"
				id="mybookform">
				<div id="legend" class="">
					<legend>Sửa thông tin sách</legend>
				</div>
				<div class="control-group">
					<label class="control-label">Mã sách:</label>
					<div class="controls">
						<input type="text" name="bookid" value="${ book.bookid }" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Số lượng sách:</label>
					<div class="controls">
						<input type="text" required name="instore" value="${ book.instore }" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Tên sách:</label>
					<div class="controls">
						<input type="text" required name="bookname" value="${ book.bookname }" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Giá:</label>
					<div class="controls">
						<input type="text"  required name="unitprice" value="${ book.unitprice }"
							onkeyup="value=value.replace(/\.\d{2,}$/,value.substr(value.indexOf('.'),3))" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Tác giả:</label>
					<div class="controls">
						<input type="text" name="author" value="${ book.author }" required/>
					</div>
				</div>
								<div class="control-group">
					<label class="control-label">Bìa sách:</label>
					<div class="controls">
						<div class="box">
						    <input type="text" name="copyFile" value="${book.bookimage}"   class="textbox" />
						        <a href="javascript:void(0);"  class="btn">Duyệt</a>
						    <input type="file" class="uploadFile"  name="bookimage" onchange="getFile(this,'copyFile')" id="upload"
						    accept=".jpg,.png,.gif"/>
						</div>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Nhà xuất bản:</label>
					<div class="controls">
						<input type="text" name="publisher" value="${ book.publisher }" required/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Thể loại sách:</label>
					<div class="controls">
						<select name="classid" required>
							<option value="A"
								<c:if test="${ book.classid == 'A' }"> selected="selected"</c:if>>Ngoại
								ngữ</option>
							<option value="B"
								<c:if test="${ book.classid == 'B' }"> selected="selected"</c:if>>triết
								học, tôn giáo</option>
							<option value="C"
								<c:if test="${ book.classid == 'C' }"> selected="selected"</c:if>>Giới
								thiệu chung về Khoa học xã hội</option>
							<option value="D"
								<c:if test="${ book.classid == 'D' }"> selected="selected"</c:if>>chính
								trị, pháp luật</option>
							<option value="E"
								<c:if test="${ book.classid == 'E' }"> selected="selected"</c:if>>quân
								đội</option>
							<option value="F"
								<c:if test="${ book.classid == 'F' }"> selected="selected"</c:if>>kinh
								tế</option>
							<option value="G"
								<c:if test="${ book.classid == 'G' }"> selected="selected"</c:if>>văn
								hóa, khoa học, giáo dục, thể thao</option>
							<option value="H"
								<c:if test="${ book.classid == 'H' }"> selected="selected"</c:if>>ngôn
								ngữ</option>
							<option value="I"
								<c:if test="${ book.classid == 'I' }"> selected="selected"</c:if>>văn
								học</option>
							<option value="J"
								<c:if test="${ book.classid == 'J' }"> selected="selected"</c:if>>Nghệ
								thuật</option>
							<option value="K"
								<c:if test="${ book.classid == 'K' }"> selected="selected"</c:if>>lịch
								sử địa lý</option>
							<option value="N"
								<c:if test="${ book.classid == 'N' }"> selected="selected"</c:if>>Giới
								thiệu chung về Khoa học tự nhiên</option>
							<option value="O"
								<c:if test="${ book.classid == 'O' }"> selected="selected"</c:if>>Khoa
								học Toán học, Hóa học</option>
							<option value="P"
								<c:if test="${ book.classid == 'P' }"> selected="selected"</c:if>>thiên
								văn học, khoa học trái đất</option>
							<option value="Q"
								<c:if test="${ book.classid == 'Q' }"> selected="selected"</c:if>>Sinh
								vật học</option>
							<option value="R"
								<c:if test="${ book.classid == 'R' }"> selected="selected"</c:if>>Y
								học & Sức khỏe</option>
							<option value="S"
								<c:if test="${ book.classid == 'S' }"> selected="selected"</c:if>>Khoa
								học Nông nghiệp</option>
							<option value="T"
								<c:if test="${ book.classid == 'T' }"> selected="selected"</c:if>>Ngành
								công nghiệp điện tử</option>
							<option value="U"
								<c:if test="${ book.classid == 'U' }"> selected="selected"</c:if>>Vận
								tải</option>
							<option value="V"
								<c:if test="${ book.classid == 'V' }"> selected="selected"</c:if>>hàng
								không vũ trụ</option>
							<option value="X"
								<c:if test="${ book.classid == 'X' }"> selected="selected"</c:if>>Khoa
								học Môi trường, Khoa học An toàn</option>
							<option value="Z"
								<c:if test="${ book.classid == 'Z' }"> selected="selected"</c:if>>Khác</option>
						</select>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Phiên bản:</label>
					<div class="controls">
						<select name="edition">
							<option value="1"
								<c:if test="${ book.edition == '1' }"> selected="selected"</c:if>>1</option>
							<option value="2"
								<c:if test="${ book.edition == '2' }"> selected="selected"</c:if>>2</option>
							<option value="3"
								<c:if test="${ book.edition == '3' }"> selected="selected"</c:if>>3</option>
							<option value="4"
								<c:if test="${ book.edition == '4' }"> selected="selected"</c:if>>4</option>
							<option value="5"
								<c:if test="${ book.edition == '5' }"> selected="selected"</c:if>>5</option>
							<option value="6"
								<c:if test="${ book.edition == '6' }"> selected="selected"</c:if>>6</option>
							<option value="7"
								<c:if test="${ book.edition == '7' }"> selected="selected"</c:if>>7</option>
							<option value="8"
								<c:if test="${ book.edition == '8' }"> selected="selected"</c:if>>8</option>
							<option value="9"
								<c:if test="${ book.edition == '9' }"> selected="selected"</c:if>>9</option>
							<option value="10"
								<c:if test="${ book.edition == '10' }"> selected="selected"</c:if>>10</option>
						</select>
					</div>

				</div>
				<div class="control-group">
					<label class="control-label">Bìa:</label>
					<div class="controls">
						<label class="radio inline"> <input type="radio" required
							value="bìa mềm" name="packaging"
							<c:if test="${ book.packaging == 'bìa mềm' }"> checked="checked"</c:if>>Bìa
							mềm
						</label> <label class="radio inline"> <input type="radio"
							value="bìa cứng" name="packaging"
							<c:if test="${ book.packaging == 'bìa cứng' }"> checked="checked"</c:if>>Bìa
							cứng
						</label> <label class="radio inline"> <input type="radio"
							value="đóng hộp" name="packaging"
							<c:if test="${ book.packaging == 'đóng hộp' }"> checked="checked"</c:if>>Đóng
							hộp
						</label>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Định dạng:</label>
					<div class="controls">
						<label class="radio inline"> <input type="radio" required="required"
							value="16" name="format"
							<c:if test="${ book.format == '16' }"> checked="checked"</c:if>>16
						</label> <label class="radio inline"> <input type="radio"
							value="32" name="format"
							<c:if test="${ book.format == '32' }"> checked="checked"</c:if>>32
						</label>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Trang:</label>
					<div class="controls">
						<input type="text" name="numpages" value="${book.numpages }" required>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Ngày xuất bản:</label>
					<div class="controls">
						<input type="text" name="publdata" required readonly class="publdata"
							value="${book.publdata }">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Ngôn ngữ:</label>
					<div class="controls">
						<select name="language" required>
						<option value="Việt Nam" <c:if test="${ book.language == 'Việt Nam' }"> selected="selected"</c:if>>Việt Nam</option>
							<option value="Anh" <c:if test="${ book.language == 'Tiếng Anh' }"> selected="selected"</c:if>>Anh</option>
							<option value="Pháp" <c:if test="${ book.language == 'Pháp' }"> selected="selected"</c:if>>Pháp</option>
							<option value="Hàn Quốc" <c:if test="${ book.language == 'Hàn Quốc' }"> selected="selected"</c:if>>Hàn Quốc</option>
							<option value="Nhật Bản" <c:if test="${ book.language == 'Tiếng Nhật' }"> selected="selected"</c:if>>Nhật Bản</option>
						</select>
					</div>

				</div>
				<div class="control-group mydiv">
					<label class="control-label ">Giới thiệu về tác giả:</label>
					<div class="controls">
						<div class="textarea">
							<textarea class="" name="authorsIntroduce"
								style="margin: 0px; height: 80px; width: 800px;">${book.authorsIntroduce }</textarea>
						</div>
					</div>
				</div>

				<div class="control-group mydiv">
					<label class="control-label">Giới thiệu sách:</label>
					<div class="controls">
						<div class="textarea">
							<textarea class="" name="contentIntroduce"
								style="margin: 0px; height: 80px; width: 800px;">${book.contentIntroduce }</textarea>
						</div>
					</div>
				</div>
				<div class="control-group mydiv">
					<label class="control-label">Mục lục:</label>
					<div class="controls">
						<div class="textarea">
							<textarea class="" name="directory"
								style="margin: 0px; width: 800px; height: 80px;">${book.directory }</textarea>
						</div>
					</div>
				</div>
				<div class="control-group mydiv">
					<label class="control-label">Lời tựa:</label>
					<div class="controls">
						<div class="textarea">
							<textarea class="" name="preface"
								style="margin: 0px; width: 800px; height: 80px;">${book.preface }</textarea>
						</div>
					</div>
				</div>
				<div class="control-group mydiv">
					<label class="control-label">Tóm tắt:</label>
					<div class="controls">
						<textarea id="summary" name="summary"
							style="margin: 0px; width: 800px; height: 80px;">${book.summary }</textarea>
					</div>
				</div>
				<div class="control-group mydiv">
					<div class="controls  right_b">
						<input type="submit" value="Lưu" class="btn btn-success btn-large" />
					</div>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="${basePath}/res-jsp/footer01.jsp" />
	<script type="text/javascript" src="res/js/bootstrap-datetimepicker.js"
		charset="UTF-8"></script>
	<script type="text/javascript"
		src="res/js/bootstrap-datetimepicker.vn-VN.js" charset="UTF-8"></script>
	<script type="text/javascript"
		src="res/js/validation/jquery.validate.min.js"></script>
	<script type="text/javascript"
		src="res/js/validation/additional-methods.js"></script>
	<script type="text/javascript"
		src="res/js/validation/my-form-bookmanage-validation.js"></script>
	<script type="text/javascript">
		$(".publdata").datetimepicker({
			format : 'yyyy-mm-dd',
			autoclose : true,
			todayBtn : true,
			minView : 2,
			startDate : 1900 - 01 - 01,
			startView : 4,
			language : 'vn-VN'
		});
	</script>
</body>
<script type="text/javascript">
	function getFile(obj,inputName){
		var file_name = $(obj).val();  
		$("input[name='"+inputName+"']").val(file_name);
	}
</script>
</html>

