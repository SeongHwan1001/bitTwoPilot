<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="layoutTag" tagdir="/WEB-INF/tags"%>

<layoutTag:layout>

<!DOCTYPE html>
<html>
  <head>
    <title>DaeDrip :: Post Read</title>
  </head>


<body>

<jsp:include page="/WEB-INF/view/header.jsp" />

<br/>
<h1 class="display-4" align="center">Post Read</h1>

<div class="col-md-7 order-md-1" style="margin:40px auto;">
    <div class="ht-tm-element jumbotron">
      <h1 class="display-5"> ${read.title}</h1>
      <h6><span class="fas fa-user mr-1"></span> ${read.nickname}</h6>
      <h6><span class="fas fa-eye mr-1"></span>${read.readCount}</h6>
      <h6><span class="fas fa-clock mr-1"></span><fmt:formatDate value="${read.regDate}"
                  pattern="yy.MM.dd HH:mm" />
      </h6>
      <h6><span class="fas fa-history mr-1"></span><fmt:formatDate value="${read.modifyDate}"
                  pattern="yy.MM.dd HH:mm" />
      </h6>
      <h6><span class="fas fa-file mr-1"></span> <a href="/bbs/fileDown/${file.bbs_idx}">${file.fileOriName}</a>
      </h6>
      <br/>
      <h4>${read.content}</h4>

      <br/>
        <div class="row">
          <c:if test="${(sessionScope.signVO != null) && (sessionScope.signVO.idx == read.account_idx)}">
            <div>
              <a href="/bbs/update/${read.idx}" class="btn btn-primary">
                <span class="fas fa-edit mr-1"></span> Edit
              </a>
            </div>
            &nbsp;
            <div>
              <form action="/bbs/delete/${read.idx}" method="post">  
                <input type="hidden" name="account_idx" value=${read.account_idx} />
                <button class="btn btn-danger">
                  <span class="fas fa-trash mr-1"></span> Delete
                </button>   
              </form>
            </div>
          </c:if>
          &nbsp;
          <div>
            <a href="/bbs" class="btn btn-primary" onclick="location.href='/bbs'">
              <span class="fas fa-bars mr-1"></span> List
            </a>
          </div>
        </div>
    </div>
  </div>

<div class="col-md-7 order-md-1" style="margin:40px auto;">
  <c:if test="${sessionScope.signVO != null}">
      <hr class="mb-3">
      <h2><span class="fas fa-comments mr-1"></span> comment</h2> <br/>

      <form name="commentInsertForm" onsubmit="return false;">
        <div class="input-group mb-3">
            <input type="hidden" name="account_idx" value="${signVO.idx}"/>
            <input type="hidden" name="bbs_idx" value="${read.idx}"/>

            <input type="text" class="form-control" id="content" name="content" placeholder="내용을 입력하세요. (20자 이내)" aria-label="Recipient's username" aria-describedby="basic-addon2" required="required"/>
            

            <div class="input-group-append">
              <button class="btn btn-danger" type="button" name="commentInsertBtn" >GoGo!</button>
            </div>

        </div>
      </form>
  </c:if>
</div>

    <div class="col-md-7 order-md-1" style="margin:40px auto;">
        <div class="commentList"></div>
    </div>
</div>
</body>
</html>
<%@ include file="commentS.jsp" %>

</layoutTag:layout>