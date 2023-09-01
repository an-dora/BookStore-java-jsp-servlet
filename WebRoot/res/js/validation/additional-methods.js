/*!
 * jQuery Validation Plugin v1.14.0
 *
 * http://jqueryvalidation.org/
 *
 * Copyright (c) 2015 Jörn Zaefferer
 * Released under the MIT license
 */
(function( factory ) {
	if ( typeof define === "function" && define.amd ) {
		define( ["jquery", "./jquery.validate"], factory );
	} else {
		factory( jQuery );
	}
}(function( $ ) {

(function() {

	function stripHtml(value) {
		// remove html tags and space chars
		return value.replace(/<.[^<>]*?>/g, " ").replace(/&nbsp;|&#160;/gi, " ")
		// remove punctuation
		.replace(/[.(),;:!?%#$'\"_+=\/\-“”’]*/g, "");
	}

	$.validator.addMethod("maxWords", function(value, element, params) {
		return this.optional(element) || stripHtml(value).match(/\b\w+\b/g).length <= params;
	}, $.validator.format("Please enter {0} words or less."));

	$.validator.addMethod("minWords", function(value, element, params) {
		return this.optional(element) || stripHtml(value).match(/\b\w+\b/g).length >= params;
	}, $.validator.format("Please enter at least {0} words."));

	$.validator.addMethod("rangeWords", function(value, element, params) {
		var valueStripped = stripHtml(value),
			regex = /\b\w+\b/g;
		return this.optional(element) || valueStripped.match(regex).length >= params[0] && valueStripped.match(regex).length <= params[1];
	}, $.validator.format("Please enter between {0} and {1} words."));

}());

// Accept a value from a file input based on a required mimetype
$.validator.addMethod("accept", function(value, element, param) {
	// Split mime on commas in case we have multiple types we can accept
	var typeParam = typeof param === "string" ? param.replace(/\s/g, "").replace(/,/g, "|") : "image/*",
	optionalValue = this.optional(element),
	i, file;

	// Element is optional
	if (optionalValue) {
		return optionalValue;
	}

	if ($(element).attr("type") === "file") {
		// If we are using a wildcard, make it regex friendly
		typeParam = typeParam.replace(/\*/g, ".*");

		// Check if the element has a FileList before checking each file
		if (element.files && element.files.length) {
			for (i = 0; i < element.files.length; i++) {
				file = element.files[i];

				// Grab the mimetype from the loaded file, verify it matches
				if (!file.type.match(new RegExp( "\\.?(" + typeParam + ")$", "i"))) {
					return false;
				}
			}
		}
	}

	// Either return true because we've validated each file, or because the
	// browser does not support element.files and the FileList feature
	return true;
}, $.validator.format("Vui lòng nhập một giá trị hợp lệ."));

jQuery.validator.addMethod("username",function(value,element){
    var username = /^[a-zA-Z0-9_\u4e00-\u9fa5]{2,16}$/;
    return this.optional(element) || (username.test(value));
},"Vui lòng nhập tên người dùng hợp lệ");

jQuery.validator.addMethod("password",function(value,element){
    var password = /^(?!^\\d+$)(?!^[a-zA-Z]+$)(?!^[\s]).{6,}$/;
    return this.optional(element) || (password.test(value));
},"Mật khẩu bạn nhập quá đơn giản");

jQuery.validator.addMethod("tel", function (value, element) {
    var mobile = /^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$/;
	return this.optional(element) || (mobile.test(value));
}, "Vui lòng nhập số điện thoại di động theo đúng định dạng");

jQuery.validator.addMethod("phone", function (value, element) {
    var mm = /^[a-z0-9._%-]+@([a-z0-9-]+\.)+[a-z]{2,4}$|^1[3|4|5|7|8]\d{9}$/;
	return this.optional(element) || (mm.test(value));
}, "Định dạng bạn đã nhập không chính xác");


jQuery.validator.addMethod("instore",function(value,element){
    var bookid = /^([0-9]|[0-9][0-9]|[0-9][0-9][0-9]|[0-9][0-9][0-9][0-9])$/;
    return this.optional(element) || (bookid.test(value));
},"Vui lòng nhập số lượng sách theo đúng định dạng");

jQuery.validator.addMethod("bookclass",function(value,element){
    var bookcla = /^[A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|]$/;
    return this.optional(element) || (bookcla.test(value));
},"Vui lòng chọn loại sách");

/*jQuery.validator.addMethod("myblank",function(value,element){
    var myblank = /^[^\s*]{0,1000}[^\s*]$/;
    return this.optional(element) || (myblank.test(value));
},"Không có khoảng trống trước và sau");

jQuery.validator.addMethod("receiver",function(value,element){
    var rename = /^[\u4e00-\u9fa5]*$/;
    return this.optional(element) || (rename.test(value));
},"Không có khoảng trống trước và sau");
*/
}));
