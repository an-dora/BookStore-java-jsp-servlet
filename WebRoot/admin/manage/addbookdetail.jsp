<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>Thêm chi tiết sách - Sách có sẵn</title>
<link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet"  media="screen">
<link href="res/mycss/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
<link href="res/mycss/addbookdetail.css" rel="stylesheet">
<jsp:include page="${basePath}/res-jsp/web_ico.jsp" />
</head>
<body>
	<jsp:include page="top.jsp"/>
	<div class="row">
		 <div class="myspan">
			<form class="form-horizontal" action="addbookdetail" method="post" enctype="multipart/form-data" id="mybookform">
				<fieldset>
					<div id="legend" class="">
						<legend>Thêm chi tiết sách</legend>
					</div>

					<div class="control-group">
						<label class="control-label">Mã sách:</label>
						<div class="controls">
							<input type="text" name="bookidA" id="bookidA">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label">Phiên bản:</label>
						<div class="controls">
							<select name="edition">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>
							</select>
						</div>

					</div>
					<div class="control-group">
						<label class="control-label">Bìa:</label>
						<div class="controls">
							<label class="radio inline">
								<input type="radio" value="bìa mềm" name="packaging" checked="checked">Bìa mềm
							</label>
							<label class="radio inline">
								<input type="radio" value="bìa cứng name="packaging">Đìa cứng
							</label>
							<label class="radio inline">
								<input type="radio" value="đóng hộp" name="packaging">Đóng hộp
							</label>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Định dạng:</label>
						<div class="controls">
							<label class="radio inline">
								<input type="radio" value="16" name="format" checked="checked">16
							</label>
							<label class="radio inline">
								<input type="radio" value="32" name="format">32
							</label>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Trang:</label>
						<div class="controls">
							<input type="text" name="numpages">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Ngày xuất bản:</label>
						<div class="controls">
							<input type="text" name="publdata" readonly class="publdata">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Ngôn ngữ:</label>
						<div class="controls">
							<select name="language">
								<option>Tiếng Anh</option>
								<option>Pháp</option>
								<option>Hàn Quốc</option>
								<option>Tiếng Nhật</option>
								<option>Việt Nam</option>
							</select>
						</div>

					</div>
					<div class="control-group mydiv">
						<label class="control-label ">Giới thiệu về tác giả：</label>
						<div class="controls">
							<div class="textarea">
								<textarea class="" name="authorsIntroduce"
									style="margin: 0px; height: 80px; width: 800px;"> </textarea>
							</div>
						</div>
					</div>

					<div class="control-group mydiv">
						<label class="control-label">Giới thiệu sách:</label>
						<div class="controls">
							<div class="textarea">
								<textarea class="" name="contentIntroduce"
									style="margin: 0px; height: 80px; width: 800px;"> </textarea>
							</div>
						</div>
					</div>
					<div class="control-group mydiv">
						<label class="control-label">Mục lục:</label>
						<div class="controls">
							<div class="textarea">
								<textarea class="" name="directory"
									style="margin: 0px; width: 800px; height: 80px;"> </textarea>
							</div>
						</div>
					</div>
					<div class="control-group mydiv" >
						<label class="control-label">Lời tựa:</label>
						<div class="controls">
							<div class="textarea">
								<textarea class="" name="preface"
									style="margin: 0px; width: 800px; height: 80px;"> </textarea>
							</div>
						</div>
					</div>
					<div class="control-group mydiv">
						<label class="control-label ">tải lên hình ảnh:</label>
						<div class="controls">
							<input class="input-file" type="file" name="bigImage" id="bigImage"
							accept=".jpg,.png,.gif"/>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label"></label>
						<div class="controls right_b">
							<button class="btn btn-success btn-large">nộp</button>
						</div>
					</div>

				</fieldset>
			</form>

		</div>
	</div>
<jsp:include page="${basePath}/res-jsp/footer01.jsp"/>
<script type="text/javascript" src="res/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="res/js/bootstrap-datetimepicker.vn-VN.js" charset="UTF-8"></script>
<script type="text/javascript" src="res/js/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="res/js/validation/additional-methods.js"></script>
<script type="text/javascript" src="res/js/validation/my-form-bookmanage-validation.js"></script>
<jsp:include page="${basePath}/res-jsp/messagebox.jsp"/>
<script type="text/javascript">
    $(".publdata").datetimepicker({format: 'yyyy-mm-dd',
    	autoclose: true, todayBtn: true, minView:2, startDate:1900-01-01,
    	startView:4,language:'vn-VN'});
</script>
</body>
</html>
