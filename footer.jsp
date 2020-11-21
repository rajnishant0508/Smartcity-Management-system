<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>footer</title>
<link rel="stylesheet" type="text/css" href="footerr.css">


<!--<script type="text/javascript">
  function validate(){
	   var tt1=document.getElementById("tt1").value;
	   var tt2=document.getElementById("tt2").value;
	   var tt3=document.getElementById("tt3").value;
	   var regex = new RegExp("^[a-zA-Z\b ]+$");
	   var mobi = /^[1-9]{1}[0-9]{9}$/;
	   var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	  
	   if(regex.exec(tt1)==null){
	      document.getElementById("na").innerHTML="*Please enter a valid Name";
		  document.getElementById("tt1").value=null;
		    return false; 
			 
	  }else if(reg.test(tt2)==false){		
			document.getElementById("mai").innerHTML="*Please enter a valid Mail";
			document.getElementById("tt2").value=null;
		    return false; 
	   }else if(tt2.indexOf(".") == -1) {	
	         document.getElementById("mai").innerHTML="*Please enter a valid Mail";
			 document.getElementById("tt2").value=null;
			 return false;
			 
	   }else if(mobi.test(tt3)==false){
	      document.getElementById("ph").innerHTML="*Please enter a valid Phone No";
		  document.getElementById("tt3").value=null;
		  return false;
	  
				 		
	   }else{
	       return true;
	   }
	   }
</script>
-->

</head>

<body>
	


<footer>
	<div class="Footer-wrapper">
		<div class="Footer-header">
			<div class="Footer2">
				<ul>
					<li><b>Follow us</b></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<li><a href="#"><i class="fa fa-facebook-official fa-2x" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter-square fa-2x" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-instagram fa-2x" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-linkedin-square fa-2x" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-youtube-play fa-2x" aria-hidden="true"></i></a></li>
				</ul>
			</div>
		</div><hr>
		<div class="container-fluid">
		  <div class="row rowss">
		    <div class="col-sm">
		      <b>Contact Us</b>
		      <div class="footer-content1">
		      	    <a href="#"><i class="fa fa-map-marker"></i>&nbsp;&nbsp;Near Vision Care</a><br>
                  	<a href="#"><i class="fa fa-phone"></i>&nbsp;+918092577239</a><br>
                  	<a href="#"><i class="fa fa-fax"></i>&nbsp;+918092577239</a><br>
                  	<a href="mailto:nishantraj1001@gmail.com"><i class="fa fa-envelope"></i>&nbsp;info@smart_city_bbs.com</a><br>
                  	<a href="#"><i class="fa fa-globe"></i>&nbsp;www.smartcitybbs.com</a><br>
		      </div>
		    </div>
		    <div class="col-sm">
		      <b>Quick Link</b>
		      <div class="footer-content1">
		      	<a href="#">Home</a><br>
		      	<a href="#">About Us</a><br>
		      	<a href="hotel-signup.jsp">Add Hotels</a><br>
		      	<a href="organisation-signup.jsp">Add Organisation</a><br>
		      	<a href="institute-signup.jsp">Add Institute</a><br>
				<a href="vehicle-signup.jsp">Add Ambulance Van</a><br>
		      </div>
		    </div>
		    <div class="col-sm">
		      <b>Our Services</b>
		      <div class="footer-content1">
		      	<a href="#">Travle & Tourism</a><br>
		      	<a href="#">Ancient Places</a><br>
		      	<a href="#">City Infrastrcutre</a><br>
		      	<a href="#">Hotels</a><br>
		      	<a href="#">BNC (Bhubneswar Municipal Corporation)</a>		    
		      </div>
		    </div>
		    <div class="col-sm">
		      <b>Help</b>
		       <div class="footer-content1">
		      	<a href="#">Help Center</a><br>
		      	<a href="#">FAQ's</a><br>
		      	<a href="#">Tweet For Support</a><br>		    
		      </div>
		    </div>
		    <div class="col-sm columnnn">
                  <b class="contact">GET IN TOUCH</b>
                  <div class="get-in-touch">
                  	<form action="touch.jsp">
                  		<input type="text" name="tt1" id="tt1" class="textt" placeholder="Name">
						<span id="na" style="color:#FF0000; margin-left:10px;"> </span>
                  		<input type="email" name="tt2" id="tt2" placeholder="Email" class="textt">
						<span id="mai" style="color:#FF0000; margin-left:10px;"> </span>
                  		<input type="text" name="tt3" id="tt3" placeholder="Phone no" class="textt">
						<span id="ph " style="color:#FF0000; margin-left:10px;"> </span>
                  		<input type="submit" value="Submit" class="btnn" style="width:180px;">
                     </form>
                  </div>
            </div>
		  </div>
		</div><hr>
		<div class="container-fluid">
			<div class="row rowss">
			    <div class="col-sm footer-content2">
			      <a href="#">Privacy</a>
			    </div>
			    <div class="col-sm footer-content2">
			      <a href="#">Terms & Condition</a>
			    </div>
			    <div class="col-sm footer-content2">
			      <a href="#"><i class="fa fa-question-circle" aria-hidden="true"></i></a>&nbsp;&nbsp;&nbsp;<a href="#">Help</a>
			    </div>
			    <div class="col-sm">
			      <div class="btn-group dropup">
					  
					  <div class="dropdown-menu">
					    <!-- Dropdown menu links -->
					  </div>
				  </div>
			    </div>
			    
            </div>
			
		</div>
		<div class="last"><p>Copyright &copy; 2007 Smart_city! Designed by <a href="#">Nishant & Niraj</a></p></div>
	</div>
</footer>



</body>
</html>