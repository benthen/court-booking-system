<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Court</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="css/book.css">
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
                <h1>Book Court</h1>
                <form action="ReservationRequest" method="POST">
                    <div class="form-group">
                        <label>Matric ID:</label>
                        <input class="idinput" name="id" value="<%= request.getParameter("id") %>">
                    </div>
                    <div class="login-ui">
                        <div class="username">College:</div>
                        <div class="userinput">
                            <select name="college">
                                <option value="none" selected disabled hidden>Select a college</option>
                                <option value="Kolej Empat Belas">Kolej Empat Belas</option>
                                <option value="Kolej Dua Belas">Kolej Dua Belas</option>
                                <option value="Kolej Tiga Belas">Kolej Tiga Belas</option>
                                <option value="Kolej Sebelas">Kolej Sebelas</option>
                                <option value="Kolej Sepuluh">Kolej Sepuluh</option>
                                <option value="Kolej Tujuh Belas">Kolej Tujuh Belas</option>
                                <option value="Kolej Pendeta Za'ba">Kolej Pendeta Za'ba</option>
                                <option value="Kolej Tun Dr Ismail">Kolej Tun Dr Ismail</option>
                                <option value="Kolej Canselor">Kolej Canselor</option>
                                <option value="Kolej Sultan Alaedin Suleiman Shah">Kolej Sultan Alaedin Suleiman Shah</option>
                            </select>
                        </div>
                    </div>
                    <div class="login-ui">
                        <div class="username">Court:</div>
                        <div class="userinput">
                            <select name="court">
                                <option value="none" selected disabled hidden>Select a court</option>
                                <option value="Basketball Court">Basketball court</option>
                                <option value="Football Court">Football court</option>
                                <option value="Badminton Court">Badminton court</option>
                                <option value="Tennis Court">Tennis court</option>
                                <option value="Squash Court">Squash court</option>
                            </select>
                        </div>
                    </div>
                    <div class="login-ui">
                        <div class="userinput">
                            <label for="role">Duration:</label>
                            <select name="duration">
                                <option value="none" selected disabled hidden>Select duration</option>
                                <option value="8-10">8am-10am</option>
                                <option value="10-12">10am-12pm</option>
                                <option value="12-14">12pm-2pm</option>
                                <option value="14-16">2pm-4pm</option>
                                <option value="16-18">4pm-6pm</option>
                                <option value="18-20">6pm-8pm</option>
                                <option value="20-22">8pm-10pm</option>
                            </select>
                        </div>
                    </div>
                    <div class="login-ui">
                        <div class="username">Number of people:</div>
                        <div class="userinput">
                            <input type="number" name="number" min="1" max="20" required>
                        </div>
                    </div>
                    <br>
                    <input type="submit" value="Book Court" class="btn btn-primary">
                </form>
            </div>
        </div>
    </header>
</body>
</html>
