<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validate</title>
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
	boolean r = dao.validate(bean);
	if (r) {
		session.setAttribute("u", request.getParameter("userName"));
	%>

	<jsp:forward page="Welcome.jsp" />

	<%
	} else {
	%>
	<div class="message error">Invalid Credentials</div>
	<jsp:include page="Index.jsp" />

	<%
	}
	%>

</body>
</html>