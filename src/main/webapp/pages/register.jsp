<%@page import="util.StringUtils"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register- Majaley</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheets/register.css">
</head>
<body>
	<div class="wrapper">
		<h1>Register</h1>
		<form action="<%=contextPath%>/registerUser" method="post" enctype="multipart/form-data">
			<div class="row">
				<div class="column">
					<div class="input-box">
						<input type="text" placeholder="Username" required> <i
							class='bx bxs-user'></i>
					</div>
				</div>
				<div class="column">
					<div class="input-box">
						<input type="email" placeholder="Email" required> <i
							class='bx bxs-envelope'></i>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="column">
					<div class="input-box">
						<input type="text" placeholder="Phone Number" required> <i
							class='bx bxs-phone'></i>
					</div>
				</div>
				<div class="column">
					<div class="input-box">
						<input type="text" placeholder="Profile Picture" required>
						<i class='bx bxs-camera'></i>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="column">
					<div class="input-box">
						<input type="password" placeholder="Password" required> <i
							class='bx bxs-lock-alt'></i>
					</div>
				</div>
				<div class="column">
					<div class="input-box">
						<input type="password" placeholder="Confirm Password" required>
						<i class='bx bxs-lock-alt'></i>
					</div>
				</div>
			</div>
			<div class="radio-btn">
				Select Gender: <label for="male">Male</label> <input type="radio"
					id="male" name="gender" required> <label for="female">Female</label>
				<input type="radio" id="female" name="gender" required>
			</div>
			<button type="submit" class="btn">Register</button>
			<div class="login-link">
				<p>
					Already have an account? <a href="../pages/login.jsp">Login</a>
				</p>
			</div>
		</form>
		<%
		String errMsg = (String) request.getAttribute(StringUtils.MESSAGE_ERROR);
		String successMsg = (String) request.getAttribute(StringUtils.MESSAGE_SUCCESS);

		if (errMsg != null) {
			// print
		%>
		<h4 class="error-msg">
			<%
			out.println(errMsg);
			%>
		</h4>
		<%
		}

		if (successMsg != null) {
		// print
		%>
		<h4 class="success-msg">
			<%
			out.println(successMsg);
			%>
		</h4>
		<%
		}
		%>
	</div>
</body>
</html>
