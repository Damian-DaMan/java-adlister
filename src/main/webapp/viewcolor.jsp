
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Color</title>
    <style>
        body {
            background-color: <%= request.getParameter("color") %>;
        }
    </style>
</head>
<body>
<h1>Your Favorite Color</h1>
<p>Your favorite color is: <%= request.getParameter("color") %></p>
</body>
</html>
