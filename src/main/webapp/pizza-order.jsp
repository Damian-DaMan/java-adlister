
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Pizza Order Form</title>
</head>
<body>
<h1>Pizza Order Form</h1>
<form action="pizza-order" method="POST">
  <label for="crust">Crust Type:</label>
  <select name="crust" id="crust">
    <option value="thin">Thin Crust</option>
    <option value="thick">Thick Crust</option>
    <option value="stuffed">Stuffed Crust</option>
  </select>
  <br><br>

  <label for="sauce">Sauce Type:</label>
  <select name="sauce" id="sauce">
    <option value="tomato">Tomato Sauce</option>
    <option value="bbq">BBQ Sauce</option>
    <option value="garlic">Garlic Sauce</option>
  </select>
  <br><br>

  <label for="size">Size Type:</label>
  <select name="size" id="size">
    <option value="small">Small</option>
    <option value="medium">Medium</option>
    <option value="large">Large</option>
  </select>
  <br><br>

  <label for="toppings">Toppings:</label>
  <input type="checkbox" name="toppings" value="pepperoni"> Pepperoni
  <input type="checkbox" name="toppings" value="mushrooms"> Mushrooms
  <input type="checkbox" name="toppings" value="onions"> Onions
  <br><br>

  <label for="address">Delivery Address:</label>
  <input type="text" name="address" id="address">
  <br><br>

  <input type="submit" value="Place Order">
</form>
</body>
</html>