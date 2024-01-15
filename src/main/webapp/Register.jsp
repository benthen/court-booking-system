<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
<link rel="stylesheet" href="css/register.css">
</head>
<body>
<div class="container">
        <div class="register-container">
            <%-- Check for error parameter and display appropriate error message --%>
            <% String error = request.getParameter("error"); %>
            <% if (error != null) { %>
                <div class="error">
                    <% if (error.equals("required")) { %>
                        <script>alert("User ID, name, email, password, and confirm password are required.");</script>
                    <% } else if (error.equals("email")) { %>
                    <script>alert("Please enter a valid email address.");</script>
                    <% } else if (error.equals("passwordMismatch")) { %>
                    <script>alert("Password and confirm password do not match.");</script>
                    <% } else if (error.equals("accountRedundant")) { %>
                    <script>alert("The account is already registered!");</script>
                    <% } %>
                </div>
            <% } %>
	<form action="UserRequest" method="POST">
		<div class="register-form">
			<div class="input-group">
				<div class="label">User ID:</div>
				<div class="user-input">
					<input type="text" name="userid" placeholder="Enter your user ID">
				</div>
			</div>
			<div class="input-group">
				<div class="label">Name:</div>
				<div class="user-input">
					<input type="text" name="name" placeholder="Enter your name">
				</div>
			</div>
			<div class="input-group">
				<div class="label">Choose your role:</div>
				<div class="user-input">
					<select name="role" id="role">
						<option value="none" selected disabled hidden>Select a role</option>
						<option value="student">Student</option>
						<option value="lecturer">Lecturer</option>
						<option value="staff">Staff</option>
					</select>
				</div>
			</div>
			<div class="input-group">
				<div class="label">Email:</div>
				<div class="user-input">
					<input type="text" name="email" placeholder="Enter your email">
				</div>
			</div>
			<div class="input-group">
				<div class="label">Password:</div>
				<div class="user-input">
					<input type="password" name="password" placeholder="Enter your password">
				</div>
			</div>
			<div class="input-group">
				<div class="label">Confirm Password:</div>
				<div class="user-input">
					<input type="password" name="confirmPassword" placeholder="Confirm your password">
				</div>
			</div>
			<div class="register-button">
				<input type="submit" value="REGISTER">
			</div>
			<div class="login-link">
				<a href="Login.jsp" class="login-button">Already have an account? Login here</a>
			</div>
		</div>
	</form>
	</div>
    </div>
</body>
</html>
