<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="signup1.css">
	
	<script type="text/javascript">
		function check(value){ 
		xmlHttp=GetXmlHttpObject()
		var url="checkajax.jsp";
		url=url+"?email="+value;
		xmlHttp.onreadystatechange=stateChanged 
		xmlHttp.open("GET",url,true)
		xmlHttp.send(null)
		}
		function stateChanged(){ 
		if(xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){ 
		var showdata = xmlHttp.responseText; 
		document.getElementById("mydiv").innerHTML= showdata;
		} 
		}
		function GetXmlHttpObject(){
		var xmlHttp=null;
		try{
		xmlHttp=new XMLHttpRequest();
		}
		catch (e) {
		try {
		xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
		}
		catch (e){
		xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		}
		return xmlHttp;
		}
	</script>

	<script type="text/javascript">
	 function validate(){
	    var na=document.getElementById("name").value;
	    var pwd=document.getElementById("password").value;
		var fa=document.getElementById("father").value;
		var em=document.getElementById("email").value;
		var id1=document.getElementById("ID1").value;
		var id2=document.getElementById("ID2").value;
		var ca=document.getElementById("caa").value;
		var pa=document.getElementById("paa").value;
		var ma=document.getElementById("mas").value;
		if(na.trim()==""){
		    document.getElementById("nam").innerHTML="*please enter a valid Name";  
		   return false;
		}else{
		   return true;
		}
	 } 
	</script>
</head>
<body>

<div class="bg-signup-model">
	  	<div class="bg-signin-model-content2">
	  		<img src="">
	  		
	  			<p style="font-size: 25px; text-align: center; ">Please sign in</p>
				<form onSubmit="return validate()" action="signupchkajax.jsp">
	  			<center>
	  			<div class="row">
				    
				    <div class="col-sm">
				      <input type="text" name="na" placeholder="Name" id="name" class="signin-field1" required="" size="25">
				    </div>
				    <div class="col-sm">
				      <input type="password" name="pw" placeholder="Password" id="password" class="signin-field1" required="" size="25"><br><br>
				    </div>
				</div>
				
				<div class="row">
				    
				    <div class="col-sm">
				     <span id="nam" style="color:#FF0000;"> </span>
				    </div>
				    <div class="col-sm">
				      
				    </div>
				</div>

				<div class="row">
				    
				    <div class="col-sm">
				      <input type="password" name="cnfpw" placeholder="Confirm Password" id="password" class="signin-field1" required="" size="25"><br><br>
				    </div>
				    <div class="col-sm">
				      
					  <input type="text" name="email" id="email" onKeyUp="check(this.value);" required="" size="25" class="signin-field1" placeholder="Email"><font color="red"><div id="mydiv"></div></font>
				    </div>
				</div>

				<div class="row">
				    
				    <div class="col-sm">
				      <select  name="id1"  class="signin-field2" id="ID1" required="">
							
							<option>Addhar</option>
							<option>PAN</option>
							<option>Driving Licenece</option>
						  </select>
						  <div class="invalid-tooltip">
							Please select a valid Id.
						  </div>
				    </div>
				    <div class="col-sm">
				      <input type="text" name="id2" placeholder="Id Number" id="ID2" class="signin-field1" required="" size="25"><br><br>
				    </div>
				</div>
				<div class="row">
				    
				    <div class="col-sm">
				      <input type="text" name="ca" placeholder="Current Address" id="caa" class="signin-field1" required="" size="25"><br><br>
				    </div>
				    <div class="col-sm">
				     <input type="text" name="pa" placeholder="Permanent Address" id="paa" class="signin-field1" required="" size="25"><br><br>
				    </div>
				</div>
				<div class="row">
				    
				    <div class="col-sm">
				      <input type="text" name="ph" placeholder="Phone no" id="phone" class="signin-field1" required="" size="25"><br><br>
				    </div>
				    <div class="col-sm">
				     <input type="text" name="ed" placeholder="Education" id="education" class="signin-field1" required="" size="25"><br><br>
				    </div>
				</div>
				<div class="row">
				    
				    <div class="col-sm">
				      <input type="text" name="ma" placeholder="Marignal Status" id="mas" class="signin-field1" required="" size="25"><br><br>
				    </div>
				    <div class="col-sm">
				     <input type="date" name="db" placeholder="DOB" class="signin-field2" required="" size="25"><br><br>
				    </div>
				</div>

				<div class="row">
				    
				    <div class="col-sm">
				      <input name="r1" type="radio" value="Male" required="" checked="checked"/> Male   <input name="r1" type="radio" value="Female" />Female <br><br>
				    </div>
				    <div class="col-sm">
				     
				    </div>
				</div>

	  			 
	  			<input type="submit" value="Sign In" class="sign-in-btn"><br><br>
	  			<p4 class="mt-5 mb-3 text-muted">&copy; 2017-2019</p4>
	  		    </center>
	  		    </form>
	  	</div>
</div>



<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	 <script src="form-validation.js"></script>
</body>
</html>
