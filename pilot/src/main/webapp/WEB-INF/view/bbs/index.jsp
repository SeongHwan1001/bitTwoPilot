<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layoutTag" tagdir="/WEB-INF/tags"%>

<layoutTag:layout>

  <!DOCTYPE html>
  <html>

  <head>
    <title>DaeDrip :: Post List</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
      integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" href="../../css/bootstrap4-daydream.min.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans|Oswald|Shadows+Into+Light" rel="stylesheet">

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">

  </head>

  <body align="center" style="margin: auto;">

    <jsp:include page="/WEB-INF/view/header.jsp" />

    <br />
    <h1 class="display-3" align="center">Post List</h1>
    <br />

    <div class="col-sm-8" style="margin: auto;">
      <table class=" table table-hover table-striped">
        <tr class=" bg-primary" align="center">
          <th>글 번호</th>
          <th>제목</th>
          <th>작성자</th>
          <th>조회수</th>
          <th>등록일</th>
        </tr>

        <c:forEach var="p" items="${list}">
          <tr>
            <td align="center">${p.idx}</td>
            <td onclick="location.href='/bbs/read/${p.idx}'">${p.title}</td>
            <td align="center">${p.nickname}</td>
            <td align="center">${p.readCount}</td>
            <td align="center">
              <fmt:formatDate value="${p.regDate}" pattern="yyyy.MM.dd HH:mm:ss" />
            </td>
          </tr>
        </c:forEach>
      </table>
    </div>
    <br />
    <%-- Page 처리 --%>
    <div align="center">
      <ul class="pagination" style="justify-content: center;">
        <c:if test="${pageMakeVO.prev}">
          <li class="page-item"><a class="page-link" href="${path}?page=${pageMakeVO.startPage - 1}">
              <<</a> </li> </c:if> <%-- <c:forEach begin="${pageMakeVO.startPage}" end="${pageMakeVO.endPage}" var="idx">
        <li class="page-item">
          <c:out value="${pageMakeVO.pageVO.page == idx ? '' : ''}" />
          <a class="page-link" href="${path}?page=${idx}">${idx}</a>
        </li>
        </c:forEach> --> --%> <c:forEach begin="${pageMakeVO.startPage}" end="${pageMakeVO.endPage}" var="idx">
                <ul class="pagination">
                  <c:if test="${pageMakeVO.pageVO.page == idx}">
                    <li class="page-item active">
                      <a class="page-link" href="${path}?page=${idx}">${idx}</a>
                    </li>
                  </c:if>
                  <c:if test="${pageMakeVO.pageVO.page != idx}">
                    <li class="page-item">
                      <a class="page-link" href="${path}?page=${idx}">${idx}</a>
                    </li>
                  </c:if>
                </ul>
                </c:forEach>

                <c:if test="${pageMakeVO.next && pageMakeVO.endPage > 0}">
          <li class="page-item"><a class="page-link" href="${path}?page=${pageMakeVO.endPage + 1}">>></a></li>
        </c:if>
      </ul>
    </div>

    <!-- <button class="btn btn-primary btn-sm" style="margin: auto;" onclick="location.href='/bbs/write'">글쓰기</button> -->
    <!-- <div align="center">
    <a href="/bbs/write" class="btn btn-primary">글쓰기</a>
  </div> -->

    <%-- <div align="center">
    <a href="/bbs/write" class="ry my-1 my-sm-btn btn-prima0">
      <span class="fas fa-pen-square mr-1"></span> write
    </a>
  </div> --%>

    <div align="center">
      <c:if test="${sessionScope.signVO != null}">
        <a href="/bbs/write" class="btn btn-primary my-1 my-sm-0"">
        <span class=" fas fa-pencil-alt mr-1"></span> write
        </a>
      </c:if>
    </div>
  </body>

  </html>
</layoutTag:layout>