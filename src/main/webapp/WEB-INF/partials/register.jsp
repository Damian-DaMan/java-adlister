
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="partials/head.jsp">
      <jsp:param name="title" value="Register" />
    </jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<h1> Register as a User</h1>

<div class="container">
  <h2>Please fill in your information.</h2>
  <form action="/register" method="post">
    <div class="form-group">
      <label for="username">Username</label>

    </div>
  </form>
</div>

</body>
</html>
