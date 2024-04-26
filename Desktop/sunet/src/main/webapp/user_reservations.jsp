<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Sunset Paradise Hotel</title>
    <style>
    @import url('https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&subset=cyrillic,cyrillic-ext,devanagari,greek,greek-ext,latin-ext,vietnamese');

body{
	background: #706233;
	font-family: 'Poppins', sans-serif;
}
label{
color: white;
}
h1{
color:white;
  display: flex;
    align-items: center;
        justify-content: center;
}
  
.reservation-card {
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            overflow: hidden;
            background-color: #f8f9fa;
        }
        .card-body {
            padding: 20px;
        }


.buttoncolor{
 background-color: #E71C;
 
}

.sectionFooter{

    justify-content: space-between;
    column-count: 2;
    padding: 2% 20%;
    background:#E5DDC5;
   
    }


    .footer2 {
    margin-left : 100px;

    }

    p{
        margin : 10px;

    }


    .icons{
       display: flex;
       flex-direction: row;
       margin-left: 100px;
       margin-top: 30px;
    }
    
        .nav-item {
        transition: border 0.3s ease, background-color 0.3s ease;
    }

    .nav-item:hover {
        border-bottom: 2px solid #4C4B16;
        background-color: #E71C; 
        border-radius : 10px;
    }
    
    
    </style>
    <title>Your Reservations</title>
</head>
<body>
<nav style="background:#E5DDC5;" class="navbar navbar-expand-lg navbar-light text-light fixed-top">
    <div class="d-flex justify-content-between align-items-center w-100">
        <div class="logo">
            <img src="el1.png" alt="Company Logo" width="100px">
            <h1 style="color:#4C4B16;font-size:40px;" class="navbar-brand">Sunset Paradise Hotel</h1>
        </div>

        <div style="font-size: 20px;" class="d-flex justify-content-end" class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="RoomServlet">Rooms</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ReservationServlet">Reservations</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="add_reservation.jsp">Add Reservation</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="search_results.jsp">Search</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<br><br><br><br><br><br>
<div  class="container mt-5">
    <h1>Your Reservations</h1>
    <div  class="row">
   
    <c:if test="${reservation.roomId.equals(roomId)}">
    <p> room indisponible</p>
    </c:if>
    
        <c:forEach var="reservation" items="${reservations}">
            <div class="col-md-4">
                <div class="card reservation-card">
                    <div class="card-body border-yellow">
                        <h5 class="card-title">Reservation ID: ${reservation.id}</h5>
                        <p class="card-text">User ID: ${reservation.userId}</p>
                        <p class="card-text">Room ID: ${reservation.roomId}</p>
                        <p class="card-text">Start Date: ${reservation.startDate}</p>
                        <p class="card-text">End Date: ${reservation.endDate}</p>
                        <a href="CancelReservationServlet?reservationId=${reservation.id}" class="btn btn-danger buttoncolor">Cancel</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>


<footer class="sectionFooter">
    <div class="footer1" >
        <h2>About Us :</h2>
        <p><a href="#"> Our Teams</a></p>
        <p> <a href="#"> What’s new</a></p>
        <p> <a href="#">Terms of use</a></p>
    </div>
    <div class="footer2">
        <h2>Contact :</h2>
        <p><a href="#">Help centre</a></p>

    </div>
    <div class="icons">
            <a href="#"><img src="email.png" width="35" height="35"></a>
            <a href="#"><img src="twitter (1).png" width="35" height="35"></a>
            <a href="#"><img src="twitter (2).png" width="35" height="35"></a>
        </div>


</footer> 
<!-- Bootstrap JS and jQuery (optional) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-SGxsmfePdN7DlFK3RS4r1PirMHJC3+al8cZXrMUB2oWrB3R5jMv1kKK4Jb0Ppi6h" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shCzFVn4AqvFjV+6g2woM0uPPtk+b9E7xS3tF" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
