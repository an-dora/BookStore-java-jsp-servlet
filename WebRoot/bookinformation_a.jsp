<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="accordion" id="accordion5">
  <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion5" href="#collapseOne">
        tính năng của sản phẩm
      </a>
    </div>
    <div id="collapseOne" class="accordion-body collapse in">
      <div class="accordion-inner">
        <img src="res/images/bookdetailimage/${ bookdetail.bigImage }" alt="">
      </div>
    </div>
  </div>
<div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion5" href="#collapseTwo">
        Giới thiệu về tác giả
      </a>
    </div>
    <div id="collapseTwo" class="accordion-body collapse">
      <div class="accordion-inner">
        <pre>${ book.authorsIntroduce }</pre>
      </div>
    </div>
  </div>
  <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion5" href="#collapseThree">
        Tóm tắt
      </a>
    </div>
    <div id="collapseThree" class="accordion-body collapse">
      <div class="accordion-inner">
        <pre>${ book.contentIntroduce }</pre>
      </div>
    </div>
  </div>
  <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion5" href="#collapseFour">
        Mục lục
      </a>
    </div>
    <div id="collapseFour" class="accordion-body collapse">
      <div class="accordion-inner">
        <pre>${ book.directory }</pre>
      </div>
    </div>
  </div>
  <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion5" href="#collapseFive">
        lời tựa
      </a>
    </div>
    <div id="collapseFive" class="accordion-body collapse">
      <div class="accordion-inner">
        <pre>Xin lỗi, hiện không có lời nói đầu<%-- ${ bookdetail.preface } --%></pre>
      </div>
    </div>
  </div>
</div>