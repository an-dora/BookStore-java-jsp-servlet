$().ready(function() {
  $("#myform").validate({
    rules : {
		username : {
			required : true,
			username : true,
			remote: {
                url: "ajaxbook",
                type: "post",
                dataType: "json",
                data: {
                	bookid: function () {
                        return $("#username").val();
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
		password : {
			required : true,
			minlength : 6,
			maxlength : 16,
			password : true
		},
		re_password : {
			required : true,
			equalTo : "#password",
		},
		oldpassword : {
			required : true,
			minlength : 6,
			maxlength : 16,
			password : true
		},
		tel : {
			required :true,
			tel : true,
		},
		email : {
			email:true,
			maxlength :45,
		},
		addr : {
			maxlength : 95,
		},
		receiver:{
			required :true,
			maxlength :20
		},
		contact:{
			required :true,
			tel : true,
		},
		address : {
			required :true,
			maxlength : 95,
		},
		orderremark : {
			maxlength : 200,
		}
    },
	messages : {
		username : {
			required : "Vui lòng nhập tên người dùng",
			remote : "Tên người dùng đã được đăng ký",
		},
		password : {
			required : "Xin vui lòng nhập mật khẩu",
			minlength : "Độ dài mật khẩu không thể nhỏ hơn 6 kí tự",
			maxlength : "Có chắc nhớ được cái mật khảu này không :)?",
		},
		re_password : {
			required : "Vui lòng nhập lại mật khẩu",
			equalTo : "Không khớp bạn eyy"
		},
		oldpassword :{
			required : "Xin vui lòng nhập mật khẩu",
			minlength : "Độ dài mật khẩu không thể nhỏ hơn 6 kí tự",
			maxlength : "Có chắc nhớ được cái mật khảu này không :)?",
		},
		tel : {
			required :"Vui lòng nhập số điện thoại",
		},
		email : {
			email : "Có chắc nó là cái mail không vậy?",
			maxlength : "Địa chỉ email dài quáaaaaaaaaaaaa"
		},
		addr : {
			maxlength : "Địa chỉ bạn nhập quá dàiiiiii",
		},
		receiver:{
			required :"Vui lòng nhập tên của bạn",
			maxlength :"Tên của bạn quá dàiiiiii",
		},
		contact:{
			required :"Vui lòng nhập số điện thoại",
			tel : "Xin vui lòng nhập một số điện thoại hợp lệ",
		},
		address : {
			required :"Vui lòng nhập địa chỉ giao hàng",
			maxlength : "Địa chỉ bạn đã nhập quá dài",
		},
		orderremark : {
			maxlength : "Bạn đã nhập quá nhiều",
		}
	},
  });
});