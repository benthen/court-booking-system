<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.ben.MySQL" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body>
<%-- Check for error parameter and display appropriate alert message --%>
    <%
        String error = request.getParameter("error");
        if (error != null && error.equals("required")) {
    %>
            <script>alert("User ID and password are required.");</script>
    <%
        } else if (error != null && error.equals("incorrect")) {
    %>
            <script>alert("Incorrect password or username or role. Please try again.");</script>
    <%
        }
    %>
	<div class="container">
		<div class="login-container">
			<form action="UserLogin" method="POST">
				<div class="login-field">
					<div class="label">User ID:</div>
					<div class="input">
						<input type="text" name="userid" placeholder="Enter your username">
					</div>
				</div>
				<div class="login-field">
					<div class="label">Choose your role:</div>
					<div class="input">
						<select name="role" id="role">
							<option value="none" selected disabled hidden>Select a role</option>
							<option value="student">Student</option>
							<option value="lecturer">Lecturer</option>
							<option value="staff">Staff</option>
						</select>
					</div>
				</div>
				<div class="login-field">
					<div class="label">Password:</div>
					<div class="input">
						<input type="password" name="password" placeholder="Enter your password">
					</div>
				</div>
				<div class="button">
					<input type="submit" value="LOGIN">
				</div>
			</form>
			<div class="register-link">
				<a href="Register.jsp" class="register-button">Don't have an account? Register here</a>
			</div>
		</div>
	</div>
</body>
</html>
