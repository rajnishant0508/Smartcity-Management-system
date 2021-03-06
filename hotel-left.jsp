<!DOCTYPE html>
<html>
<head>
	<title>Smart city</title>
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<style type="text/css">
	
	*{
		margin: 0;
		padding: 0;
		box-sizing: border-box;
	}
	
	/*sidenav*/
	.sidenav {
	  height:auto;
	  
	  margin-top: 60px;
	  position: absolute;
	  
	  top: 0;
	  left: 0;
	  background-color: transparent;
	  overflow-x: hidden;
	  padding-top: 20px;
	  border-top: solid 2px #c4ff96;
	 }
	
	.sidenav a {
	  padding: 6px 6px 6px 32px;
	  text-decoration: none;
	  font-size: 20px;
	  color:#FF3399;
	  display: block;
	}
	
	.sidenav a:hover {
	  color:#FF33CC;
	  text-decoration:none;
	}
	
	.main {
	  margin-left: 200px; /* Same as the width of the sidenav */
	}
	
	@media screen and (max-height: 450px) {
	  .sidenav {padding-top: 15px;}
	  .sidenav a {font-size: 18px;}
	}
	/* */
	
	</style>
</head>
<body>

<!--Sidenav-->
<div class="sidenav" style="font-size:14px;">
  <p style="font-size:26px; margin-left:32px; color:#00CCFF;">MEMBER MENU</p><br>
  <a href="hotelhouse.jsp">Home Page</a>
  <a href="hotel-profile.jsp">Profile</a>
  <a href="hotel-appr-boking.jsp">Approv Booking Status</a>
  <a href="hotel-view-boking.jsp">View Current Booking</a>
  <a href="hotel-chkin.jsp">Today's CheckIn</a>
  <a href="hotel-chkout.jsp">Today's CheckOut</a>
  <a href="hotel-avail.jsp">Rooms Available</a>
  <a href="hotel-booking-history.jsp">View Booking History</a>
  <a href="hotel-fb.jsp">Write Feedback</a>
  <a href="hotel-view-fb.jsp">View Previous Feedback</a>
  <a href="hotel-chng-pwd.jsp">Change Password</a>
</div>

   
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    
</body>
</html>