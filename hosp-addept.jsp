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
	   var type=document.getElementById("type").value;
	   var regex = new RegExp("^[a-zA-Z\b ]+$");
	   
	   if(regex.exec(type)==null){
	      document.getElementById("typ").innerHTML="*please enter a valid Type";
		  document.getElementById("type").value=null;
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
		<jsp:include page="hospital-nav-bar.jsp" />
      </div>
    </div>
   </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	  <h2 class="main-bar-content">Welcome <%=pp%> to Member Home</h2>
	     <div class="article">
		   <form action="hosp-addept1.jsp" onSubmit="return validate()">
		     <table style="margin-left:120px; margin-top:30px;">
			   <tr> 
				<td>Organisation ID: </td>
				<td><input type="text" name="oid" class="form-control" value="<%=session.getAttribute("id")%>" readonly="true" /></td>
				</tr>
				<tr>
				<td>Department Name:* </td>
				<td>&nbsp;&nbsp;<select name="select" class="form-control" data-toggle="dropdown">
                      <option value="ANESTHETICS">Anesthetics</option>
                      <option value="BREST SCREENING">Breast Screening</option>
                      <option value="CARDIOLOGY">Cardiology</option>
					  <option value="ENT">(ENT)</option>
					  <option value="GASTROENTEROLOGY">Gastroenterology</option>
					  <option value="GENERAL SURGERY">General Surgery</option>
					  <option value="GYNECOLOGY">Gynecology</option>
					  <option value="HEMATOLOGY">Hematology</option>
					  <option value="NEONATAL UNIT">Neonatal Unit</option>
					  <option value="NERUROLOGY">Nerurology</option>
					  <option value="NUTRIATION AND DIETETICES">Nutriation and Dietetices</option>
					  <option value="ONCOLOGY">Oncology</option>
					  <option value="OPHTHALMOLOGY">Ophthalmology</option>
					  <option value="ORTHOPEDICS">orthopedics</option>
					  <option value="PHYSIOTHERAPHY">Physiotherapy</option>
					  <option value="RENAL UNIT">Renal Unit</option>
					  <option value="SEXUAL HEALTH">Sexual Health</option>
					  <option value="UROLOGY">Urology</option> 
                    </select></td>
				</tr>
				<tr>
				<td>Type:*</td>
				<td><input type="text" class="form-control" id="type" name="type" required /></td></tr>
				<tr>
				<tr>
					<td></td>
					<td> <span id="typ" style="color:#FF0000; margin-left:10px;"> </span></td>
				</tr>
				
				<td>Timing:*</td>
				<td><input type="time" class="form-control" name="timing" required></td>
			   </tr>
			   
			<tr><td><input type="submit" value="SUBMIT" style="margin-left:100px;" class="btn btn-primary" ></td></tr>		
			 </table>
		   </form>
		 </div>
        </div>

      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="hospital-left.jsp" />
        </div>
        
      </div>
	  

      
	 </div>
   </div>
</div>
<div class="footer" style="margin-top:300px;">
    <jsp:include page="member-footer.jsp" />
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
