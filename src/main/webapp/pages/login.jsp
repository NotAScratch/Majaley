<%@page import="util.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/stylesheets/login.css" />

</head>
<body>
	<div class="wrapper">
		<form action="">
			<h1>Majaley</h1>
			<div class="input-box">
				<input type="text" placeholder="Username" required> <i
					class='bx bxs-user'></i>
			</div>
			<div class="input-box">
				<input type="password" placeholder="Password" required> <i
					class='bx bxs-lock-alt'></i>
			</div>
			<button type="submit" class="btn">Login</button>
			<div class="register-link">
				<p>
					Dont have an account? <a href="../pages/register.jsp">Register</a>
				</p>
			</div>
		</form>
	</div>
	
</body>
</html>