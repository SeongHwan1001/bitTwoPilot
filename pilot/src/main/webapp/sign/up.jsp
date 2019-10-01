<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form id="signup" action="/sign/up" method="post">
  <div>
    <label for="userid">userid</label>
    <input type="text" name="userid">
  </div>
  <div>
    <label for="pw">pw</label>
    <input type="text" name="pw" />
  </div>
  <div>
    <label for="nickname">nickname</label>
    <input type="text" name="nickname" />
  </div>
  <div>
    <label for="zipcode">zipcode</label>
    <input type="text" name="zipcode" readonly="readonly" />
  </div>
  <div>
    <label for="address">address</label>
    <input type="text" name="address" readonly="readonly" />
  </div>
  <div>
    <label for="extraaddress">extraaddress</label>
    <input type="text" name="extraaddress" />
  </div>
  <div>
    <label for="regdate">regdate</label>
    <input type="text" name="regdate" />
  </div>
  <div>
    <label for="modifydate">modifydate</label>
    <input type="text" name="modifydate" />
  </div>
</form>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
  function execDaumPostcode() {
    new daum.Postcode({
      oncomplete: function (data) {}
    }).open();
  }
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form id="signup" action="/sign/up" method="post">
  <div>
    <label for="userid">userid</label>
    <input type="text" name="userid">
  </div>
  <div>
    <label for="pw">pw</label>
    <input type="text" name="pw" />
  </div>
  <div>
    <label for="nickname">nickname</label>
    <input type="text" name="nickname" />
  </div>
  <div>
    <label for="zipcode">zipcode</label>
    <input type="text" name="zipcode" readonly="readonly" />
  </div>
  <div>
    <label for="address">address</label>
    <input type="text" name="address" readonly="readonly" />
  </div>
  <div>
    <label for="extraaddress">extraaddress</label>
    <input type="text" name="extraaddress" />
  </div>
  <div>
    <label for="regdate">regdate</label>
    <input type="text" name="regdate" />
  </div>
  <div>
    <label for="modifydate">modifydate</label>
    <input type="text" name="modifydate" />
  </div>
</form>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
  function execDaumPostcode() {
    new daum.Postcode({
      oncomplete: function (data) {}
    }).open();
  }
>>>>>>> origin/master
</script>