<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<layoutTag:layout />

<!DOCTYPE html>
<html>
  <head>
    <title>DaeDrip :: ID/PW Find</title>
  </head>

  <body>
      <jsp:include page="/WEB-INF/view/header.jsp" />
      <br />
      <h1 class="display-3" align="center">ID/PW Find</h1>

      <div class="col-md-3 order-md-1" style="margin:40px auto;">
        <form action="/sign/find" method="post">
          <fieldset>
            <div class="mb-3 form-group">
              <input type="text" class="form-control" placeholder="Email" name="email" />
            </div>
            <br />
            <div class="col-sm-12  text-center">
              <button class="btn btn-primary my-1 my-sm-0">
                <span class="fas fa-search mr-1"></span> search
              </button>
              <button type='button' onclick="history.back()" class="btn btn-danger my-1 my-sm-0">
                <span class="fas fa-undo mr-1"></span> back
              </button>
            </div>
          </fieldset>
        </form>
      </div>
  </body>
</html>