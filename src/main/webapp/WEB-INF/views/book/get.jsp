<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../includes/board-header.jsp" %>

<link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
 

  <div id="wrapper">

    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">Book Info</a>
          </li>
          <li class="breadcrumb-item active">Book</li>
        </ol>		

        <!-- DataTables Example -->
        <div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i>
            Book Table</div>
          <div class="card-body">
            <div class="table-responsive">
            
            	<!-- get -->
            	
			    <div class="row">
			      <div class="col-lg-12">
			        <h1 class="page-header">Book Infomation</h1>
			      </div>
			    </div>
			
			    <div class="row">
			      <div class="col-lg-12">
			        <div class="panel panel-default">
			
			          <div class="panel panel-heading"></div>
			          <div class="panel-body">
			
			            <div class="form-group">
			              <label>책장 번호</label> <input class="form-control" name="bnume" value='<c:out value= "${book.bnum}"/>'
			               readonly>
			            </div>
			            <div class="form-group">
			              <label>작가</label> <input class="form-control" name="author" value='<c:out value= "${book.auther}"/>'
			               readonly>
			            </div>
			            <div class="form-group">
			              <label>책 제목</label> <input class="form-control" name="bname" value='<c:out value= "${book.bname}"/>'
			               readonly>
			            </div>
			            <div class="form-group">
			              <label>출판사</label> <input class="form-control" name="publisher" value='<c:out value= "${book.publisher}"/>'
			               readonly>
			            </div>
			            <div class="form-group">
			              <label>초판인쇄</label> <input class="form-control" name="pdate" value='<c:out value= "${book.pdate}"/>'
			               readonly>
			            </div>
			            <div class="form-group">
			              <label>분류</label> <input class="form-control" name="cl" value='<c:out value= "${book.cl}"/>'
			               readonly>
			            </div>			            
			            <button style="border-color: black;" data-oper="list" class="btn btn-info" onclick="location.href='/book/list' ">Book List</button>
			          
			          <form id='operForm' action="/boad/modify" method="get">
						  <input type='hidden' id='bnum' name='bnum' value='<c:out value="${book.bnum}"/>'>
						  <input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
						  <input type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
						  <input type='hidden' name='keyword' value='<c:out value="${cri.keyword}"/>'>
						  <input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>  
						 
						</form>
			          
			          </div>
			
			        </div>
			      </div>
			    </div>
            </div>
          </div>   
          <div class="card-footer small text-muted">
          Updated yesterday at 11:59 PM</div>           	
		
        </div>
	</div>
 </div>
</div>		
      
      
<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>  
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
 <!-- jQuery Modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js  "></script> 

<!--  <script type="text/javascript" src="/resources/js/reply.js"></script> -->
 <script type="text/javascript" src="/resources/js/BookGet.js"></script>

<%@include file="../includes/board-footer.jsp" %>