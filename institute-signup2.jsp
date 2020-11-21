<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smart City</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" type="text/css" href="tabcontent.css" />
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">


  
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
.style12 {font-size: 12px}
.mainbar{
margin-top:80px;

}
.form-control{
   margin:10px;
}
 </style>

<script type="text/javascript" src='js/jquery-1.10.0.min.js'></script>


<script type="text/javascript">
   function validate(){
	   var pwd=document.getElementById("pwd").value;
	   var cnfpwd=document.getElementById("cnfpwd").value;
	   var cadd=document.getElementById("cadd").value;
	   var about=document.getElementById("about").value;
	   var phone1=document.getElementById("phone1").value;
	   var phone2=document.getElementById("phone2").value;
	   var mail=document.getElementById("mail").value;
	   var regex = new RegExp("^[a-zA-Z\b ]+$");
	   var mobi = /^[1-9]{1}[0-9]{9}$/;
	   var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	   var add= /^[a-zA-Z0-9\s\,\''\-]*$/;
	   
	   var  re = /[0-9]/;
	   var re1 = /[a-z]/;
	   var re2 = /[A-Z]/;
	   
		   
	  if(pwd != cnfpwd) {
			document.getElementById("cnfpss").innerHTML="Not matched!";
			document.getElementById("cnfpwd").value=null;
			document.getElementById("pwd").value=null;
			return false;
  	  }else if(pwd.length < 6) {
        document.getElementById("pss").innerHTML="At least six characters!";
		document.getElementById("pwd").value=null;
		document.getElementById("cnfpwd").value=null;
        return false;
      }else if(pwd.length > 10) {
        document.getElementById("pss").innerHTML="Password too long !";
		document.getElementById("pwd").value=null;
		document.getElementById("cnfpwd").value=null;
        return false;		
	  }else if(!re.test(pwd)){
	     document.getElementById("pss").innerHTML="At least one number!";
		 document.getElementById("pwd").value=null;
		 document.getElementById("cnfpwd").value=null;
        return false; 
	  }else if(!re1.test(pwd)){
	     document.getElementById("pss").innerHTML="At least one lowercase letter!";
		 document.getElementById("pwd").value=null;
		 document.getElementById("cnfpwd").value=null;
        return false; 
      }else if(!re2.test(pwd)){
	     document.getElementById("pss").innerHTML="At least one uppercase letter!";
		 document.getElementById("pwd").value=null;
		 document.getElementById("cnfpwd").value=null;
        return false; 
											   
	  }else if(regex.exec(about)==null){
	      document.getElementById("abt").innerHTML="*Please enter a valid Text";
		  document.getElementById("about").value=null;
		    return false; 
			
	   }else if(reg.test(mail)==false){		
			document.getElementById("mai").innerHTML="*Please enter a valid Mail";
			document.getElementById("mail").value=null;
		    return false; 
	   }else if(mail.indexOf(".") == -1) {	
	         document.getElementById("mai").innerHTML="*Please enter a valid Mail";
			 document.getElementById("mail").value=null;
			 return false;
			 
	   }else if(mobi.test(phone1)==false){
	      document.getElementById("ph1").innerHTML="*Please enter a valid Phone No";
		  document.getElementById("phone1").value=null;
		    return false;
			
	   }else if(mobi.test(phone2)==false){
	      document.getElementById("ph2").innerHTML="*Please enter a valid Phone No";
		  document.getElementById("phone2").value=null;
		    return false;		
			
	   }else if(add.test(cadd)==false){
	      document.getElementById("ca").innerHTML="*Please enter a valid Address";
		  document.getElementById("cadd").value=null;
		    return false;  
	 	
				 		
	   }else{
	       return true;
	   }
	   }
</script>



</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
		<jsp:include page="organisation-nav-bar.jsp" />
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
	<center>
      <div class="mainbar">
	<h2>Welcome to Institute Registration</h2>
	
	<span style="color:maroon; font-size:25px;" class="style4">Institute Details</span>
        <div class="article">
         
				<form action="institute-signup3.jsp" onSubmit="return validate()">
				   <table>
					  <tr>
						<td>Login Name </td>
						<td ><input type="text" name="logname" id="logname" class="form-control" value="<%=request.getParameter("name")%>" readonly="true"/></td>
						 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Inst. Type:*</td>
						<td><select name="type" id="type" class="form-control" style="padding: 5px; border-radius:4px;" required>
						<option value="INSTITUTE">INISTITUTE</option>
						</select></td>
					  </tr>
					  
					  <tr>
						<td>Password:* </td>
						<td><input type="password" name="pwd" id="pwd" class="form-control" placeholder="Password"/></td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirm Password:* </td>
						<td><input type="password" name="cpwd" id="cnfpwd" class="form-control" placeholder="Password"/></td>
					  </tr>
					  
					  <tr>
							<td></td>
							<td> <span id="pss" style="color:#FF0000; margin-left:10px;"> </span></td>
							<td></td>
							<td> <span id="cnfpss" style="color:#FF0000; margin-left:10px;"> </span></td>
					  </tr>
					  
					  
					  <tr>
						<td>Current Address:*</td>
						<td><textarea name="cadd" id="cadd" rows="6" class="form-control" cols="35"></textarea></td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;About Institute:*</td>
						<td><textarea name="about" id="about" rows="6" class="form-control" cols="35"></textarea></td>
					  </tr>
					  
					  <tr>
							<td></td>
							<td> <span id="ca" style="color:#FF0000; margin-left:10px;"> </span></td>
							<td></td>
							<td> <span id="abt" style="color:#FF0000; margin-left:10px;"> </span></td>
					  </tr>
					  
					  <tr>
						<td>Phone:*</td>
						<td><input type="text" name="phone1" id="phone1" class="form-control" placeholder="Phone No" /></td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Alternate Phone:</td>
						<td><input type="text" name="phone2" id="phone2" class="form-control" placeholder="Alternate Phone No" /></td>
					  </tr>
					  
					  <tr>
							<td></td>
							<td> <span id="ph1" style="color:#FF0000; margin-left:10px;"> </span></td>
							<td></td>
							<td> <span id="ph2" style="color:#FF0000; margin-left:10px;"> </span></td>
					  </tr>
					  
					  
					  <tr>
						<td>Mail ID:*</td>
						<td><input type="mail" name="mail" id="mail" class="form-control" placeholder="Email" /></td> 
						<td></td>
					  </tr>
					  
				      <tr>
							<td></td>
							<td> <span id="mai" style="color:#FF0000; margin-left:10px;"> </span></td>
					  </tr>
					  
					  
						<tr>
						<td>Latitude:*</td>
						<td><input name="lat" type="text" class="form-control" id="lat" readonly="true"></td>
						
						<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Longitude:*</td>
						<td><input name="lng" type="text" class="form-control" id="lng" readonly="true"></td>
						</tr>	  
						<tr>
						<td colspan="4" align="center"><input type="submit" class="btn btn-primary" value="Submit"/> &nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" class="btn btn-primary" value="Reset"/></td>
					  </tr>
						
						
					</table>

				</form>
		
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
        var R = 6378137; // Earth�s mean radius in meter
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
	  </center>
      <div class="sidebar"> 
        <div class="gadget">
		
        </div>
        
      </div>
      <div class="clr"></div>
    </div>
  </div> 
  <div class="footer" style="margin-top:10px;">
    <jsp:include page="footer.jsp" />
  </div>
</div>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
