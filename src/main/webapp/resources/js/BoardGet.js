/**
 * 
 */

$(document).ready(function(){ 
  var bnoValue = '<c:out value="${board.bno}"/>';
  var replyUL = $(".chat");
  
    showList(1);
    
function showList(page){
	
	  console.log("show list " + page);
    
    replyService.getList({bno:bnoValue,page: page|| 1 }, function(replyCnt, list) {
      
    console.log("replyCnt: "+ replyCnt );
    console.log("list: " + list);
    console.log(list);
    
    if(page == -1){
      pageNum = Math.ceil(replyCnt/10.0);
      showList(pageNum);
      return;
    }
      
     var str="";
     
     if(list == null || list.length == 0){
       return;
     }
     
     for (var i = 0, len = list.length || 0; i < len; i++) {
       str +="<li class='left clearfix' data-rno='"+list[i].rno+"'>";
       str +="  <div><div class='header'><strong class='primary-font'>["
    	   +list[i].rno+"] "+list[i].replyer+"</strong>"; 
       str +="    <small class='pull-right text-muted'>"
           +replyService.displayTime(list[i].replyDate)+"</small></div>";
       str +="    <p>"+list[i].reply+"</p></div></li>";
     }
     
     replyUL.html(str);
     showReplyPage(replyCnt);
   });//end function
 }//end showList
    
    var pageNum = 1;
    var replyPageFooter = $(".panel-footer");
    
    function showReplyPage(replyCnt){
      
      var endNum = Math.ceil(pageNum / 10.0) * 10;  
      var startNum = endNum - 9; 
      
      var prev = startNum != 1;
      var next = false;
      
      if(endNum * 10 >= replyCnt){
        endNum = Math.ceil(replyCnt/10.0);
      }
      
      if(endNum * 10 < replyCnt){
        next = true;
      }
      
      var str = "<ul class='pagination pull-right'>";
      
      if(prev){
        str+= "<li class='page-item'><a class='page-link' href='"+(startNum -1)+"'>Previous</a></li>";
      }
      
      for(var i = startNum ; i <= endNum; i++){
        
        var active = pageNum == i? "active":"";
        
        str+= "<li class='page-item "+active+" '><a class='page-link' href='"+i+"'>"+i+"</a></li>";
      }
      
      if(next){
        str+= "<li class='page-item'><a class='page-link' href='"+(endNum + 1)+"'>Next</a></li>";
      }
      str += "</ul></div>";
      console.log(str);
      replyPageFooter.html(str);
    }
     
    replyPageFooter.on("click","li a", function(e){
       e.preventDefault();
       console.log("page click");
       var targetPageNum = $(this).attr("href");
       console.log("targetPageNum: " + targetPageNum);
       pageNum = targetPageNum;
       showList(pageNum);
     });     
       
    var modal = $(".modal");
    var modalInputReply = modal.find("input[name='reply']");
    var modalInputReplyer = modal.find("input[name='replyer']");
    var modalInputReplyDate = modal.find("input[name='replyDate']");
    
    var modalModBtn = $("#modalModBtn");
    var modalRemoveBtn = $("#modalRemoveBtn");
    var modalRegisterBtn = $("#modalRegisterBtn");
    
    $("#modalCloseBtn").on("click", function(e){
    	modal.modal('hide');
    });
    
    $("#addReplyBtn").on("click", function(e){
      modal.find("input").val("");
      modalInputReplyDate.closest("div").hide();
      modal.find("button[id !='modalCloseBtn']").hide();
      modalRegisterBtn.show();
      $(".modal").modal("show");
    });

    modalRegisterBtn.on("click",function(e){
      
      var reply = {
            reply: modalInputReply.val(),
            replyer:modalInputReplyer.val(),
            bno:bnoValue
          };
      replyService.add(reply, function(result){
        alert(result);
        modal.find("input").val("");
        modal.modal("hide");
        //showList(1);
        showList(-1);
      });
    });

  //댓글 조회 클릭 이벤트 처리 
    $(".chat").on("click", "li", function(e){
      var rno = $(this).data("rno");
      
      replyService.get(rno, function(reply){
        modalInputReply.val(reply.reply);
        modalInputReplyer.val(reply.replyer);
        modalInputReplyDate.val(replyService.displayTime( reply.replyDate))
        .attr("readonly","readonly");
        modal.data("rno", reply.rno);
        modal.find("button[id !='modalCloseBtn']").hide();
        modalModBtn.show();
        modalRemoveBtn.show();
        $(".modal").modal("show");
      });
    });
 
  modalModBtn.on("click", function(e){
   	  var reply = {rno:modal.data("rno"), reply: modalInputReply.val()};
   	  replyService.update(reply, function(result){
   	    alert(result);
   	    modal.modal("hide");
   	    showList(pageNum);
   	  });
   	});

   	modalRemoveBtn.on("click", function (e){
   	  var rno = modal.data("rno");
   	  replyService.remove(rno, function(result){
   	      alert(result);
   	      modal.modal("hide");
   	      showList(pageNum);
   	  });
   	});
});

$(document).ready(function() {
  
  var operForm = $("#operForm"); 
  $("button[data-oper='modify']").on("click", function(e){
    operForm.attr("action","/board/modify").submit();
  });
    
  $("button[data-oper='list']").on("click", function(e){
    operForm.find("#bno").remove();
    operForm.attr("action","/board/list")
    operForm.submit();
  });  
});
 