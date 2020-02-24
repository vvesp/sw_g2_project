<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../includes/board-header.jsp" %>			
		
  <div id="wrapper">

    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Tables</li>
        </ol>

        <!-- DataTables Example -->
        <div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i>
            Data Table Example</div>
          <div class="card-body">
            <div class="table-responsive">
            
            	<!-- modify-->
            	
			    <div class="row">
			      <div class="col-lg-12">
			        <h1 class="page-header">Board Read</h1>
			      </div>
			    </div>
			
			    <div class="row">
			      <div class="col-lg-12">
			        <div class="panel panel-default">
			
			          <div class="panel panel-heading">Board Read Page</div>
			          <div class="panel-body">
						
						
						<form role="form" action="/board/modify" method="post">
						<!-- 추가 p.319, p.346  -->
							<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}" />'>
	           				<input type="hidden" name="amount" value='<c:out value="${cri.amount}" />'>	           				
				            <input type="hidden" name="type" value='<c:out value="${cri.type}"/>' >
							<input type="hidden" name="keyword" value='<c:out value="${cri.keyword}"/>' />
			            <div class="form-group">
			              <label>Bno</label> <input class="form-control" name="bno" value='<c:out value= "${board.bno}"/>'
			               readonly>
			            </div>
			            <div class="form-group">
			              <label>Title</label> <input class="form-control" name="title" value='<c:out value= "${board.title}"/>' >
			               
			            </div>
			            <div class="form-group">
			              <label>Text Area</label> <textarea class="form-control" rows="3" name="content" ><c:out value= "${board.content}"/></textarea> 
			            </div>
			            <div class="form-group">
			              <label>Writer</label> <input class="form-control" name="writer" value='<c:out value= "${board.writer}"/>'
			               readonly>
			            </div>
			            <div class="form-group">
			              <label>RegDate</label> <input class="form-control" name="regdate" value='<fmt:formatDate pattern = 'yyyy/MM/dd'  value= "${board.regdate}"/>'
			               readonly>
			            </div>
			            <div class="form-group">
			              <label>Update Date</label> <input class="form-control" name="updatedate" value='<fmt:formatDate pattern = "yyyy/MM/dd"  value= "${board.updatedate}"/>'
			                readonly>
			            </div>
			            <button style="border-color: black;" type="submit" data-oper='modify' class="btn btn-default" >Modify</button>
			            <button style="border-color: black;" type="submit" data-oper='remove' class="btn btn-danger" >Remove</button>
			            <button style="border-color: black;" type="submit" data-oper='list' class="btn btn-info" >List</button>
			          	</form>
			          	
			          </div>
			
			        </div>
			      </div>
			    </div>
            	
              <!-- Board register  -->
              <!-- <form role="form" action="/board/register" method="post">
					<div class="form-group">
						<label>Title</label> <input class="form-control" name='title'>
					</div>              
					<div class="form-group">
						<label>Text Area</label> 
						<textarea class="form-control" rows="3" name='content'></textarea>
					</div>              
					<div class="form-group">
						<label>Writer</label> <input class="form-control" name='writer'>
					</div>              
					<button style="border-color: black;" type="submit" class="btn btn-default">Submit Button</button>
					<button style="border-color: black;" type="reset" class="btn btn-default">Reset Button</button>
              </form> -->
              
            </div>
          </div>
          <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
        </div>
        
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="/resources/js/modify.js"></script>  
    
     
<%@include file="../includes/board-footer.jsp" %>