<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create User</title>
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
		out.print("Username and Password created Sucessfully...");
	%>
	<jsp:include page="Index.jsp" />
	<%
	} else {
		out.print("User already exists...");
	%>
	<jsp:include page="SignUp.jsp" />
	<% } %>


</body>
</html>