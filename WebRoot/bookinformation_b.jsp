<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<div>
	<table class="table table-bordered">
		<tbody>
			<tr>
				<th>Tên sách</th>
				<td>${ book.bookname }</td>
			</tr>
			<tr>
				<th>Tác giả</th>
				<td>${ book.author }</td>
			</tr>
			<tr>
				<th>ISBN</th>
				<td>${ book.bookid }</td>
			</tr>
			<tr>
				<th>Bìa</th>
				<td>${ book.packaging }</td>
			</tr>
			<tr>
				<th>Phiên bản</th>
				<td>${ book.edition }</td>
			</tr>
			<tr>
				<th>Nhà xuất bản</th>
				<td>${ book.publisher }</td>
			</tr>
			<tr>
				<th>định dạng</th>
				<td>${ book.format }</td>
			</tr>
			<tr>
				<th>Ngày xuất bản</th>
				<td>${ book.publdata }</td>
			</tr>
			<tr>
				<th>Số trang</th>
				<td>${ book.numpages }</td>
			</tr>
			<tr>
				<th>Ngôn ngữ</th>
				<td>${ book.language }</td>
			</tr>
			<tr>
				<th>Phục vụ</th>
				<td>Nhà sách chúng tôi sẽ chịu trách nhiệm giao hàng và đảm bảo dịch vụ hậu mãi cho bạn</td>
			</tr>
		</tbody>
	</table>
</div>