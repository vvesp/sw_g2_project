<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../includes/header.jsp" %>

<link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
   
<!--<script type="text/javascript">
$(document).ready(function(){
	   var bnoValue = '<c:out value="${board.bno}"/>';
	   var replyUL = $(".chat");
	   
	   	showList(1);
	   	function showList(page){
	   	
	   	console.log("show list " + page);
	   	
	   		replyService.getList({
	   			bno : bnoValue,
	   			page : page || 1
	   		}, function(list){
	   			var str="";
	   			if(list == null || list.length == 0){
	   				replyUL.html("");
	   				return;
	   			}
	   			for(var i=0,len = list.length || 0; i< len; i++){
	   				str += "<li class='left clearfix' data-rno'"+list[i].rno+"'>";
	   				str +=" <div><div class='header'><strong class='primary-font'>"+list[i].replyer + "</strong>";
	   				str +=" <small class='pull-right text-muted'>"+replyService.displayTime(list[i].replydate)+"</smal></div>";
	   				str+=" <p>"+list[i].reply+"</p></div></li>";
	   			}
	   			replyUL.html(str);
	   		});
	   	}
	
    /* var operForm = $("#operForm");

    $("button[data-oper='modify']").on("click", function(e){
        operForm.attr("action","/board/modify").submit();
    }); 
   console.log(replyService);  
    }); */
    
   console.log("==============");
   console.log("JS TEST"); 
 
   //addTest
 replyService.add(
	{
		reply : "JS Test",
		replyer : "tester",
		bno : bnoValue
	},
	function(result){
		alert("RESILT: " + result);
	}
   );  
   //List Test
    replyService.getList(
		   {
			   bno : bnoValue,
			   page : 1
			}, 
			function(list){
				for(var i =0, len = list.length || 0; i< len; i++){
					console.log(list[i]);
				}
			}); 
   //remove
  /*   replyService.remove(13, function(count){
	    console.log(count);
	    
	    if(count === "success"){
	        alert("REMOVED");
	    }
	},function(err){
	    alert('ERROR...');
	});  */
	//update
 	replyService.update(
	{
		rno : 9,
		bno : bnoValue,
		reply : "Modifyed Reply..."
	},
	function(result){
		alert("수정완료.");
	}); 
	//get
	 replyService.get(10, function(data){
		console.log(data);
	}); 
 });
</script> -->
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
          <li class="breadcrumb-item active">Tables</li>
        </ol>

		

        <!-- DataTables Example -->
        <div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i>
            Data Table Example</div>
          <div class="card-body">
            <div class="table-responsive">
            
            	<!-- get -->
            	
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
			
			            <div class="form-group">
			              <label>Bno</label> <input class="form-control" name="bno" value='<c:out value= "${board.bno}"/>'
			               readonly>
			            </div>
			            <div class="form-group">
			              <label>Title</label> <input class="form-control" name="title" value='<c:out value= "${board.title}"/>'
			               readonly>
			            </div>
			            <div class="form-group">
			              <label>Text Area</label> <textarea class="form-control" rows="10" name="content" readonly><c:out value= "${board.content}"/></textarea> 
			            </div>
			            <div class="form-group">
			              <label>Writer</label> <input class="form-control" name="writer" value='<c:out value= "${board.writer}"/>'
			               readonly>
			            </div>
			            <button style="border-color: black;" data-oper="modify" class="btn btn-default" 
			            onclick="location.href='/board/modify?bno=<c:out value="${board.bno}"/>' ">Modify</button>
			            <button style="border-color: black;" data-oper="list" class="btn btn-info" onclick="location.href='/board/list' ">List</button>
			          
			          <form id='operForm' action="/boad/modify" method="get">
						  <input type='hidden' id='bno' name='bno' value='<c:out value="${board.bno}"/>'>
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
          
          <div class='row'>
  				<div class="col-lg-12">
				    <!-- /.panel -->
				    <div class="panel panel-default">
				      <div class="panel-heading">
				        <i class="fa fa-comments fa-fw"></i> Reply
				        <button id='addReplyBtn' class='btn btn-primary btn-xs pull-right'>New Reply</button>
				      </div>      
				      <!-- /.panel-heading -->
				      <div class="panel-body">        
				        <ul class="chat">
				        </ul>
				        <!-- ./ end ul -->
				      </div>
				      <!-- /.panel .chat-panel -->
					<div class="panel-footer"></div>
					</div>
				  </div>
				  <!-- ./ end row -->
				</div>
		
		
        </div>
	</div>
 </div>
</div>
	<!-- Modal -->
			      <div class="modal" id="myModal" tabindex="-1" role="dialog"
							        aria-labelledby="myModalLabel" aria-hidden="true">
		        		<div class="modal-dialog">
		          			<div class="modal-content">
		           			 <div class="modal-header">
					              <button type="button" class="close" data-dismiss="modal"
					                aria-hidden="true">&times;</button>
					              <h4 class="modal-title" id="myModalLabel">REPLY MODAL</h4>
					         </div>
				            <div class="modal-body">
				              <div class="form-group">
				                <label>Reply</label> 
				                <input class="form-control" name='reply' value='New Reply!!!!'>
				              </div>      
				              <div class="form-group">
				                <label>Replyer</label> 
				                <input class="form-control" name='replyer' value='replyer'>
				              </div>
				              <div class="form-group">
				                <label>Reply Date</label> 
				                <input class="form-control" name='replyDate' value='2018-01-01 13:13'>
				              </div>
				      
				            </div>
							<div class="modal-footer">
						        <button id='modalModBtn' type="button" class="btn btn-warning">Modify</button>
						        <button id='modalRemoveBtn' type="button" class="btn btn-danger">Remove</button>
						        <button id='modalRegisterBtn' type="button" class="btn btn-primary">Register</button>
						        <button id='modalCloseBtn' type="button" class="btn btn-default">Close</button>
					        </div>
					      </div>
				          <!-- /.modal-content -->
				        </div>
				        <!-- /.modal-dialog -->
				      </div>
				      <!-- /.modal -->		
      
      <%--   <form id="operForm" action="/board/modify" method="get">
           	<input type="hidden" id="bno" name="bno" value='<c:out value="${board.bno}" />'>
          	<input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum}" />'>
           	<input type='hidden' name='amount' value='<c:out value="${cri.amount}" />'> 
           	<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}" />'>
           	<input type="hidden" name="amount" value='<c:out value="${cri.amount}" />'>
           </form> --%>
<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>  
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
 <!-- jQuery Modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js  "></script> 

 <script type="text/javascript" src="/resources/js/reply.js"></script>
 <script type="text/javascript" src="/resources/js/BoardGet.js"></script>

     
<%@include file="../includes/footer.jsp" %>