<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validate</title>
</head>
<body>

	<!--  Create Login Bean  -->
	<jsp:useBean id="bean" class="model.Login" />

	<!-- Set Properties -->
	<jsp:setProperty property="*" name="bean" />

	<!-- Create Dao Bean -->
	<jsp:useBean id="dao" class="model.LoginDao" /> 

	<%
	boolean r = dao.validate(bean);
	if (r) {
		session.setAttribute("u", request.getParameter("userName"));
	%>

	<jsp:forward page="Welcome.jsp" />

	<%
	} else {
		out.print("Invalid Credentials");
	%>

	<jsp:include page="Index.jsp" />

	<%
	}
	%>

</body>
</html>