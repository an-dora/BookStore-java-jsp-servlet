<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<form id="ajaxFrm" action="message" method="post">
	<div>
		Vui lòng nhập nội dung tin nhắn của bạn:<br>
		<hr>
		<textarea name='mess' id="message" rows="3" style="width: 1100px;"
			placeholder="Vui lòng nhập tin nhắn của bạn">
		</textarea>
		<br> <input type="text" name="bookid" id="bookid"
			value="${book.bookid }" style="display:none;">
		<c:if test="${sessionScope['_user'] != null}">
			<input type="text" name="userid" id="userid"
				value="${sessionScope['_user'].id}" style="display:none;">
		</c:if>
		<button class="btn btn-success" id="messsubmit" onClick="doFind();"
			style="margin-right: 10px;">
			<i class="icon-edit" style="margin-right: 5px;"></i> Được phát hành
		</button>
		<span class="text-error message_tip" style="margin-top: 20px;"></span>
	</div>
</form>
