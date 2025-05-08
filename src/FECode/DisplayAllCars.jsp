<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Insert title here</title>
  <link rel="stylesheet" href="styles.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	ResultSet rs = (ResultSet) request.getAttribute("carList");
	%>
	<table border="2">
		<tr>
			<th>carId</th>
			<th>carModel</th>
			<th>carBrand</th>
			<th>carColour</th>
			<th>carPrice</th>
			<th>update</th>
			<th>delete</th>
		</tr>
		<%
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getInt(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getInt(5)%></td>
			<td><a href="findCarById?carId=<%=rs.getInt(1)%>">UPDATE</a></td>
			<td><a href="deleteCarById?carId=<%=rs.getInt(1)%>">DELETE</a></td>
		</tr>
		<%}%>

	</table>
	<h3><a href="index.jsp">Back to home page</a></h3>

</body>
</html>