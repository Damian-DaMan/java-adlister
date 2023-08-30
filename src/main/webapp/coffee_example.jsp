<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%! int customers = 0; %>
<% customers++; %>

<html>
<head>
    <title>Coffee JSP</title>
</head>
<body>
<%@include file="partials/navbar.jsp"%>
<h1>We have had <%= customers %> customers visit out shop!</h1>





</body>
</html>