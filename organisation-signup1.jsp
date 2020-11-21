<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smart City | Support</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<style type="text/css">
.main-bar-content{
   margin-top:80px;
}
.form-control{
   margin:10px;
}
</style>
 
 <script type="text/javascript">
   function validate(){
	   var pincode=document.getElementById("pincode").value;
	   var name=document.getElementById("name").value;
	   var regex = new RegExp("^[a-zA-Z\b ]+$");
	  
	   var pat1=/^\d{6}$/;
		
	   
	   if(regex.exec(name)==null){
	      document.getElementById("na").innerHTML="*Please enter a valid Name";
		  document.getElementById("name").value=null;  
			return false; 		
	
	   }else if(!pat1.test(pincode)){
	      document.getElementById("pin").innerHTML="*Please enter a valid Pincode";
		  document.getElementById("pincode").value=null;
		  return false;   		  	
				 		
	   }else{
	       return true;
	   }
	   }
</script>



</head>
<body>
<div class="header">
    <div class="header_resize">
	  <div class="menu_nav">
		<jsp:include page="organisation-nav-bar.jsp" />
      </div>
    </div>
</div>

<div class="main-content">
      <center>
	  <h2 class="main-bar-content">Welcome to Organisation Registration</h2>
	  
	  <span style="color:maroon; font-size:25px;" class="style4">Organisation Signup</span>
			    
           <form onSubmit="return validate()" action="organisation-signup2.jsp">
		   <b>Enter the name of your Organisation with Pincode</b>
				<table>
				<tr>
				<td>Type:</td>
				<td><input type="text" name="t0" class="form-control" value="<%=request.getParameter("select")%>" readonly="true" /></td>
				</tr>
				
				<tr>
				<td>Name:*</td>
				<td><input type="text"  class="form-control" id="name" name="t1" placeholder="Name" required /></td>
				</tr>
				
				<tr>
					<td></td>
					<td> <span id="na" style="color:#FF0000; margin-left:10px;"> </span></td>
				</tr>
				
				<tr>
				<td>Pincode:*</td>
				<td><input type="text" class="form-control" id="pincode"  name="t2" placeholder="Pincode" required/></td>
				</tr>
				
				<tr>
					<td></td>
					<td> <span id="pin" style="color:#FF0000; margin-left:10px;"> </span></td>
				</tr>
				
				<tr><td></td>
				<td><input type="submit" class="btn btn-primary" value="Submit"></td>
				</tr>
				</table>
	
	       </form>
		   <%
		      try{
			     String z=request.getParameter("a1");
				 if(z.equalsIgnoreCase("error")){
				     out.print("<font color=red size=4px>Already Registered</font>");
				 }
			  
			  }catch(Exception e){   }
		   
		   %>
		</center>
</div>
<div style="margin-top:500px;">
<jsp:include page="footer.jsp"/>
</div>
	 
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
