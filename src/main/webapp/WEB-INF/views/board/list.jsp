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
<!-- 
    Sidebar
    <ul class="sidebar navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="/resources/index.html">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span>
        </a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-fw fa-folder"></i>
          <span>Pages</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
          <h6 class="dropdown-header">Login Screens:</h6>
          <a class="dropdown-item" href="/resources/login.html">Login</a>
          <a class="dropdown-item" href="/resources/register.html">Register</a>
          <a class="dropdown-item" href="/resources/forgot-password.html">Forgot Password</a>
          <div class="dropdown-divider"></div>
          <h6 class="dropdown-header">Other Pages:</h6>
          <a class="dropdown-item" href="/resources/404.html">404 Page</a>
          <a class="dropdown-item" href="/resources/blank.html">Blank Page</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/resources/charts.html">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Charts</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="/resources/tables.html">
          <i class="fas fa-fw fa-table"></i>
          <span>Tables</span></a>
      </li>
    </ul>
 -->
 
    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Board Tables</li>
        </ol>

        <!-- DataTables Example -->
        <div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i>
            Board List Page
           
			<button  style="border-color: black;" id='regBtn' type="button" class="btn btn-xs pull-right">Register NewBoard</button>           
           </div>
          <div class="card-bodylist">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable"> 
              <!-- width="100%" cellspacing="0"> -->
                <thead class="title-board">
                	<tr>
                		<th>#번호</th>
                		<th>제목</th>
                		<th>작성자</th>
                		<th>작성일</th>
                		<th>수정일</th>
                	</tr>
                </thead>
                
                <c:forEach items="${list}" var="board">
                	
                	<tr class="board-list">
                		<td class="boardvalue"><c:out value="${board.bno}"  /></td>
                		<td class="boardvalue"><a href='/board/get?bno=<c:out value="${board.bno}"  />'>
                		<c:out value="${board.title}"  /></a></td>
                		<td class="boardvalue"><c:out value="${board.writer}"  /></td>
                		<td class="boardvalue"><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}" /></td>
                		<td class="boardvalue"><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updatedate}"  /></td>
                	</tr>
                </c:forEach>
              </table>
               
              <div class="row">
              	<div class="col-lg-12">
              		<form id="searchForm" action="/board/list" method="get">
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
		 
		<form id="actionForm" action="/board/list" method="get">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
            <input type="hidden" name="type" value='<c:out value="${pageMaker.cri.type}"/>' >
			<input type="hidden" name="keyword" value='<c:out value="${pageMaker.cri.keyword}"/>' />
		</form>
		  
		
	<td>	
	<a class='move' href='/board/get?bno=<c:out value="${board.bno}"/>'>	
     <c:out value="${board.title}" /></a>
	</td>
     <script type="text/javascript" src="/resources/js/BoardSearch.js"></script>
<%@include file="../includes/board-footer.jsp" %>