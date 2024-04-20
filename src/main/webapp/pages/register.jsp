<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/stylesheets/register.css" />

</head>
<body>
    <div class= "wrapper-2">
		<form action="" >
			<h1>Register</h1>
			<div class="input-box">
				<input type="text" placeholder="Username" required> <i
					class='bx bxs-user'></i>
			</div>
			<div class="input">
				<input type="file" placeholder="Profile Picture" required> <i
					class='bx bxs-camera'></i>
			</div>
			<div class="input-box">
				<input type="email" placeholder="Email" required> <i
					class='bx bxs-envelope'></i>
			</div>
			<div class="input-box">
				<input type="password" placeholder="Password" required> <i
					class='bx bxs-lock-alt'></i>
			</div>
			<div class="input-box">
				<input type="password" placeholder="Confirm Password" required> <i
					class='bx bxs-lock-alt'></i>
			</div>
			<div class="input-box">
				<input type="text" placeholder="Phone Number" required> <i
					class='bx bxs-phone'></i>
			</div>
			
			<button type="submit" class="btn">Register</button>
			<div class="register-link">
				<p>
					Already have an account? <a href="../pages/login.jsp">Login</a>
				</p>
			</div>
		</form>		
</body>
</html>