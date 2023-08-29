<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Login Page</title>
    <%@ include file="partials/head.jsp"%>
</head>

<body>
<%@include file="partials/navbar.jsp" %>
<h1>Login Form</h1>
<div class="container">
    <h1>Please Log In</h1>
    <h2>Pretty please</h2>
    <form action="/login.jsp" method="POST">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Log In">

        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            if("admin".equals(username) && "password".equals(password)){
                response.sendRedirect("profile.jsp");
            }else if (username != null || password != null) {
                System.out.println("Invalid username or password");
            }
        %>

    </form>
</div>


</body>
</html>