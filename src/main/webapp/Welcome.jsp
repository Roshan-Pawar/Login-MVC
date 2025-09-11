<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome</title>
<link rel="stylesheet" type="text/css" href="Style.css">
</head>
<body>

    <div class="welcome-container">
        <h1 class="welcome-message">Welcome, ${sessionScope.u} 👋</h1>
        <a href="Logout.jsp" class="logout-btn">Logout</a>
    </div>

</body>

</html>