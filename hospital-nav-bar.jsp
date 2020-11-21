<!DOCTYPE html>
<html>
<head>
	<title>Smart city</title>
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="footerr.css">
	<style type="text/css">
	body{
	background-image: url(n-u-_wcQ7AvFJ6U-unsplash.jpg);
	
	background-size: cover;
	background-repeat: no-repeat;
     
	}
	.active,.collapse li ul:hover
	{
		background-color: #a6fa6e;
		border-radius: 3px;
		
	}
	.sub-1{
		display: none;
	}
	i a{
	    color:#FFFFFF;
	}
	.collapse li:hover .sub-1
	{
		display:  inline-block;
		position: absolute;
		margin-top: 4px;
		margin-left:10px;
	}
	*{
		margin: 0;
		padding: 0;
		box-sizing: border-box;
	}
	
	
	
	
	@media screen and (max-height: 450px) {
	  .sidenav {padding-top: 15px;}
	  .sidenav a {font-size: 18px;}
	}
	/* */
	
	.dropbtn {
	  background-color: #4CAF50;
	 border-radius:5px;
	  color: white;
	  padding: 16px;
	  font-size: 16px;
	  border: none;
	  cursor: pointer;
	}
	
	.dropdown {
	  position: relative;
	  display: inline-block;
	}
	
	.dropdown-content {
	  display: none;
	   border-radius:5px;
	  position: absolute;
	  min-width: 300px;
	  background-color: #f9f9f9;
	  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	  margin-left: -180px;
	}
	
	.dropdown-content a {
	  color: black;
	  padding: 12px 16px;
	  text-decoration: none;
	  display: block;
	   border-radius:5px;
	}
	
	.dropdown-content a:hover {background-color: #f1f1f1}
	
	.dropdown:hover .dropdown-content {
	  display: block;
	  
	}
	
	.dropdown:hover .dropbtn {
	  background-color: #3e8e41;
	  
	}
	</style>
</head>
<div class="container">
<nav class="navbar fixed-top navbar-expand-lg navbar-blue scrolls">
  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item">
        <a class="nav-link active" href="smart.html" style="margin-right: 10px;font-size: 20px; color:#FFFFFF;"><b>Smart City</b></a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="#" style="color:#FFFFFF;"><b>Hospitals</b></a>
         <div class="sub-1">
         	<ul>
         		<i><a href="#" style="text-decoration:none;">Sparsh Hospitalv</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Apollo Hospitals</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Aditya Care Hospital</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Janani Hospital</a></i><br>
         		<i><a href="#" style="text-decoration:none;">MAA Shakti Hospital</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Vivekanand Hospital</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Others</a></i>
         	
         	</ul>
         	
         </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color:#FFFFFF;"><b>Institute</b></a>
         <div class="sub-1">
         	<ul>
         		<i><a href="#" style="text-decoration:none;">Utkal University</a></i><br>
         		<i><a href="#" style="text-decoration:none;">International Institute of Information Technology</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Rama Devi Women's University</a></i><br>
                 <i><a href="#" style="text-decoration:none;">Birla Global University, Bhubaneswar</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Kalinga Institute of Dental Sciences</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Deba Ray College</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Others</a></i>
         
         	</ul>
         	
         </div>
      </li>
      
    </ul>
    <form class="form-inline my-2 my-lg-0">
  <div class="dropdown">
  <button class="dropbtn"><%=((String)session.getAttribute("logname")).toUpperCase()%></button>
  <div class="dropdown-content">
  <a href="#">Profile</a>
  <a href="#">Setting</a>
  <a href="hospital-signout.jsp">Sign out</a>  </div>
</div> 
    </form>
</nav>
</div>



   <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script type="text/javascript" src="admin-nav.js"></script>
</body>
</html>