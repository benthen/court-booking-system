<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.ben.MySQL"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Reservation</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	<link rel="stylesheet" href="css/viewreservation.css">
</head>
<body>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
        integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
        crossorigin="anonymous"></script>
    <script src="main.js"></script>

    <nav class="navbar navbar-expand-md navbar-dark">
        <a href="https://www.upm.edu.my/" class="navbar-brand">Court Booking System</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="main-navigation">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="Home.jsp?id=<%= request.getParameter("id") %>">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Login.jsp">Log Out</a>
                </li>
            </ul>
        </div>
    </nav>
    <header class="page-header header container-fluid">
        <div class="overlay"></div>
        <div class="description">
            <div class="container">
                <h1>Reservation Table</h1>

                <%-- Establish a connection to the database --%>
                <%@ page import="java.sql.*" %>
                <%@ page import="javax.sql.*" %>
                <%@ page import="javax.naming.*" %>

                <%-- Retrieve data from the database --%>
                <%@ page import="com.ben.MySQL"%>
                <%-- Assuming you have a class named YourDataAccessClass that retrieves data --%>
                <%
                    Connection connection = null;
                    PreparedStatement statement = null;
                    ResultSet resultSet = null;
                    try {
                        // Create an instance of your data access class
                        MySQL mysql = MySQL.getInstance();
                        connection = mysql.getSQLConnection();

                        // Prepare the SQL statement
                        String id = request.getParameter("id");
                        String query = "SELECT * FROM reservation where fk1_user_id = " + id;
                        statement = connection.prepareStatement(query);

                        // Execute the query and retrieve the data
                        resultSet = statement.executeQuery();

                        // Generate HTML table dynamically using the retrieved data
                        out.println("<table>");
                        out.println("<tr>");
                        out.println("<th>College Name</th>");
                        out.println("<th>Court Name</th>");
                        out.println("<th>Duration</th>");
                        out.println("<th>Date</th>");
                        // Add more table headers for additional columns if needed
                        out.println("</tr>");

                        while (resultSet.next()) {
                            out.println("<tr>");
                            out.println("<td>" + resultSet.getString("college_name") + "</td>");
                            out.println("<td>" + resultSet.getString("court_name") + "</td>");
                            out.println("<td>" + resultSet.getString("period") + "</td>");
                            out.println("<td>" + resultSet.getDate("date") + "</td>");
                            // Add more table cells for additional columns if needed
                            out.println("</tr>");
                        }

                        out.println("</table>");
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        // Close the resources
                        if (resultSet != null) {
                            try {
                                resultSet.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                        if (statement != null) {
                            try {
                                statement.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                        if (connection != null) {
                            try {
                                connection.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                %>
            </div>
        </div>
    </header>
</body>
</html>
