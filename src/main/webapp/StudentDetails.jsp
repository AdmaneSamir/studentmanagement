<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String contact = request.getParameter("contact");
String city = request.getParameter("city");
%>
<%!Connection connection;
	PreparedStatement preparedStatement;
	int result;%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student details</title>
</head>
<body>
	<table>
		<tr>
			<td>name</td>
			<td><%=name%></td>
		</tr>
		<tr>
			<td>email</td>
			<td><%=email%></td>
		</tr>
		<tr>
			<td>contact</td>
			<td><%=contact%></td>
		</tr>
		<tr>
			<td>city</td>
			<td><%=city%></td>
		</tr>
	</table>
	<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/weje2?user=root&password=root");
	preparedStatement = connection.prepareStatement("insert into student values(?,?,?,?) ");
	preparedStatement.setString(1, name);
	preparedStatement.setString(2, email);
	preparedStatement.setString(3, contact);
	preparedStatement.setString(4, city);
	result = preparedStatement.executeUpdate();
	%>
	<h3>
		<%=result%>
		row inserted..!!
	</h3>
</body>
</html>