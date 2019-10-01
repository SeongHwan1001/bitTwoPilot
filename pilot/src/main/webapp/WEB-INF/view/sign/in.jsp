<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="layoutTag" tagdir="/WEB-INF/tags"%>
<layoutTag:layout />

<!DOCTYPE html>
<html>
  <head>
    <title>DaeDrip :: Login</title>
  </head>

  <body>
      <jsp:include page="/WEB-INF/view/header.jsp" />
      <br />
      <h1 class="display-3" align="center">Login</h1>

      <div class="col-md-3 order-md-1" style="margin:40px auto;">
        <form class="order-md-3" id="signup" class="form-horizontal" action="/sign/in" method="post">
          <fieldset>
            <div class="mb-3 form-group">
              <input type="text" class="form-control" placeholder="ID" name="userid" />
            </div>

            <div class="mb-3">
              <input type="password" class="form-control" placeholder="Password" name="pw" />
            </div>

            <div class="custom-control custom-checkbox">
              <ul style="list-style:none; text-align:center; margin: 0 auto;">
                <li style="float:left;">
                  <input type="checkbox" name="check" class="custom-control-input" id="customCheck1" />
                  <label class="custom-control-label" for="customCheck1">아이디 기억</label>
                </li>
                <li>
                  <a href="/sign/find">Forgot ID/Password?</a>
                </li>
              </ul>
            </div>

            <br />

            <div class="col-sm-12  text-center">
              <button class="btn btn-primary my-1 my-sm-0">
                <span class="fas fa-user-check mr-1"></span> Login
              </button>

              <button type='button' onclick="location.href='/sign/up'" class="btn btn-danger my-1 my-sm-0">
                <span class="fas fa-user-plus mr-1"></span> SignUp
              </button>
            </div>
            <h1></h1>

          </fieldset>
        </form>
      </div>
  </body>

</html>