<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smart City</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" type="text/css" href="tabcontent.css" />
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="footerr.css">
<style type="text/css">
.main-bar-content{
   margin-left:120px;
   margin-top:80px;
}
.content_main{
 
}
body{
  background-image:url(resturent.jpg);
  background-size:cover;
  background-repeat: no-repeat;
}
</style>

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
        width: 650px;
        height: 400px;
      }
.style12 {font-size: 12px}
.mainbar{
margin-top:80px;

}
.form-control{
   margin:10px;
}
 </style>

<script type="text/javascript" src='js/jquery-1.10.0.min.js'></script>



</head>
<body>


<div class="nav_bar">
<header>
  <div class="collapse bg-dark" id="navbarHeader">
    <div class="container">
      <div class="row">
        <div class="col-sm-8 col-md-7 py-4">
          <h4 class="text-white">Smart City</h4>
          <p style="color:cyan">Smart City The BHUBNESWAR</p>
        </div>
        <div class="col-sm-4 offset-md-1 py-4">
          <h4 class="text-white">Contact</h4>
          <ul class="list-unstyled">
            <li><a href="#" class="text-white"><i class="fa fa-twitter-square fa-2x" aria-hidden="true"></i>&nbsp;&nbsp;Follow on Twitter</a></li>
            <li><a href="#" class="text-white"><i class="fa fa-facebook-official fa-2x" aria-hidden="true"></i>&nbsp;&nbsp; Like on Facebook</a></li>
            <li><a href="#" class="text-white"><i class="fa fa-envelope fa-2x" aria-hidden="true"></i>&nbsp;&nbsp;Email me</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="navbar navbar-dark bg-dark shadow-sm">
    <div class="container d-flex justify-content-between">
      <a class="navbar-brand d-flex align-items-center">
        
        <strong>Smart City</strong>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
  </div>
</header>


</div>
<div class="container">
 <div class="row">
   <div class="col-8">
       <div class="content_main">
         <h1>Hotel Registration</h1>
	     <h2>Basic Info</h2>
       </div>
       <div class="mainn_1">
    
			<form action="hotel-signup1.jsp" method="get">
				  <div class="form-row">
					<div class="form-group col-md-12">
					  <label for="inputEmail4">Hotel Name:*</label>
					  <input type="text" name="restname" class="form-control" id="inputEmail4" placeholder="Hotel Name">
					</div>
				  </div>
				  <div class="form-row">
					<div class="form-group col-md-6">
					  <label for="inputCity">Password:*</label>
					  <input type="password" name="pw" class="form-control" id="inputCity" placeholder="Password">
					</div>
					<div class="form-group col-md-6">
					  <label for="inputState">Confirm Password:*</label>
					  <input type="password" name="pw1" class="form-control" id="inputCity" placeholder="Confirm Password">
					</div>
					
				  </div>
				  <div class="form-row">
				  <div class="form-group col-md-8">
					<label for="inputAddress">City:*</label>
					<input type="text" name="city" class="form-control" id="inputAddress" placeholder="City">
				  </div>
				  <div class="form-group">
					<label for="inputAddress2">Are you the Owner or Manager of this Place?*</label><br>
					<input name="r1" type="radio" value="not Owner/Manager" required="" checked="checked"/>I an not Owner/Manager&nbsp;&nbsp;&nbsp;<input name="r1" type="radio" value="Owner/Manager" />I am Owner/Manager 
				  </div>
				  </div>
				  <div class="form-row">
					<div class="form-group col-md-6">
					  <label for="inputCity">Owner Phone:*</label>
					  <input type="text" name="ownerph" class="form-control" id="inputCity" placeholder="Phone">
					</div>
					<div class="form-group col-md-6">
					  <label for="inputState">Owner Email:*</label>
					  <input type="email" name="owneremail" class="form-control" id="inputCity" placeholder="Email">
					</div>
					
				  </div>
				  <div class="form-row">
					<div class="form-group col-md-4">
					  <label for="inputCity">STD:</label>
					  <input type="text" name="std" class="form-control" id="inputCity" placeholder="STD">
					</div>
					<div class="form-group col-md-8">
					  <label for="inputState">Phone:</label>
					  <input type="text" name="restph" class="form-control" id="inputCity" placeholder="Phone">
					</div>
				   </div>
				   <label for="inputAddress2">Opening Status*</label><br>
				  <input name="r2" type="radio" value="open" required="" checked="checked"/> This place is Allready Open &nbsp;&nbsp;&nbsp;  <input name="r2" type="radio" value="open soon" />This place is Opening soon <br><br>
							  
				  
				  
					<br><br>
					<div class="form-row">
					 <div class="form-group col-md-12">
						<p>
						  <a class="btn btn-light btn-lg btn-block" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample" style="background-color:#CCCCCC;">
							+Add more Info
						  </a>
						  
						</p>
						<div class="collapse" id="collapseExample">
						  <h2>Location</h2>
						  <div class="card card-body" style="background-color:transparent;">
							<div class="form-row">
								<div class="form-group col-md-12">
								  <label for="inputEmail4">Address/Landmark:*</label>
								  <input type="Address" name="addrs" class="form-control" id="inputEmail4" placeholder="Address">
								</div>
								<input type="hidden" name="lat"  type="text" id="lat" class="form-control" >
								<input type="hidden" name="lng"  type="text" id="lng" class="form-control" >
							</div>
							<div>
								 <div id="map" style="margin:20px;"></div>
								<script>
		
									  // This example displays a marker at the center of Australia.
									  // When the user clicks the marker, an info window opens.
								
								var markers = [];
								
									  function initMap() {
										var baseLatLong = {lat: 20.2860587, lng: 85.8345398};
										var map = new google.maps.Map(document.getElementById('map'), {
										  zoom: 15,
										  center: baseLatLong
										});
								
										
								
										google.maps.event.addListener(map, 'click', function(event) {
										 placeMarker(map,event.latLng);
										 //console.log(event);
									  });
								
								
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
											  var otherPoint = new google.maps.LatLng(baseLatLong.lat, baseLatLong.lng);
								
											 // alert(calcDistance(currentPosition , otherPoint));
								
								
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
								
										removeMarkers();
										
										  var marker = new google.maps.Marker({
											  position: location, 
											  map: map
										  });
										  //console.log(location);
									  
									  document.getElementById("lat").value=location.lat();
									  document.getElementById("lng").value=location.lng();
								
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
								
								
										//Add marker to the array.
										 markers.push(marker);
								
									  }
								
								
									  function removeMarkers() {
										//Loop through all the markers and remove
										for (var i = 0; i < markers.length; i++) {
											markers[i].setMap(null);
										}
										markers = [];
									};
								
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
								
									</script>
									<script async defer
									src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDBRwuvgr8Thn-kajeeHeMwr6speR549AI&libraries=geometry&callback=initMap">
									</script>
		
								
							</div>
						 
						  </div>
						  
						</div>
						
						<div class="collapse" id="collapseExample">
						  <h2>Facilitys</h2>
						  <div class="card card-body" style="background-color:transparent;">
							<div class="form-row">
								<div class="form-group col-md-12">
								 <label for="inputEmail4">Check In Time:*</label>
					             <input type="time" name="chkin" class="form-control" id="inputEmail4" placeholder="Check In"> 
								</div>
								<div class="form-group col-md-12">
					              <label for="inputEmail4">Check Out Time:*</label>
					              <input type="time" name="chkout" class="form-control" id="inputEmail4" placeholder="Check Out">
								</div>
								
								<div class="form-group col-md-3">
					              <label for="inputEmail4">Total Nos of Rooms:*</label>
					              <input type="text" name="acroom1" class="form-control" id="inputEmail4" placeholder="AC Single Bed">
								</div>
								<div class="form-group col-md-3">
					              <label for="inputEmail4">Total Nos of Rooms:*</label>
					              <input type="text" name="acroom2" class="form-control" id="inputEmail4" placeholder="AC Double Bed">
								</div>
								<div class="form-group col-md-3">
					              <label for="inputEmail4">Total Nos of Rooms:*</label>
					              <input type="text" name="room1" class="form-control" id="inputEmail4" placeholder="Single Bed">
								</div>
								<div class="form-group col-md-3">
					              <label for="inputEmail4">Total Nos of Rooms:*</label>
					              <input type="text" name="room2" class="form-control" id="inputEmail4" placeholder="Double Bed ">
								</div>
								
							    <div class="form-group col-md-3">
					              <label for="inputEmail4">Price for Room types:*</label>
					              <input type="text" name="acsingle" class="form-control" id="inputEmail4" placeholder="AC Single Bed">
								</div>
								<div class="form-group col-md-3">
					              <label for="inputEmail4">Price for Room types:*</label>
					              <input type="text" name="acdouble" class="form-control" id="inputEmail4" placeholder="AC Double Bed">
								</div>
								<div class="form-group col-md-3">
					              <label for="inputEmail4">Price for Room types:*</label>
					              <input type="text" name="single" class="form-control" id="inputEmail4" placeholder="Single Bed">
								</div>
								<div class="form-group col-md-3">
					              <label for="inputEmail4">Price for Room types:*</label>
					              <input type="text" name="double" class="form-control" id="inputEmail4" placeholder="Double Bed ">
								</div>
								
								 <div class="form-group col-md-3">
					              <label for="inputEmail4">Room size in Sq Foot:*</label>
					              <input type="text" name="acfoot" class="form-control" id="inputEmail4" placeholder="AC Single Bed">
								</div>
								<div class="form-group col-md-3">
					              <label for="inputEmail4">Room size in Sq Foot:*</label>
					              <input type="text" name="acfoots" class="form-control" id="inputEmail4" placeholder="AC Double Bed">
								</div>
								<div class="form-group col-md-3">
					              <label for="inputEmail4">Room size in Sq Foot:*</label>
					              <input type="text" name="singlefoot" class="form-control" id="inputEmail4" placeholder="Single Bed">
								</div>
								<div class="form-group col-md-3">
					              <label for="inputEmail4">Room size in Sq Foot:*</label>
					              <input type="text" name="doublefoot" class="form-control" id="inputEmail4" placeholder="Double Bed ">
								</div>
								
								<div class="form-group col-md-12">
								  <label for="inputEmail4">Payment:*</label><br>
								 <input name="r5" type="radio" value="Card and Cash" required="" checked="checked"/>Card and Cash &nbsp;&nbsp;&nbsp;   <input name="r5" type="radio" value="cash" />Case Only
								</div>
								
									<div class="form-group col-md-6">
									  <label for="inputState">Start Category</label>
									  <select id="inputState"  name="rating" class="form-control">
										<option>5 Star</option>
										<option>3 Star</option>
										<option>Average</option>
										<option>Normal</option>
									  </select>
									</div>
									<div class="form-group col-md-6">
									  <label for="inputState">Types of Rooms</label>
									  <select id="inputState" name="ac" class="form-control">
										<option>AC</option>
										<option>Non AC</option>
										<option>Both</option>
									  </select>
									</div>
									
									
							</div>
							
						 
						  </div>
						  
						</div>
						
						<div class="collapse" id="collapseExample">
						  <h2>Timing</h2>
						  <div class="card card-body" style="background-color:transparent;">
							<div class="form-row">
								
								<label for="inputEmail4">Hotel Opening Time:*</label>
								 <input type="time" name="time" class="form-control">
							 
							</div>
							
						  </div>
						  
						</div>
						
						
						<div class="collapse" id="collapseExample">
						  <h2>Contact Information</h2>
						  <div class="card card-body" style="background-color:transparent;">
							<div class="form-row">
									<div class="form-group col-md-6">
									  <label for="inputEmail4">Hotel Email:*</label>
									  <input type="email" name="hotelmail" class="form-control" id="inputEmail4" placeholder="Resturent Email">
									</div>
									<div class="form-group col-md-6">
									  <label for="inputEmail4">Hotel Website:*</label>
									  <input type="text" name="hotelwebsite" class="form-control" id="inputEmail4" placeholder="Resturent Website">
									</div>
							</div>
							
						  </div>
						  
						</div>
						
					   </div>
					 </div>
					 <input type="Submit" value="Add Resturent" class="btn  btn-success btn-lg btn-block" style="width:740px;">
					
			 </form>
        </div>
      </div>
	  <div class="col-4" style="margin-top:140px;">
	    <div class="card card-body">
	       <strong>How It Works</strong>
		   <ul style="margin-left:20px;">
		     <li>If you are the owner of a restaurant, or if you are a user who's discovered a place not listed on Zomato, let us know using this form.</li>
			 <li>Once you send the information to us, our awesome content team will verify it. To help speed up the process, please provide a contact number or email address.</li>
			 <li>That's it! Once verified the listing will start appearing on Zomato</li>
		   </ul>					
		</div>
	  </div>
   </div>
</div>
<br />
<jsp:include page="footer.jsp"/>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
