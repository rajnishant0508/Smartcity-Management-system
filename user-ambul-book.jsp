<%@ include file="dbcom.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smart City | Support</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="footerr.css">
<style type="text/css">
.main-bar-content{
   
   margin-top:80px;
}
.table-content{
   margin-top:40px;
   margin-left:10px;
}
.form-control{
   margin:10px;
}
.style4{
   margin-left:50px;
   font-size:20px;
}

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
.style15 {font-size: 12px}
 </style>
 
 
</head>
<body>
<%! String pp; %>
<% pp=((String)session.getAttribute("logname")).toUpperCase(); %>
<div class="main">
  <div class="header">
    <div class="header_resize">
     
      <div class="menu_nav">
		<jsp:include page="user-ambulance-nav-bar.jsp" />
      </div>
      
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	  <h2 class="main-bar-content" style="color:#DC7633; margin-bottom:50px;">Welcome <%=pp%> to Ambulance Profile</h2>
	      
		  
					  
	  <form method="post"  action="uambbook1.jsp">
        <table width="708">
	    <tr> 
		<td>Vehicle Number</td>
		<td><input type="text" name="vno" value="<%=request.getParameter("vno")%>" readonly="true" /></td>
		<td></td>
		<td>Vehicle ID </td>
		<td><input type="text" name="vid" value="<%=request.getParameter("vid")%>" readonly="true" /></td>
		<td></td>
		</tr>
		<td>Type</td>
		<td><input type="text" name="type" value="<%=request.getParameter("type")%>" readonly="type" /> </td><td></td>
		<td>Model</td>
		<td><input type="text" name="model" value="<%=request.getParameter("model")%>" readonly="true"/></td></tr>
		<tr>
		<td>User ID</td>
		<td><input type="text" name="uid" value="<%=((String)session.getAttribute("id"))%>" readonly="true"/ ></td>
		<td></td>
		</tr>
		<td>Book From Date</td>
		<td><input type="date" name="bookfromdate"></td>
	    <td>Book From Time</td>
		<td><input type="time" name="bookfromtime"></td>
		</tr>
		<tr>
		 <tr>
	   <td>Latitude</td>
	   <td><input name="lat" type="text" id="lat"></td>
	   <td></td>
	   <td>Longitude</td>
	   <td><input name="lng" type="text" id="lng"></td>
	   </tr>
		
		<tr><td><input type="submit" value="SUBMIT" ></td></tr>		
		</table>
		</form>
	<h4>Select Your Pickup Location Here</h4>



	<div id="map"></div>
	
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

      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="user-left.jsp" />
        </div>
        
      </div>
	  

      
	  </div>
    </div>
  </div>
  <div class="footer" style="margin-top:200px;">
   <jsp:include page="user-footer.jsp"/>
  </div>



<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
