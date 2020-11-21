<%@ include file="dbcom.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" type="text/css" href="footerr.css">
	<link rel="stylesheet" type="text/css" href="sidenav.css">
	<link rel="stylesheet" type="text/css" href="nav.js">
	
	<style type="text/css">
	.header{
	  
	  background-image:url(hal-gatewood-THLqyxkdtfE-unsplash.jpg);
	  height:650px;;
	  width:100%;
	  background-repeat: no-repeat;
	  background-size: cover;
	
	}
	
	
	</style>
	
	<style type="text/css">
<!--
.style1 {
	font-size: large;
	font-weight: bold;
	color: #000000;
}
-->
</style>

<link rel="stylesheet" type="text/css" href="tabcontent.css" />
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
  
<script type="text/javascript" src="tabcontent.js"></script>
 <style> 
  .myButton {
	-moz-box-shadow: 0px 1px 0px 0px #fff6af;
	-webkit-box-shadow: 0px 1px 0px 0px #fff6af;
	box-shadow: 0px 1px 0px 0px #fff6af;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffec64), color-stop(1, #ffab23));
	background:-moz-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:-webkit-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:-o-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:-ms-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:linear-gradient(to bottom, #ffec64 5%, #ffab23 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffec64', endColorstr='#ffab23',GradientType=0);
	background-color:#ffec64;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #ffaa22;
	display:inline-block;
	cursor:pointer;
	color:#333333;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:7px 44px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffee66;
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffab23), color-stop(1, #ffec64));
	background:-moz-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-webkit-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-o-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-ms-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:linear-gradient(to bottom, #ffab23 5%, #ffec64 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffab23', endColorstr='#ffec64',GradientType=0);
	background-color:#ffab23;
}
.myButton:active {
	position:relative;
	top:1px;
}
     
      #map {
        width: 920px;
        height: 600px;
      }
.style4 {font-size: 12px}
 </style>

<script type="text/javascript" src='js/jquery-1.10.0.min.js'></script>
	
	
</head>
<body>

<!-- nav-bar -->

<div class="nav">
  <jsp:include page="user-ambulance-nav-bar.jsp"/>
</div>



<!-- nav-bar-end-->



<div class="header">
  <div class="container" style="max-width:1000px;">
  <div class="row">
   <div class="col-6" style="margin-top:250px;">
     <div class="row">
	   <div class="col" style="color:#FFFFFF; font-size:60px;"><b>25+</b><br />
	     <b style="font-size:25px;">Provider</b>
	   </div>
	   <div class="col" style="color:#FFFFFF; font-size:60px;"><b>100+</b><br />
	      <b style="font-size:25px;">Ambulance</b>
	   </div>
	   <p style="color:#FFFFFF; font-size:35px; margin-top:20px;">One Touch Ambulance Service</p> 
	 </div>
   </div>
   <div class="col-6" style="margin-top:250px;">
     <img src="Ambulance-illustration.jpg"/>   
   </div>
  </div>
  </div>
</div>






<div>
<jsp:include page="user-left.jsp" />
</div>







<div class="container">
<p style="color:#FF0066; font-size:35px; text-align:center; margin-top:20px;">ABOUT</p>
<div class="row">
    <div class="col-6 col-md-4" style="text-align:center;">
	  <img src="images/aaa.png" />
	  <p style="color:#FF0066; font-size:20px; margin-top:20px;">Just Dial in Emergency</p>
	</div>
    <div class="col-6 col-md-4" style="text-align:center;">
	  <img src="images/bbb.png" />
	  <p style="color:#FF0066; font-size:20px; margin-top:20px;">Nearest to You</p>
	</div>
    <div class="col-6 col-md-4" style="text-align:center;">
	  <img src="images/ddd.png" />
	  <p style="color:#FF0066; font-size:20px; margin-top:20px;">Always on Time</p>
	</div>
</div>

<div class="row" style="margin-top:100px;">
    <div class="col-6 col-md-4" style="text-align:center;">
	  <img src="images/eee.png" />
	  <p style="color:#FF0066; font-size:20px; margin-top:20px;">Nearest Hospital</p>
	</div>
    <div class="col-6 col-md-4" style="text-align:center;">
	  <img src="images/cccc.png" />
	  <p style="color:#FF0066; font-size:20px; margin-top:20px;">Notifing Your Loving One</p>
	</div>
    <div class="col-6 col-md-4" style="text-align:center;">
	  <img src="images/vvvv.png" />
	  <p style="color:#FF0066; font-size:20px; margin-top:20px;">Be Happy as Always</p>
	</div>
</div>
</div>


 
 
 
 <div class="header">
  <div class="container" style="max-width:1000px;">
   <p style="color:#FFFF00; text-align:center; font-size:40px;">Welcome <%=((String)session.getAttribute("logname")).toUpperCase()%> to Hospital Information</p>
   <p style="font-size: 26px; color:#FFFFFF; text-align: center;">Helping to heal our best asset…our children.</p>
  <div class="row">
   <div class="col-8" style="margin-top:200px;">
	   <P style="color:#FFFFFF; font-size:50px;">Bhubneswar The Smart City</P>
	   <p style="font-size:20px;"><b>User friendly way to book Ambulance and Mortality Van on one touch</b></p>
	   <button type="button" class="btn btn-secondary" style="width:200px; height:50px; font-size:20px;">Book Ambulance</   button>
   </div>
   <div class="col-4" style="margin-top:220px;">
     <img src="Ambulance-illustration.jpg"/>   
   </div>
  </div>
 </div>
</div>





<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/hosp1.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
      </div>
    </div>
    <div class="carousel-item">
      <img src="images/hosp2.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>







<div class="container3" style="text-align: center; font-size: 25px; color: green;">
		     	<b><u><i>A Healthy Outside Start From The Inside </i></u></b>
</div>






<div class="container" style="margin-top:30px;">
<form action="user-ambulance1.jsp">
  <div class="row">
    <div class="col-sm">
      <b style="font-size:20px; margin-left:100px;">Choose Vehicle:</b>
    </div>
	<%
		try{
	
	 ResultSet rs=st.executeQuery("select a.* from vehicle a,login b where a.vid=b.id and b.status='Y' and a.type='ambulance'");
	%>
    <div class="col-sm">
     <select class="btn btn-secondary dropdown-toggle" name="em" style="margin-left:50px;">
		<%while(rs.next()){%>
		<option value="<%=rs.getString(1)%>"><%=rs.getString(3)%></option>
		<%}%>
	</select>
    </div>
    <div class="col-sm">
      <input type="submit" value="Book Ambulance" class="btn btn-info"/>
    </div>
	<%
	  
	}catch(Exception e){  out.print(e); }
	%>
  </div>
</form>
</div>








<div class="table-responsive-xl container" style="margin-top:30px;">
<form>
 <%
  try{
	ResultSet rs=st.executeQuery("select a.* from vehicle a,login b where a.vid=b.id and b.status='Y' and a.type='ambulance'");
 %>
 	
  <table class="table table-hover table-dark">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Plot No</th>
      <th scope="col">Area</th>
      <th scope="col">City</th>
	  <th scope="col">Pincode</th>
      <th scope="col">District</th>
      <th scope="col">State</th>
      <th scope="col">Phone</th>
	  <th scope="col">Mail</th>
      <th scope="col">Timing</th>
      <th scope="col">Distance</th>
    </tr>
  </thead>
  <tbody>
   <% 
	 int i=0;
   	 while(rs.next()){ 
   %>
    <tr>
	  <input type="hidden" name="lati" id='lati_<%=i%>' value="<%=rs.getString("lati")%>"/>
	  <input type="hidden" name="longi"  id='longi_<%=i%>' value="<%=rs.getString("longi")%>"/>
      <td><%=rs.getString(2)%></td>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
	  <td><%=rs.getString(5)%></td>
      <td><%=rs.getString(6)%></td>
      <td><%=rs.getString(7)%></td>
	  <td><%=rs.getString(8)%></td>
      <td><%=rs.getString(9)%></td>
      <td><%=rs.getString(10)%></td>   
	  <td><%=rs.getString(11)%></td>
	  
    </tr>
	<%
	  i++;
	 }
	%>
  </tbody>
 </table>
 <%
   con.close();
   }catch(Exception e){   out.print(e);   } 
 %>
</form>
</div>







<div class="container">
  <div class="row">
    <div class="col">
	   
	   
	   
	     <div id="map">
				<script>
			
				 var currentPositionLat=20.2860587;
				 var currentPositionLng=85.8345398;
			
			
				var latis = document.latilongiform.lati;
				var longis = document.latilongiform.longi;
				
				  function initMap() {
					var baseLatLong = {lat: 20.2860587, lng: 85.8345398};
					var map = new google.maps.Map(document.getElementById('map'), {
					  zoom: 12,
					  center: baseLatLong
					});
			
			
					/*   START ::  AJAX call for Saved Location    */
			
						  $.ajax({
							url : 'get-saved-locations.jsp',
							data:{type:'Hospital'},      
							dataType: 'json',
							success : function(json) {
							   //console.log(JSON.stringify(json));
							   $(json).each(function(key,value){
			
								  var savedLatLong = new google.maps.LatLng(value.lat, value.lng)
			
								  //console.log(savedLatLong);
								  //console.log(baseLatLong);
			
									 var contentString = '<div id="content">'+
												'<div id="siteNotice">'+
												'</div>'+
												'<h1 id="firstHeading" class="firstHeading">'+value.name+'</h1>'+
												'<div id="bodyContent">'+
												'<p><b>Latitude: '+value.lat+'</b></p>' +  
												'<p><b>Longitude: '+value.lng+'</b></p>' + 
												'</div>'+
												'</div>';
			
									var infowindow = new google.maps.InfoWindow({
									  content: contentString
									});
			
									var marker = new google.maps.Marker({
									  position: savedLatLong,
									  map: map,
									  title: value.name
									});
									marker.addListener('click', function() {
									  infowindow.open(map, marker);
									});
			
			
							   });
			
							}
						});
			
			
						 /*   END ::  AJAX call for Saved Location    */
			
			
			
					// START :: Current Location
			
					var infoWindow1 = new google.maps.InfoWindow({map: map});
					// Try HTML5 geolocation.
					if (navigator.geolocation) {
					  navigator.geolocation.getCurrentPosition(function(position) {
						var pos = {
						  lat: position.coords.latitude,
						  lng: position.coords.longitude
						};
			
			
			
						  var currentPosition  = new google.maps.LatLng(pos.lat, pos.lng);
						  //var otherPoint = new google.maps.LatLng(baseLatLong.lat, baseLatLong.lng);
			
						currentPositionLat=currentPosition.lat();
						currentPositionLng=currentPosition.lng();
			
						//var distance = calcDistance(currentPosition , otherPoint);
			
						
						if(latis!=null)
						{
							for(var i=0;i<latis.length;i++)
							{
								var lati = latis[i].value;
								var longi = longis[i].value;
								var otherPoint = new google.maps.LatLng(lati, longi);
			
								var distance = calcDistance(currentPosition , otherPoint);
			
								//document.getElementById("distance_"+i).innerHTML
								$("#distance_"+i).html(distance);
			
							}
						}
			
						sortTable();
			
						  //alert(calcDistance(currentPosition , otherPoint));
			
			
						console.log(pos);
			
						infoWindow1.setPosition(pos);
						infoWindow1.setContent('Current Location : Latitude:'+pos.lat + " Longitude:"+ pos.lng);
						map.setCenter(pos);
					  }, function() {
						handleLocationError(true, infoWindow1, map.getCenter());
					  });
					} else {
					  // Browser doesn't support Geolocation
					  handleLocationError(false, infoWindow1, map.getCenter());
					}
			
					//END :: Current Location
			
				  }
			
			
			
				  function placeMarker(map, location) {
					  var marker = new google.maps.Marker({
						  position: location, 
						  map: map
					  });
					  //console.log(location);
			
					  var contentData = '<div id="content">'+
						'<div id="siteNotice">'+
						'</div>'+
						'<h1 id="firstHeading" class="firstHeading">Location</h1>'+
						'<div id="bodyContent">'+
						'<p><b>Latitude: '+location.lat()+'</b></p>' +  

						'<p><b>Longitude: '+location.lng()+'</b></p>' + 
						'</div>'+
						'</div>';
					var infowindow2 = new google.maps.InfoWindow({
					  content: contentData
					});
			
					marker.addListener('click', function() {
					  infowindow2.open(map, marker);
					});
				  }
			
				  //Function for Current Location
				  function handleLocationError(browserHasGeolocation, infoWindow, pos) {
					infoWindow.setPosition(pos);
					infoWindow.setContent(browserHasGeolocation ?
										  'Error: The Geolocation service failed.' :
										  'Error: Your browser doesn\'t support geolocation.');
				  }
			
			
			//calculates distance between two points in km's
			function calcDistance(p1, p2){
			  return (google.maps.geometry.spherical.computeDistanceBetween(p1, p2) / 1000).toFixed(2);
			}
			
			
			/*
				  var rad = function(x) {
					return x * Math.PI / 180;
				  };
			
				  var getDistance = function(p1, p2) {
					var R = 6378137; // Earth’s mean radius in meter
					var dLat = rad(p2.lat() - p1.lat());
					var dLong = rad(p2.lng() - p1.lng());
					var a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
					  Math.cos(rad(p1.lat())) * Math.cos(rad(p2.lat())) *
					  Math.sin(dLong / 2) * Math.sin(dLong / 2);
					var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
					var d = R * c;
					return d; // returns the distance in meter
				  };*/
			
			
			function sortTable(){
			
			
			
								$table  = $('#loctable'),            // cache the target table DOM element
								$rows   = $('tbody > tr', $table);     // cache all rows from the target table body
			
							$rows.sort(function(a, b) {
			
								var keyA = $('td',a).text();
								var keyB = $('td',b).text();
								//var keyA = $(a).children('td').eq(10).text();
								//var keyB = $(b).children('td').eq(10).text();
			
							   
									return (keyA < keyB) ? 1 : 0;     // A bigger than B, sorting ascending
							});
			
							$rows.each(function(index, row){
							  $table.append(row);                    // append rows after sort
							});
					   
			
			
								/* //var rows = $('#loctable tbody tr').get();
									var $tbody = $('#loctable tbody');
									var rows = $tbody.find('tr');
									  rows.sort(function(a, b) {
			
									  var A = $(a).children('td').eq(10).text();
									  var B = $(b).children('td').eq(10).text();
			
									  console.log(A);
									  console.log(B);
			
									  if(A < B) {
										return -1;
									  }
			
									  if(A > B) {
										return 1;
									  }
			
									  return 0;
			
									  });
			
									  $.each(rows, function(index, row) {
										$('#loctable').children('tbody').append(row);    
									  });*/
			
			}
			
			
			
				$(function(){
			
					$('.sort-table').click(function(e) {
							e.preventDefault();                        // prevent default button click behaviour
			
							var sortAsc = $(this).hasClass('asc'),     // ASC or DESC
								$table  = $('#loctable'),            // cache the target table DOM element
								$rows   = $('tbody > tr', $table);     // cache all rows from the target table body
			
							$rows.sort(function(a, b) {
			
								var keyA = $('td',a).text();
								var keyB = $('td',b).text();
			
								if (sortAsc) {
									return (keyA > keyB) ? 1 : 0;     // A bigger than B, sorting ascending
								} else {
									return (keyA < keyB) ? 1 : 0;     // B bigger than A, sorting descending
								}
							});
			
							$rows.each(function(index, row){
							  $table.append(row);                    // append rows after sort
							});
						});
			
				});
			
				</script>
				<script async defer
				src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDBRwuvgr8Thn-kajeeHeMwr6speR549AI&libraries=geometry&callback=initMap">
				</script>
					</div>
					
				
				
				
				
				
	
	
	
	
	</div>
    <div class="col">
	    <div class="container1">
		<h2><u style="color: blue;">Filter hospital</u></h2>
		
		<div id="myBtnContainer">
		  <button class="btn active" onClick="filterSelection('all')"> Show all</button>
		  <button class="btn" onClick="filterSelection('near')">Near</button>
		  <button class="btn" onClick="filterSelection('far')">far</button>
		</div>
		
		<div class="container">
		  <div class="filterDiv near">IMS Bhubaneshwar</div>
		  <div class="filterDiv near">AIIMS Bhubaneswar </div>
		  <div class="filterDiv far">AMRI Hospitals</div>
		  <div class="filterDiv far">Apollo Hospitals, Bhubaneshwar</div>
		  <div class="filterDiv near">Kalinga Hospital, Bhubaneshwar</div>
		  <div class="filterDiv far">Sunshine Hospitals</div>
		</div>
		</div>
			
			
	</div>
   </div>
  </div>



<footer style="margin-top:10px;">
<jsp:include page="user-footer.jsp" />
</footer>






<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script type="text/javascript" src="nav.js"></script>
	
</body>
</html>