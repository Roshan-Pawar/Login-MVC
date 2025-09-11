<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" type="text/css" href="Style.css">
</head>
<body>

	<div class="login-container">
        <h2>Login</h2>
        <form action="Validate.jsp" method="post">
            <input type="text" name="userName" placeholder="Username" required> <br>
            <input type="password" name="password" placeholder="Password" required> <br>

            <input type="submit" value="Login" class="btn">
        </form>

        <a href="SignUp.jsp" class="signup-link">New User? Sign Up</a>
    </div>
	

</body>
</html>