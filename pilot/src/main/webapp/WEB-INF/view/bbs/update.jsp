<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="layoutTag" tagdir="/WEB-INF/tags"%>

<c:if test="${(sessionScope.signVO == null) || (sessionScope.signVO.idx != read.account_idx)}">
  <script>
    alert('작성자만 수정 가능합니다!');
    history.go(-1);
  </script>
</c:if>

<layoutTag:layout>



<!DOCTYPE html>
<html>
  <head>
    <title>DaeDrip :: SignUp</title>
  </head>
  
  <body>
    <jsp:include page="/WEB-INF/view/header.jsp" />
    </br>
    <h1 class="display-3" align="center">Post Update</h1>

      <%-- <div class="container">
        <div class="col-xs-12" style="margin: 15px auto;">
          <label style="font-size: 20px;">
          <span class="glyphicon glyphicon-edit"></span>글 수정</label>
        </div>  --%>

      <div class="col-md-5 order-md-1" style="margin:40px auto;">
        <form class="order-md-3" id="write" class="form-horizontal" action="/bbs/updateProc" method="post" enctype="multipart/form-data">
          <div class="mb-3 form-group">
            <label for="title">제목</label>
            <input class="form-control" type="text" name="title" id="title" value="${read.title}"/>
          </div>

          <div class="mb-3 form-group">
            <label for="content">내용</label>
            <textarea class="form-control" id="content" name="content" rows="8">${read.content}</textarea>
          </div>

          <input type="hidden" name="idx" value="${idx}" />

          <%-- <button type="submit" class="btn btn-primary">수정</button> --%>

          <div class="form-group">
            <div class="col-sm-12  text-center">
              <button  class="btn btn-primary btn-primary my-1 my-sm-0">
                <span class="fas fa-edit mr-1"></span> update
              </button>
              <a href="javascript:history.back()" class="btn btn-primary btn-danger my-1 my-sm-0">
                <span class="fas fa-undo mr-1"></span> back
              </a>
            </div>
          </div> 

        </form>
      <div>
  <%-- 
            <div class="col-xs-12">
              <form action="/bbs/updateProc" method="post">
              
                <div class="form-group">
                  <label for="title">제목</label>
                  <input class="form-control" type="text" id="title" name="title" value="${read.title}" />
                </div>
                
                <div class="form-group">
                  <label for="content">내용</label>
                  <textarea class="form-control" id="content" name="content" rows="3">${read.content}</textarea>
                </div>

                <input type="hidden" name="idx" value="${idx}" />

                <button type="submit" class="btn btn-primary">수정</button>
              </form>
            </div> --%>
  </body>
</html>

</layoutTag:layout>