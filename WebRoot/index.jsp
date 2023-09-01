<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="vn-VN">
<head>
<base href="<%=basePath%>">
<title>NSO</title>
<link href="res/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="res/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<link href="res/mycss/home.css"  rel="stylesheet">
<jsp:include page="res-jsp/web_ico.jsp"/>
</head>
<body>
	<jsp:include page="res-jsp/navigation.jsp"/>
	<div id="myCarousel" class="carousel slide">
		<div class="carousel-inner">
			<div class="item active">
				<a href="bookinformation?bookid=9787550015432"><img src="res/images/home/slide-10.png" alt=""></a>
			</div>
			<div class="item">
				<a href="bookinformation?bookid=9787535483133"><img src="res/images/home/slide-07.png" alt=""></a>
			</div>
			<div class="item">
				<a href="bookinformation?bookid=9787543096158"><img src="res/images/home/slide-08.png" alt=""></a>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
	</div>
	<div class="container marketing">
		<div class="row">
			<div class="span4">
				<a href="bookinformation?bookid=16"> 
					<img class="img-circle" style="height: 200px; width: 200px" src="res/images/bookimage/muonkiepnhansinh1.jpg"
						data-src="holder.js" alt="Lược sử thời gian">
				</a>
				<h2>Muôn Kiếp Nhân Sinh</h2>
				<p class="p_text">Muôn kiếp nhân sinh cung cấp cho bạn đọc kiến thức mới mẻ, vô tận của nhân loại lần đầu được hé mở, cùng những phân tích uyên bác, tiên đoán bất ngờ về hiện tại và tương lai thế giới của những bậc hiền triết thông thái. Đời người tưởng chừng rất dài nhưng lại trôi qua rất nhanh, sinh vượng suy tử, mong manh như sóng nước.</p>
				<p class="p_text">Luật nhân quả cực kỳ chính xác, chi tiết, phức tạp được thu thập qua nhiều đời, nhiều kiếp, liên hệ tương hỗ đan xen chặt chữ lẫn nhau, không ai có thể tính được tích đức này có thể trừ được nghiệp kia không, không ai có thể biết được khi nào nhân sẽ trổ quả. Nhưng, một khi đã gây ra nhân thì chắc chắn sẽ gặt quả - luật Nhân quả của vũ trụ trước giờ không bao giờ sai.</p>
				<p>
					<a class="btn btn-success"
						href="bookinformation?bookid=16">
						<i class="icon-shopping-cart icon-white"></i>Thêm vào giỏ hàng &raquo; </a>
				</p>
			</div>
			<div class="span4">
				<a href="bookinformation?bookid=20"> 
					<img class="img-circle" style="height: 200px; width: 200px" src="res/images/bookimage/yeunhungdieukhonghoanhao.jpg" 
					data-src="holder.js" alt="Internet+">
				</a>
				<h2> Yêu Những Điều Không Hoàn Hảo </h2>
				<p class="p_text">Năm 2015, "Internet +" đã được đưa vào báo cáo công tác chính Ngẫm lại cuộc sống của chính mình, ta sẽ nhận thấy rất nhiều điều không hoàn hảo. Trước hết, chỉ nhìn vào bản thân mình thôi ta đã cảm nhận được nhiều thiếu sót rồi: lời nói và hành động mâu thuẫn với nhau, vụng về trong những mối quan hệ xã hội, chuyện học hành, công việc không suôn sẻ như ý muốn.</p>
				<p class="p_text">Chưa kể đôi khi ta còn khiến người khác tổn thương, thậm chí còn làm những việc khiến bản thân cảm thấy tội lỗi và hối hận. Và khi nhìn vào những người thân trong gia đình, bạn bè, đồng nghiệp, ta cũng nhận thấy những điều không-hoàn-hảo tương tự như vậy. 
					​</p>
				<p>
					<a class="btn btn-success"
						href="bookinformation?bookid=20">
						<i class="icon-shopping-cart icon-white"></i>Thêm vào giỏ hàng &raquo;</a>
				</p>
			</div>
			<div class="span4">
				<a href="bookinformation?bookid=9"> 
				<img class="img-circle" style="height: 200px; width: 200px" src="res/images/bookimage/bachdahanh.jpg "
					data-src="holder.js" alt="Tài liệu về Android"> </a>
				<h2>Bạch Dạ Hành</h2>
				<p class="p_text"> Osuke, chủ một tiệm cầm đồ bị sát hại tại một ngôi nhà chưa hoàn công, một triệu yên mang theo người cũng bị cướp mất.</p>
				<p class="p_text">Sau đó một tháng, nghi can Fumiyo được cho rằng có quan hệ tình ái với nạn nhân và đã sát hại ông để cướp một triệu yên, cũng chết tại nhà riêng vì ngộ độc khí ga.Vụ án mạng ông chủ tiệm cầm đồ rơi vào bế tắc và bị bỏ xó.</p>
				<p>
					<a class="btn btn-success"
						href="bookinformation?bookid=9">
						<i class="icon-shopping-cart icon-white"></i>Thêm vào giỏ hàng&raquo;</a>
				</p>
			</div>
		</div>
		
		<hr class="featurette-divider">
		<div class="featurette">
			<img class="featurette-image pull-right"
				src="res/images/bookimage/vuanmangonhakhachnuihakuba.jpg">
			<h2 class="featurette-heading">
				Vụ Án Mạng <span class="muted">Ở Nhà Khách Núi Hakuba </span>
			</h2>
			<p class="lead"> Naoko, cô em gái đang là sinh viên đại học, vẫn luôn ôm mối hoài nghi về cái chết của anh trai. Cô cùng người bạn thân Makoto của mình đến thăm nhà khách “Mẹ Ngỗng” ở núi Hakuba thuộc tỉnh Nagano, nơi anh mình đã qua đời. Lạ lùng thay, nhà khách lại đón tiếp những vị khách quen thuộc hệt như một năm trước đó. Bí mật nào đang ẩn nấp sau những bài đồng dao Mẹ Ngỗng trong mỗi căn phòng? Quá khứ nào đang được giấu kín trong nhà khách?</p>
			<a class="btn btn-large btn-success" href="bookinformation?bookid=10">Đặt ngay!</a>
		</div>
		<hr class="featurette-divider">
		<div class="featurette">
			<img class="featurette-image pull-left"
				src="res/images/bookimage/nhungcaichetbian.jpg">
			<h2 class="featurette-heading">
				 Ghi Chép Pháp Y<span class="muted">Những Cái Chết Bí Ẩn</span>
			</h2>
			<p class="lead"> Trải qua 15 câu chuyện kinh hoàng, cuốn sách sẽ đưa bạn bước vào hiện trường của những vụ án man rợ như: xác chết phi tang dưới cánh đồng ngô, thi thể thiếu nữ không lành lặn, xác chết nhầy nhụa đang bị giòi bọ đục khoét hay một thi thể co cứng trong màng bọc nilon…lần theo những dấu vết, ghép lại sự thật từ những mảnh vụn thi thể, nguyên nhân của cái chết sẽ dần được hé mở.</p>
			<a class="btn btn-large btn-success" href="bookinformation?bookid=9787535483133">Đặt ngay!!</a>
		</div>
		<hr class="featurette-divider">
		<div class="featurette">
			<img class="featurette-image pull-right"
				src="res/images/bookimage/phachoachandungkephamtoi.jpg">
			<h2 class="featurette-heading">
				Tâm Lý Học<span class="muted">Phác Họa Chân Dung Kẻ Phạm Tội</span>
			</h2>
			<p class="lead">Lấy 36 vụ án CÓ THẬT kinh điển nhất trong hồ sơ tội phạm của FBI, “Tâm lý học tội phạm - phác họa chân dung kẻ phạm tội” mang đến cái nhìn toàn cảnh của các chuyên gia về chân dung tâm lý tội phạm. Trả lời cho câu hỏi: Làm thế nào phân tích được tâm lý và hành vi tội phạm, từ đó khôi phục sự thật thông qua các manh mối, từ hiện trường vụ án, thời gian, dấu tích, để tìm ra kẻ sát nhân thực sự.</p>
			<a class="btn btn-large btn-success" href="bookinformation?bookid=8">Đặt luôn!!!</a>
		</div>
	</div>
<jsp:include page="res-jsp/footer.jsp"/>
<script type="text/javascript">
	!function($) {
		$(function() {
			$('#myCarousel').carousel();
		});
	}(window.jQuery);
</script>
</body>
</html>
