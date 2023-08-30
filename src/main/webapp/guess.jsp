<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Guess</title>
</head>
<body>
<h1>Guess a number from 1 to 3</h1>
<form action="guess" method="post">
  <label for="guess">Your Guess:</label>
  <input type="text" name="guess" id="guess" min="1" max="3">
  <br><br>
  <input type="submit" value="Submit">
</form>
</body>
</html>
