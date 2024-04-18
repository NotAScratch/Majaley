<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Majaley</title>
    <link rel="stylesheet" type="text/css"
	href="<%=contextPath%>/stylesheets/header.css" />
<link rel="stylesheet" type="text/css"
	href="<%=contextPath%>/stylesheets/footer.css" />
<link rel="stylesheet" type="text/css"
	href="<%=contextPath%>/stylesheets/home.css" />
</head>
<body>
	<%@ include file ="pages/header.jsp"  %>
	
	<%@ include file ="pages/footer.jsp" %>

</body>
</html>