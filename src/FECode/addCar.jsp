<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta charset="UTF-8">
  <title>Insert title here</title>
  <link rel="stylesheet" href="styles.css">
<title>Insert title here</title>
</head>
<body>
<h2>Enter Car Details</h2>
<form action="addCar" method="post">
<input type="number" placeholder="enter carId" name="carId"><br>
<input type="text" placeholder="enter carModel" name="carModel"><br>
<input type="text" placeholder="enter carBrand" name="carBrand"><br>
<input type="text" placeholder="enter carColour" name="carColour"><br>
<input type="number" placeholder="enter carPrice" name="carPrice"><br>
<input type="submit" value="ADD">
</form>
</body>
</html>