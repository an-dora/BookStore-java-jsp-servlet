
$().ready(function() {
  $("#mybookform").validate({
    rules : {
		instore : {
			required : true,
			instore : true,
			remote: {
                url: "ajaxbook",
                type: "post",
                dataType: "json",
                data: {
                	bookid: function () {
                        return $("#instore").val();
                    }
                },
                dataFilter: function (data) { 
                    if (data == "true") {
                        return false;
                    }
                    else {
                        return true;
                    }
                }
            }
		},
		bookidA : {
			required : true,
			bookid : true,
			remote: {
                url: "ajaxbook",
                type: "post",
                dataType: "json",
                data: {
                	bookid: function () {
                        return $("#bookidA").val();
                    }
                },
                dataFilter: function (data) {
                    if (data == "true") {
                        return false;
                    }
                    if (data == "false"){
                        return true;
                    }
                }
            }
		},
		ebookid : {
			required : true,
			bookid : true,
			remote: {
                url: "ajaxbook",
                type: "post",
                dataType: "json",
                data: {
                	bookid: function () {
                        return $("#ebookid").val();
                    }
                },
                dataFilter: function (data) { 
                    if (data == "true") {
                        return false;
                    }
                    else {
                        return true;
                    }
                }
            }
		},
		bookname : {
			required : true,
			myblank : true,
			maxlength : 30,
		},
		unitprice : {
			required : true,
			number:true,
			min : 0,
		},
		author : {
			required : true,
			myblank : true,
			maxlength : 25,
		},
		publisher : {
			myblank : true,
			required : true,
			maxlength : 20,
		},
		classid : {
			bookclass : true,
		},
		upload : {
			required : true,
			accept: "gif|png|jpeg",
			maxlength :100,
		},
		numpages : {
			required : true,
			max : 999999999,
			min : 1,
			digits:true
		},
		publdata : {
			required : true,
		},
		bigImage : {
			required : true,
			accept: "gif|png|jpeg|bmp",
			maxlength :100,
		},
		ebooktxt : {
			accept:"zip|",
			maxlength : 100,
		},
		ebookimage : {
			required : true,
			accept: "gif|png|jpeg",
			maxlength :100,
		},
		link : {
			maxlength :100,
		},
		stockid : {
			required : true,
			digits:true,
			min:0,
			rangelength:[5,20]
		},
		stockdate :{
			required : true,
		},
		stockquantity :{
			required : true,
			digits:true,
			min:0,
			max:99999999,
		},
		stockprice :{
			required : true,
			number:true,
			min:0,
			max:999999999,
		}
    },
	messages : {
		instore : {
			required : "Vui lòng nhập số lượng sách",
			remote: "Cuốn sách này đã được thêm vào và có thể được chỉnh sửa"
		},
/*		bookidA : {
			required : "Vui lòng nhập số sách",
			remote: "Thông tin cơ bản của cuốn sách này chưa được thêm vào và độ tin cậy chi tiết của cuốn sách này đã được thêm vào"
		},*/
		ebookid : {
			required : "Vui lòng nhập số sách",
			remote: "Đã được thêm vào và có thể được sửa đổi"
		},
		bookname : {
			required : "Vui lòng nhập tên sách",
			maxlength : "Tiêu đề sách quá dài"
		},
		unitprice : {
			required : "Vui lòng nhập giá sản phẩm",
			number : "Vui lòng nhập số",
			min : "Giá sách không thể nhỏ hơn 0",
		},
		author : {
			required : "Vui lòng nhập tên tác giả",
			maxlength : "Tên tác giả quá dài"
		},
		publisher : {
			required : "Vui lòng nhập tên nhà xuất bản",
			maxlength : "Tên nhà xuất bản quá dài",
		},
		upload : {
			required : "Vui lòng chọn một hình ảnh để tải lên",
			accept : "Định dạng hình ảnh chỉ có thể là .gif/.png/.jpg",
			maxlength : "Tên hình ảnh quá dài",
		},
		numpages : {
			required : "Vui lòng nhập số trang trong sách",
			max : "Vui lòng nhập số trang thực tế của sách",
			min : "Sách có mỗi cái bìa à",
			digits : "Phải là số nguyên (int)",
		},
		bigImage : {
			required : "Vui lòng chọn một hình ảnh để tải lên",
			accept : "Định dạng hình ảnh chỉ có thể là .gif/.png/.jpg",
			maxlength : "Tên hình ảnh quá dài",
		},
		ebookimage : {
			required : "Vui lòng chọn một hình ảnh để tải lên",
			accept : "Định dạng hình ảnh chỉ có thể là .gif/.png/.jpg",
			maxlength : "Tên hình ảnh quá dài",
		},
		ebooktxt : {
			maxlength : "Tiêu đề sách điện tử quá dài",
		},
		publdata : {
			required : "Vui lòng chọn thời gian đăng",
		},
		stockid : {
			required : "Vui lòng điền mã đơn hàng",
			digits: "phải là một số",
			min:"Lớn hơn 0",
			rangelength:"Độ dài trong khoảng 5-20",
		},
		stockdate :{
			required : "Vui lòng chọn ngày đến",
		},
		stockquantity :{
			required : "Vui lòng điền số lượng mua hàng",
			digits:"Phải là số",
			min:"Lớn hơn 0",
			max:"Vui lòng điền số lượng thực tế",
		},
		stockprice :{
			required : "Vui lòng nhập giá mua",
			number:"hải là số",
			min:"Lớn hơn 0",
			max:"Vui lòng điền giá mua thực tế",
		}
	},
  });
});
$(function(){
	$(".clear-blank").blur(function(){
		$(this).val($(".clear-blank").val().replace(/(^\s+)|(\s+$)/g, ""));
	});
});