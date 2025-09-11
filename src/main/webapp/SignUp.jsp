<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<link rel="stylesheet" type="text/css" href="Style.css">
</head>
<body>

	<div class="login-container">
        <h2>Login</h2>
        <form action="CreateUser.jsp" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="userName" required> <br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required> <br>

            <input type="submit" value="Login" class="btn">
        </form>
    </div>

</body>
</html>