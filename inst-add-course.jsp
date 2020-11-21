<%@ include file="dbcom.jsp" %>
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
.table-content{
   margin-left:120px;
   
}
.form-control{
   margin:10px;
}
</style>

<script type="text/javascript">
   function validate(){
	   var course=document.getElementById("course").value;
	   var fee=document.getElementById("fee").value;
	   var dur=document.getElementById("dur").value;
	   var regex = new RegExp("^[0-9a-zA-Z\b ]+$");
	   var regex1 = new RegExp("^[a-zA-Z\b ]+$");
	   var re = /[0-9]/;
	   
	   
	   if(regex.exec(dur)==null){
	      document.getElementById("du").innerHTML="*please enter a valid Duration";
		  document.getElementById("dur").value=null;
		   return false;
	  
	   }else if(regex1.exec(course)==null){
	      document.getElementById("na").innerHTML="*Please enter a valid Name";
		  document.getElementById("course").value=null;
		    return false;  
			
	    }else if(!/^[0-9]+$/.test(fee)){
	      document.getElementById("fe").innerHTML="*Please enter a valid Number";
		  document.getElementById("fee").value=null;
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
		<jsp:include page="institute-nav-bar.jsp" />
      </div>
    </div>
   </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	  <h2 class="main-bar-content">Welcome <%=pp%> to Hospital Profile</h2>
        <div class="article">
  
				<form method="post" action="inst-add-course1.jsp" onSubmit="return validate()">
				<table  class="table-content">
				
				<tr>
				<td><span class="style3">Course Name:</span></td>
					<td><input type="text" name="course" id="course" class="form-control" placeholder="Course Name" required=""/></td>
					<td></td>
					<td><span class="style3">Course Fee:</span></td>
					<td><input type="text" name="fee" id="fee" class="form-control" placeholder="Course Fee" required="" /></td>
					
				</tr>
				
			    <tr>
					<td></td>
					<td> <span id="na" style="color:#FF0000; margin-left:10px;"> </span></td>
					<td></td>
					<td></td>
					<td> <span id="fe" style="color:#FF0000; margin-left:10px;"> </span></td>
				</tr>
	
				<tr> 
				    <td><span class="style3">Course Duration:</span></td>
					<td><input type="text" name="dur" id="dur" placeholder="Course Duration" class="form-control" required="" ></td>
					<td></td>
					<td><span class="style3">Timing:</span></td>
					<td><input type="time" name="timing" id="timing" class="form-control" placeholder="Time" required="" /></td>
				</tr>
				
				<tr>
					<td></td>
					<td> <span id="du" style="color:#FF0000; margin-left:10px;"> </span></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				
				<tr>
					<td><span class="style3">Start On Date:</span></td>
					<td><input type="date" name="starton" id="starton" class="form-control" placeholder="Start On Date" required=""  /></td>
					<td></td>
					
					<td><span class="style3">Discription:</span></td>
					<td><textarea name="desc" rows="6" class="form-control" cols="35" required=""></textarea></td>
				</tr>
					 
				<tr>
				<td></td>
				<td></td>
				<td><input type="submit" value="Update" class="btn btn-primary"> </td>
				<td></td>
				<td></td>
				</tr>  
				</table>
				</form>
			
			


      </div>
  </div>

      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="institute-left.jsp" />
        </div>
        
      </div>
	  

      
	 </div>
   </div>
</div>
<div class="footer" style="margin-top:150px;">
    <jsp:include page="member-footer.jsp" />
</div>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
