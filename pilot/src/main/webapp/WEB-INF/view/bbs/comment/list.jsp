<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:forEach var="commentVO" items="${comments}">
  <div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">

    <div class="row">
      <div class="col-md-6 mb-3">
        작성자 : ${commentVO.nickname}
      </div>
    </div>

    <div class="row">
      <div class="commentContent${commentVO.idx} col-md-6 mb-3">
           내용 : ${commentVO.content}
      </div>
      <div class="col-md-6 mb-3" align="right">
        <c:if test="${sessionScope.signVO.idx == commentVO.account_idx}">
          <button class="btn btn-sm btn-default my-1 my-sm-0" onclick="commentUpdate('${commentVO.idx}','${commentVO.content}');">
          <span class="fas fa-edit mr-1"></span> Edit </button>
          <button class="btn btn-sm btn-default my-1 my-sm-0" onclick="commentDelete('${commentVO.idx}');">
          <span class="fas fa-trash mr-1"></span> Delete </button>
        </c:if>
      </div>
    </div>
  </div>
</c:forEach> 