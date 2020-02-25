<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../includes/board-header.jsp" %>

	<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
  
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
 
<!-- jQuery Modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js  "></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

<!-- pagination BootstrapCDN-->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />	
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>

  <div id="wrapper">
 
    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">Book Library</a>
          </li>
          <li class="breadcrumb-item active">Book Tables</li>
        </ol>

        <!-- DataTables Example -->
        <div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i>
            Book List Page
           
           </div>
          <div class="card-bodylist">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable"> 
              <!-- width="100%" cellspacing="0"> -->
                <thead>
                	<tr>
                		<th>#번호</th>
                		<th>제목</th>
                		<th>작가</th>
                		<th>출판사</th>
                		<th>출판일</th>
                		<th>분류</th>
                	</tr>
                </thead>
                
                <c:forEach items="${list}" var="book">
                	
                	<tr>
                		<td><c:out value="${book.bnum}"  /></td>
                		<td><a href='/book/get?bnum=<c:out value="${book.bnum}"  />'>
                		<c:out value="${book.bname}"  /></a></td>
                		<td><c:out value="${book.auther}"  /></td>
                		<td><c:out value="${book.publisher}"  /></td>
                		<td><fmt:formatDate pattern="yyyy-MM-dd" value="${book.pdate}" /></td>
                		<td><c:out value="${book.cl}"  /></td>
                	</tr>
                </c:forEach>
              </table>
               
              <div class="row">
              	<div class="col-lg-12">
              		<form id="searchForm" action="/book/list" method="get">
              			<select name="type">
	              			<option value="" <c:out value="${pageMaker.cri.type == null?'selected':''}" /> >--</option>
	              			<option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':''}" /> >제목</option>
	              			<option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':''}" />>내용</option>
	              			<option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':''}" />>작성자</option>
	              			<option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}" />>제목 or 내용</option>
	              			<option value="TW" <c:out value="${pageMaker.cri.type eq 'TW'?'selected':''}" />>제목 or 작성자</option>
	              			<option value="TWC" <c:out value="${pageMaker.cri.type eq 'TWC'?'selected':''}" />>제목 or 내용 or 작성자</option>
              			</select>
              			<input type="text" name="keyword" value='<c:out value="${pageMaker.cri.keyword}"/>' />
              			<input type="hidden" name="pageNum" value='<c:out value="${pageMaker.cri.pageNum}"/>' >
						<input type="hidden" name="amount" value='<c:out value="${pageMaker.cri.amount}"/>' >
						<button style="border-color: black;" class="btn btn-default">Search</button>
              		</form>
              	</div>
              </div> 
               <div><br></div>
              
         	<div class='pull-right'>
				<ul class="pagination">
					
					<c:if test="${pageMaker.prev}">
							<li class="page-item previous"> 
						
							<a class="page-link" href="${pageMaker.startPage -1}">
								previous
							</a>
						</li>
					</c:if>
					
					<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
<!-- 					<li class="paginate_button"> -->
						<li class="page-item ${pageMaker.cri.pageNum == num ? 'active':''}">
							<a class="page-link" href="${num}">
								${num}
							</a>
						</li>
					</c:forEach>
					
					<c:if test="${pageMaker.next}">
						<li class="page-item next">
							<a class="page-link" href=" ${pageMaker.endPage + 1}">
								Next
							</a>
						</li>
					</c:if>
				</ul>         		
         	</div>
         	      <!-- 패이지번호 출력 END  -->
         	
            </div>
          </div>
          <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
        </div>
		 
		<form id="actionForm" action="/book/list" method="get">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
            <input type="hidden" name="type" value='<c:out value="${pageMaker.cri.type}"/>' >
			<input type="hidden" name="keyword" value='<c:out value="${pageMaker.cri.keyword}"/>' />
		</form>
		  
		
	<td>	
	<a class='move' href='/book/get?bno=<c:out value="${book.bnum}"/>'>	
     <c:out value="${book.bname}" /></a>
	</td>
     <script type="text/javascript" src="/resources/js/BoardSearch.js"></script>
<%@include file="../includes/board-footer.jsp" %>