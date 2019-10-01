<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
    integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
  <link rel="stylesheet" href="../../css/bootstrap4-daydream.min.css">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans|Oswald|Shadows+Into+Light" rel="stylesheet">

  <title>Document</title>

</head>
<style>
  #logo:hover {
    content: url('/image/logo3.png');
  }

  .asize {
    width: 30%;
    height: 30%;
  }
</style>

<body style="text-center">
  <div class="bg-primary text-white navbar-dark">
    <div class="container">
      <nav class="navbar px-0 navbar-expand-lg navbar-dark">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
          aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
              <a class="asize" style="margin: 0%" href="/"><img id="logo" src="/image/logo.png" width="80%" /></a>
              <a href="/bbs" class="pl-md-0 p-3 text-white">Board</a>
              <!-- <a href="app.html" class="p-3 text-decoration-none text-white">App example</a>
              <a href="form.html" class="p-3 text-decoration-none text-white">Form example</a> -->
            </div>
            <div align="right">
              <c:if test="${sessionScope.signVO == null}">

                <a href="/sign/in" class="btn btn-outline-light btn-lg m-2 btn-hover-text-primary">
                  <span class="fas fa-user-check mr-1"> Login</span>
                </a>

                <a href="/sign/up" class="btn btn-outline-light btn-lg m-2 btn-hover-text-primary">
                  <span class="fas fa-user-plus mr-1"> SignUp</span>
                </a>
              </c:if>
              <c:if test="${sessionScope.signVO != null}">
                <a href="/sign/out" class="btn btn-outline-light btn-lg m-2 btn-hover-text-primary">
                  <span class="fas fa-user-alt-slash mr-1"> Logout</span>
                  <!-- ${sessionScope.signVO.getUserId()} -->
                </a>
              </c:if>
            <div>
        </div>

        <%-- <div>
        <c:if test="${sessionScope.signVO == null}">

          <a href="/sign/in" class="btn btn-outline-light btn-lg m-2 btn-hover-text-primary">
            <span class="fas fa-user-check mr-1"> Login</span>
          </a>

          <a href="/sign/up" class="btn btn-outline-light btn-lg m-2 btn-hover-text-primary">
            <span class="fas fa-user-plus mr-1"> SignUp</span>
          </a>
        </c:if>
        <c:if test="${sessionScope.signVO != null}">
          <a href="/sign/out" class="btn btn-outline-light btn-lg m-2 btn-hover-text-primary">
            <span class="fas fa-user-alt-slash mr-1"> Logout</span>
            <!-- ${sessionScope.signVO.getUserId()} -->
          </a>
        </c:if>
        <!-- <div style="text-align: right">
          <a href="/sign/in" class="btn btn-outline-light btn-lg m-2 btn-hover-text-primary"> <span>Sign</span> </a>
        </div> -->
        <div> --%>
      </nav>
    </div>
  </div>
</body>

</html>