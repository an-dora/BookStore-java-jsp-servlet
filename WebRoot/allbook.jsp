<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="vn-VN">
<head>
<base href="<%=basePath%>">
<title>Tất cả sách</title>
<link href="res/bootstrap/css/bootstrap.css"  rel="stylesheet">
<link href="res/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<link href="res/mycss/home.css"  rel="stylesheet">
<link href="res/mycss/allbook.css" rel="stylesheet">
<jsp:include page="res-jsp/web_ico.jsp"/>
</head>
<body>
	<jsp:include page="res-jsp/navigation.jsp"/>
	<div class="row">
		<div class="myspan">
			<table class="table">
				<col width="120px">
				<thead>
					<tr>
						<th>Tìm sách</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Tên sách:</td>
						<td>
							<form class="form-search" action="bookname" method="post">
								<input type="text" class="input-medium search-query" name="bookname" id="bookname">
								<button type="submit" class="btn">Tìm kiếm</button>
							</form>
						</td>
						<td>Tác giả:</td>
						<td>
							<form class="form-search" action="author" method="post">
								<input type="text" class="input-medium search-query" name="author" id="author">
								<button type="submit" class="btn">Tìm kiếm </button>
							</form>
						</td>
						
					</tr>
					<tr>
						<td>Loại sách:</td>
						<td>
							<form class="form-search" action="bookclass" method="post">
									<select name="classid" class="class-select search-query" style="outline: medium none;">
										<option value="A"<c:if test="${ search_classid == 'A' }"> selected="selected"</c:if>>Ngoại ngữ</option>
										<option value="B"<c:if test="${ search_classid == 'B' }"> selected="selected"</c:if>>triết học, tôn giáo</option>
										<option value="C"<c:if test="${ search_classid == 'C' }"> selected="selected"</c:if>>Giới thiệu chung về Khoa học xã hội</option>
										<option value="D"<c:if test="${ search_classid == 'D' }"> selected="selected"</c:if>>chính trị, pháp luật</option>
										<option value="E"<c:if test="${ search_classid == 'E' }"> selected="selected"</c:if>>quân đội</option>
										<option value="F"<c:if test="${ search_classid == 'F' }"> selected="selected"</c:if>>kinh tế</option>
										<option value="G"<c:if test="${ search_classid == 'G' }"> selected="selected"</c:if>>văn hóa, khoa học, giáo dục, thể thao</option>
										<option value="H"<c:if test="${ search_classid == 'H' }"> selected="selected"</c:if>>ngôn ngữ</option>
										<option value="I"<c:if test="${ search_classid == 'I' }"> selected="selected"</c:if>>văn học</option>
										<option value="J"<c:if test="${ search_classid == 'J' }"> selected="selected"</c:if>>Nghệ thuật</option>
										<option value="K"<c:if test="${ search_classid == 'K' }"> selected="selected"</c:if>>lịch sử địa lý</option>
										<option value="N"<c:if test="${ search_classid == 'N' }"> selected="selected"</c:if>>Giới thiệu chung về Khoa học tự nhiên</option>
										<option value="O"<c:if test="${ search_classid == 'O' }"> selected="selected"</c:if>>Khoa học Toán học, Hóa học</option>
										<option value="P"<c:if test="${ search_classid == 'P' }"> selected="selected"</c:if>>thiên văn học, khoa học trái đất</option>
										<option value="Q"<c:if test="${ search_classid == 'Q' }"> selected="selected"</c:if>>Sinh vật học</option>
										<option value="R"<c:if test="${ search_classid == 'R' }"> selected="selected"</c:if>>Y học & Sức khỏe</option>
										<option value="S"<c:if test="${ search_classid == 'S' }"> selected="selected"</c:if>>Khoa học Nông nghiệp</option>
										<option value="T"<c:if test="${ search_classid == 'T' }"> selected="selected"</c:if>>Ngành công nghiệp điện tử</option>
										<option value="U"<c:if test="${ search_classid == 'U' }"> selected="selected"</c:if>>Vận tải</option>
										<option value="V"<c:if test="${ search_classid == 'V' }"> selected="selected"</c:if>>hàng không vũ trụ</option>
										<option value="X"<c:if test="${ search_classid == 'X' }"> selected="selected"</c:if>>Khoa học Môi trường, Khoa học An toàn</option>
										<option value="Z"<c:if test="${ search_classid == 'Z' }"> selected="selected"</c:if>>cuốn sách toàn diện</option>
									</select>
								<button type="submit" class="btn">Tìm kiếm</button>
							</form>
						</td>
						<td>Giá:</td>
						<td>
							<form class="form-search" action="unitprice" method="post">
								<input type="text" class="input-small search-query" name="unitprice1" id="unitprice1">~
								<input type="text" class="input-small search-query" name="unitprice2" id="unitprice2">
								<button type="submit" class="btn">Tìm kiếm</button>
							</form>
						</td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</tbody>
			</table>
			<hr class="featurette-divider divider">
			<div>
				<c:import url="/allbook_table"/>
			</div>
		</div>
	</div>
	
<jsp:include page="res-jsp/footer.jsp"/>
<script type="text/javascript" src="res/js/validation/jquery.validate.min.js"></script>
<script language="JavaScript" type="text/javascript"> 
function GetUrlParms()    
{
    var args=new Object();   
    var query=location.search.substring(1);
    var pairs=query.split("?");  
    for(var   i=0;i<pairs.length;i++)   
    {
        var pos=pairs[i].indexOf('=');
        if(pos==-1)   continue; 
        var argname=pairs[i].substring(0,pos); 
        var value=pairs[i].substring(pos+1); 
        args[argname]=unescape(value); 
    }
    return args;
}
var args = new Object();
args = GetUrlParms();
if(args["return"]!=undefined)
{
	var value1 = args["return"] ;
	if(value1==00){
		alert("Sách đã được thêm vào mục yêu thích!");
	}
}

/* $(function(){
	$(".favorites").click(function(){
		$.post("addfavoriteAjax", {bookid: $(this).find('input[class*=bookid]').val()});
	});
}); */
</script>
<script type="text/javascript">
$(document).ready(function(){
	$(".thumbs").hover(function(){
		$(this).animate({ height:'220px', width:'220px'}, "fast");
		},function(){
		$(this).animate({ height:'200px', width:'200px'}, "fast");
		$(this).finish();
	});
});

$(function(){
	$("#bookname").blur(function(){
		$(this).val($("#bookname").val().replace(/(^\s+)|(\s+$)/g, ""));
	});
});
$(function(){
	$("#author").blur(function(){
		$(this).val($("#author").val().replace(/(^\s+)|(\s+$)/g, ""));
	});
});
$(function(){ 
	$("#unitprice1").blur(function(){
		$(this).val($("#unitprice1").val().replace(/(^\s+)|(\s+$)/g, ""));
	});
});
$(function(){
	$("#unitprice2").blur(function(){
		$(this).val($("#unitprice2").val().replace(/(^\s+)|(\s+$)/g, ""));
	});
}); 
</script>
</body>
</html>