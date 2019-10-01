<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script>
var bbs_idx = '${read.idx}'; //게시글 번호
 
$('[name=commentInsertBtn]').click(function(){ //댓글 등록 버튼 클릭시 
    //console.log($('[name=commentInsertForm]').find("[name='content']").val().length > 2);
    
    if(($('[name=commentInsertForm]').find("[name='content']").val()=='') || ($('[name=commentInsertForm]').find("[name='content']").val().length >20)){
         alert(" 1자 ~ 20자 댓글입력");
    }else{
        var insertData = $('[name=commentInsertForm]').serialize(); //commentInsertForm의 내용을 가져옴
        commentInsert(insertData); //Insert 함수호출(아래)
    }
});

function commentInsert(insertData){  
    $.ajax({
        url : '/comment/insert',
        type : 'post',
        data : insertData,
        success : function(data){
            if(data == 1) {
                commentList(); //댓글 작성 후 댓글 목록 reload
                $('[name=content]').val('');
            }
        }
    });
}
 
//댓글 목록 
function commentList(){
 
    $.ajax({
        url : '/comment/list',
        type : 'get',
        data : {'bbs_idx':bbs_idx},
        success : function(data){
            
            $(".commentList").html(data);
        }
    });
}
 
//댓글 수정 - 댓글 내용 출력을 input 폼으로 변경 
function commentUpdate(idx, content){
    var a ='';
  
    a += '<div class="input-group">';
    a += '<input type="text" class="form-control" name="content_'+idx+'" value="'+content+'"/>';
    a += '<button class="btn btn-default" type="button" onclick="commentUpdateProc('+idx+');"><span class="fas fa-check-circle mr-1"></span> ok</button>';
    a += '</div>';
    
    $('.commentContent'+idx).html(a);
    
}
 
//댓글 수정
function commentUpdateProc(idx){
    var updateContent = $('[name=content_'+idx+']').val();
    
    $.ajax({
        url : '/comment/update',
        type : 'post',
        data : {'content' : updateContent, 'idx' : idx},
        success : function(data){
            if(data == 1) commentList(bbs_idx); //댓글 수정후 목록 출력 
        }
    });
}
 
//댓글 삭제 
function commentDelete(idx){
    $.ajax({
        url : '/comment/delete/'+idx,
        type : 'post',
        success : function(data){
            if(data == 1) commentList(bbs_idx); //댓글 삭제후 목록 출력 
        }
    });
}
 
$(document).ready(function(){
    commentList(); //페이지 로딩시 댓글 목록 출력 
});
</script>