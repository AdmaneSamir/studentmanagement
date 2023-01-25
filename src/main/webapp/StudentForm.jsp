<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Form</title>
</head>
<body>
	<form action="./StudentDetails.jsp" method="post">
		<table>
			<tr>
				<td>name</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>email</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>contact</td>
				<td><input type="text" name="contact"></td>
			</tr>
			<tr>
				<td>city</td>
				<td><input type="text" name="city"></td>
			</tr>
		</table>
		<input type="submit" value="Submit">
	</form>
</body>
</html>