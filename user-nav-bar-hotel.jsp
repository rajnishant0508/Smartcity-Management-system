<%@ include file="dbcom.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<title>Smart city</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<style type="text/css">
	body{
	background-image:url(images/resturent.jpg);
	
	background-size: cover;
	width:100%;
	height:100%;
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
	  padding: 10px;
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
        <a class="nav-link" href="#" style="color:#FFFFFF;"><b>Temples</b>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color:#FFFFFF;"><b>Hotels</b></a>
         <div class="sub-1">
         	<ul>
         		<i><a href="#" style="text-decoration:none;">MAYFAIR Lagoon</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Hotel Pushpak</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Ginger Bhubaneshwar</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Swosti Premium Hotel</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Fortune Park Sishmo</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Pal Heights</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Others</a></i>
         
         	</ul>
         	
         </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color:#FFFFFF;"><b>Resturent</b></a>
         <div class="sub-1">
         	<ul>
         		<i><a href="#" style="text-decoration:none;">AB's-Absolute Barbecues</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Chili's Grill & Bar</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Moody Blues</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Brick & Clay</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Biggies Burger</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Others</a></i>
         
         	</ul>
         	
         </div>
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
      <li class="nav-item">
        <a class="nav-link" href="#" style="color:#FFFFFF;"><b>Places</b></a>
         <div class="sub-1">
         	<ul>
         		<i><a href="#" style="text-decoration:none;">Forum Mart</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Galaxy Mall</a></i><br>
         		<i><a href="#" style="text-decoration:none;">The World Mall</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Maruti Mall</a></i><br>
         		<i><a href="#" style="text-decoration:none;">OSRTC Mall  </a></i><br>
         		<i><a href="#" style="text-decoration:none;">Symphony Mall </a></i><br>
         		<i><a href="#" style="text-decoration:none;">D.N. Regalia Mall</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Esplanade 1</a></i><br>
         		<i><a href="#" style="text-decoration:none;">Others</a></i>
         	
         	</ul>
         	
         </div>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
	    <form class="form-inline my-2 my-lg-0">  
		  <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
		  <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><b>Go!</b></button>
		</form>
	  <div class="dropdown" style="margin-left:20px;">
	  <button class="dropbtn" style="height:40px; padding:0px; width:100px;"><%=((String)session.getAttribute("logname")).toUpperCase()%></button>
	  <div class="dropdown-content">
	  <a href="user-profile.jsp">Profile</a>
	 <button type="text" class="btn" data-toggle="modal" data-target="#exampleModal">
		  Booking History
	 </button> 
	 <a href="demo.jsp">booking</a>
	  <a href="user-signout.jsp">Sign out</a>  
	  </div>
	  </div> 
	</form>
	</nav>
	</div> 






<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Booking History</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <%
		  try{  
		    String iid=(String)session.getAttribute("id");
			//out.print(iid);
			ResultSet rs=st.executeQuery("Select * from booking1 b, room r, hotel h where b.uid='"+iid+"' and (b.status='expired' or b.status='approved') and b.rid=r.rid and b.hid=h.hid");
	    %>		
			<table class="table table-sm">
			  <thead>
				<tr>
				  <th scope="col">Hotel Name</th>
				  <th scope="col">Date From</th>
				  <th scope="col">Date To</th>
				  <th scope="col">DOB</th>
				  <th scope="col">No's room</th>
				  <th scope="col">Room Type</th>
				  <th scope="col">Amount</th>
				</tr>
			  </thead>
			  <tbody>
			  <%if(rs.next()){%>
				<tr>
				  <td><%=rs.getString(23)%></td>
				  <td><%=rs.getString(8)%></td>
				  <td><%=rs.getString(9)%></td>
				  <td><%=rs.getString(10)%></td>
				  <td><%=rs.getString(7)%></td>
				  <td><%=rs.getString(16)%></td>
				  <td><%=rs.getString(11)%></td>
				</tr>
				<%}%>
			  </tbody>
			</table>
		
		<%
		 con.close();
		 }catch(Exception e){   out.print(e);    }
		%>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>






<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>