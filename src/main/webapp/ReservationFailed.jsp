<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Reservation Failed</title>
    <link rel="stylesheet" href="css/reservationfailed.css">
</head>
<body>
    <h1>Reservation Failed</h1>
    <div class="content">
        <p>Unfortunately, your reservation could not be completed. Please try again.</p>
        <a href="Book.jsp?id=<%= request.getParameter("id")%>" class="link">Reserve Again</a>
    </div>
</body>
</html>
