<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create User</title>
<link rel="stylesheet" type="text/css" href="Style.css">
</head>
<body>

	<!--  Create Login Bean  -->
	<jsp:useBean id="bean" class="model.Login" />

	<!-- Set Properties -->
	<jsp:setProperty property="*" name="bean" />

	<!-- Create dao Bean -->
	<jsp:useBean id="dao" class="model.LoginDao" />

	<%
	boolean r = dao.createUser(bean);
	if (r) {
	%>
	<div class="message success">✅ Username and Password created successfully...</div>
	<jsp:include page="Index.jsp" />
	<%
	} else {
	%>
	<div class="message error">⚠️ User already exists...</div>
	<jsp:include page="SignUp.jsp" />
	<% } %>


</body>
</html>