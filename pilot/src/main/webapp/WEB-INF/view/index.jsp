<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
  <title>DaeDrip 대드립</title>

  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
    integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
  <link rel="stylesheet" href="../../css/bootstrap4-daydream.min.css">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans|Oswald|Shadows+Into+Light" rel="stylesheet">

</head>

<body class="bg-primary">

  <jsp:include page="/WEB-INF/view/header.jsp"/>
<%-- 
  <div align="center">
    <img src="/image/dh.png" width="10%" height="20%" />
  </div> --%>
    <div class="jumbotron bg-primary text-center text-white mb-0 radius-0">
    <%-- <div class="container bg-primary"> --%>
        <img src="/image/dh.png" width="10%" height="20%" />    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="/image/hwan.png" width="9%" height="20%" />  

        <h1 class="display-1 text-white text-handwriting text-uppercase">DaeDrip.net</h1>
        <%-- <br/> --%>
        <h1 class="display-2 text-success text-uppercase title-margin-fix">Welcome</h1>
        
        <img src="/image/min.png" width="10%" height="21%" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="/image/hun.png" width="10%" height="21%" />

    </div>
  </div>
<%-- <div style="height:180px"></div> --%>
  <div class="text-white bg-primary" style="position:fixed; bottom:0; width:100%; height:70px;" align="center">
      <h6>Copyright (c) DaeDrip.net All Right Reserved.</h6>
      <h6>Blog is powered by DaeDrip / Designed by DaeDrip</h6>
  </div>

</body>