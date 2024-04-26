<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sunset Paradise Hotel</title>


 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style> 

@import url('https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&subset=cyrillic,cyrillic-ext,devanagari,greek,greek-ext,latin-ext,vietnamese');

body{
	background: #706233;
	font-family: 'Poppins', sans-serif;
}
h1{
color:white;
  display: flex;
    align-items: center;
        justify-content: center;
}

.ff{
  display: flex;
    align-items: right;
        justify-content: right;
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
        border-radius:10px;
    }
    </style>
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

	<div class=ff>
    <form action="SearchRoomServlet" method="GET"   class="d-flex align-items-center">
        
         <input  type="text" id="roomType" name="roomType" placeholder="Type de Chambre" required class="form-control mx-2">
         <input type="submit" value="Search" class="btn buttoncolor">
    </form>
    </div>
    <c:if test="${not empty rooms}">
    </c:if>	
<div class="container">

    <h1>ROOMS LIST</h1>
    
    <div class="row">
        <c:forEach var="room" items="${rooms}">
            <div class="col-md-4 mb-3">
                <div class="card">
                    <div class="card-body  border-yellow">
                     <img src="${room.roomPic}" class="card-img-top" ">
                        <h5 class="d-flex justify-content-center" class="card-title">Room ${room.roomId}</h5>
                        <div style="background-color:#E5DDC5;padding:5px 5px;border-radius:10px;">
                        <p class="card-text">Type: ${room.roomType}</p>
                        <p class="card-text">Price: ${room.price}</p>
                        <p class="card-text">Equipments: ${room.equipments}</p>
                        <p class="card-text">Availability: ${room.availability ? 'Oui' : 'Non'}</p>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>




<footer class="sectionFooter">
    <div class="footer1" >
        <h2 >About Us :</h2>
        <p><a href="#"> Our Teams</a></p>
        <p> <a href="#"> What’s new</a></p>
        <p> <a href="#">Terms of use</a></p>
    </div>
    <div class="footer2">
        <h2>Contact :</h2>
        <p><a href="#">Help center</a></p>

    </div>
    <div class="icons">
            <a href="#"><img src="email.png" width="35" height="35"></a>
            <a href="#"><img src="twitter (1).png" width="35" height="35"></a>
            <a href="#"><img src="twitter (2).png" width="35" height="35"></a>
        </div>


</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</body>
</html>