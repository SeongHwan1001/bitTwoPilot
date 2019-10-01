<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="layoutTag" tagdir="/WEB-INF/tags"%>
<layoutTag:layout>

<!DOCTYPE html>
<html>
  <head>
    <title>DaeDrip :: SignUp</title>
  </head>

  <body>
      <jsp:include page="/WEB-INF/view/header.jsp" />
      </br>

      <h1 class="display-3" align="center">join membership</h1>

      <div class="col-md-5 order-md-1" style="margin:40px auto;">

        <form:form class="order-md-3 form-horizontal" id="signup" modelAttribute="accountVO" action="/sign/up" method="post">

          <div class="mb-3">
            <label>ID</label>
            <form:input path="userid" class="form-control"  required="required"/>
            <form:errors path="userid" style="color:red;" />
          </div>
          <br />

          <div class="row">
            <div class="col-md-6 mb-3">
              <label>Password</label>
              <form:input path="pw" type="password" class="form-control" required="required"/>
              <form:errors path="pw" style="color:red;"/>
            </div>
            <div class="col-md-6 mb-3">
              <label>Password Check</label>
              <input type="password" class="form-control" name="pwCheck" required="required"/>
              <p style="color:red;">
                ${pwCheckError}
              </p>
            </div>
          </div>

          <div class="row">
            <div class="col-md-6 mb-3">
              <label>Nickname</label>
              <form:input path="nickname" type="text" class="form-control" value="${accountVO.nickname}" required="required"/>
              <form:errors path="nickname" style="color:red;"/>
            </div>
            <div class="col-md-6 mb-3">
              <label>Email</label>
              <form:input path="email" type="email" class="form-control" value="${accountVO.email}" placeholder="you@example.com" required="required"/>
              <form:errors style="color:red;"/>
            </div>
          </div>
          <label>Postcode</label>
          <div class="row">
            <div class="col-md-6 mb-3">
              <form:input path="zipcode" type="text" placeholder="Postcode" class="form-control" value="${accountVO.zipcode}" required="required" readOnly="readOnly"/>
              <form:errors path="zipcode" style="color:red;"/>
            </div>
            <div class="col-md-6 mb-3">
              <input type="button" onclick="execDaumPostcode()" value="Postcode Search" class="btn btn-primary"/>
            </div>
          </div>

          <div class="row">
            <div class="col-md-6 mb-3">
              <label>Address</label>
              <form:input path="address" type="text" placeholder="Address" class="form-control" value="${accountVO.address}" required="required" readOnly="readOnly"/>
              <form:errors path="address" style="color:red;"/>
            </div>
            <div class="col-md-6 mb-3">
              <label>Address Detail</label>
              <form:input path="extraaddress" type="text" placeholder="Address Detail" class="form-control" value="${accountVO.extraaddress}" required="required"/>
            </div>
          </div>

          <br/>
          <div class="form-group">
            <div class="col-sm-12  text-center">

              <button href="/sign/in" class="btn btn-primary my-1 my-sm-0">
                <span class="fas fa-user-plus mr-1"></span> ok
              </button>
              <a href="javascript:history.back()" class="btn btn-danger my-1 my-sm-0">
                <span class="fas fa-undo mr-1"></span> back
              </a>

              <!-- <input type="submit" value="회원가입" class="btn btn-primary btn-primary my-1 my-sm-0" />
              <input type="reset" value="취소" class="btn btn-primary btn-danger my-1 my-sm-0" /> -->
            </div>
          </div>

      </div>
      </form:form>
      </div>
  </body>

</html>

</layoutTag:layout>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script language="javascript">
  function execDaumPostcode() {
    new daum.Postcode({
      oncomplete: function (data) {
        var address = '';
        if (data.userSelectedType === 'R') {
          address = data.roadAddress;
        } else {
          address = data.jibunAddress;
        }

        var signup = document.forms["signup"];
        signup.zipcode.value = data.zonecode;
        signup.address.value = address
        signup.extraaddress.focus();
      }
    }).open();
  }
</script>