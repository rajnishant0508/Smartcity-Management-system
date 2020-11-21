<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smart City | Support</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<style type="text/css">
.main-bar-content{
   margin-left:120px;
   margin-top:80px;
}
.form-control{
   margin:10px;
}
</style>

<script type="text/javascript">
   function validate(){
     var pwd=document.getElementById("pwd").value;
	 var cnfpwd=document.getElementById("cnfpwd").value;
	 var  re = /[0-9]/;
	 var re1 = /[a-z]/;
	 var re2 = /[A-Z]/;
	  
	 
	 if(pwd != cnfpwd) {
        document.getElementById("cnfpss").innerHTML="password & confirm password does not matched!";
		document.getElementById("cnfpwd").value=null;
		document.getElementById("pwd").value=null;
        return false;
	 }else if(pwd.length < 6) {
        document.getElementById("pss").innerHTML="Password must contain at least six characters!";
		document.getElementById("pwd").value=null;
		document.getElementById("cnfpwd").value=null;
        return false;
     }else if(pwd.length > 10) {
        document.getElementById("pss").innerHTML="Password sholud not be 10 characters long !";
		document.getElementById("pwd").value=null;
		document.getElementById("cnfpwd").value=null;
        return false;		
	 }else if(!re.test(pwd)){
	     document.getElementById("pss").innerHTML="password must contain at least one number!";
		 document.getElementById("pwd").value=null;
		 document.getElementById("cnfpwd").value=null;
        return false; 
	 }else if(!re1.test(pwd)){
	     document.getElementById("pss").innerHTML="password must contain at least one lowercase letter!";
		 document.getElementById("pwd").value=null;
		 document.getElementById("cnfpwd").value=null;
        return false; 
     }else if(!re2.test(pwd)){
	     document.getElementById("pss").innerHTML="password must contain at least one uppercase letter!";
		 document.getElementById("pwd").value=null;
		 document.getElementById("cnfpwd").value=null;
        return false; 		
	 }else{
	 return true;
     }
   }
</script>


</head>
<body>
<%! String pp; %>
<% pp=((String)session.getAttribute("logname")).toUpperCase(); %>
<div class="main">
  <div class="header">
    <div class="header_resize">
	  <div class="menu_nav">
		<jsp:include page="pathlab-nav-bar.jsp" />
      </div>
    </div>
   </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	  <h2 class="main-bar-content">Welcome <%=pp%> to Change Password</h2>
	     <div class="article">
		   <form action="path-chng-pwd1.jsp" onSubmit="return validate()">
		      <table style="margin-left:120px; margin-top:30px;">
			   <tr> 
				<td>Enter New Password: </td>
				<td><input type="password" name="pwd" id="pwd" class="form-control" placeholder="New Password" required></td>
				</tr>
				
				<tr> 
				<td></td>
				<td><span id="pss" style="color:#FF0000; margin-left:10px;"> </span></td>
				</tr>
				
				<tr>
				<td>Enter Confirm Password:</td>
				<td><input type="password" class="form-control" name="cnfpwd" id="cnfpwd" placeholder="Confirm Password" required /></td></tr>
				
			    <tr> 
				<td></td>
				<td><span id="cnfpss" style="color:#FF0000; margin-left:10px;"> </span></td>
				</tr>
				
				
			<tr><td><input type="submit" value="SUBMIT" style="margin-left:100px;" class="btn btn-primary" ></td></tr>		
			 </table>
		   </form>
		 </div>
        </div>

      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="pathlab-left.jsp" />
        </div>
        
      </div>
	  

      
	 </div>
   </div>
</div>
<div class="footer" style="margin-top:400px;">
    <jsp:include page="member-footer.jsp" />
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
