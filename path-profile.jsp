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
	   var pincode=document.getElementById("pincode").value;
	   var city=document.getElementById("city").value;
	   var area=document.getElementById("area").value;
	   var district=document.getElementById("district").value;
	   var state=document.getElementById("state").value;
	   var phone=document.getElementById("phone").value;
	   var mail=document.getElementById("mail").value;
	   var timing=document.getElementById("timing").value;
	   var plot=document.getElementById("plot").value;
	   var regex = new RegExp("^[a-zA-Z\b ]+$");
	   var mobi = /^[1-9]{1}[0-9]{9}$/;
	   var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	   var add= /^[a-zA-Z0-9\s\,\''\-]*$/;
	   var pat1=/^\d{6}$/;
		
	   if(regex.exec(city)==null){
	      document.getElementById("cit").innerHTML="*please enter a valid city";
		  document.getElementById("city").value=null;
		   return false;
	  
	   }else if(regex.exec(district)==null){
	      document.getElementById("dist").innerHTML="*Please enter a valid District";
		  document.getElementById("district").value=null;
		    return false; 
			
	   }else if(regex.exec(state)==null){
	      document.getElementById("stat").innerHTML="*Please enter a valid State";
		  document.getElementById("state").value=null;  
			return false; 		
			
	   }else if(reg.test(mail)==false){		
			document.getElementById("mai").innerHTML="*Please enter a valid Mail";
			document.getElementById("mail").value=null;
		    return false; 
	   }else if(mail.indexOf(".") == -1) {	
	         document.getElementById("mai").innerHTML="*Please enter a valid Mail";
			 document.getElementById("mail").value=null;
			 return false;
			 
	   }else if(mobi.test(phone)==false){
	      document.getElementById("phh").innerHTML="*Please enter a valid Phone No";
		  document.getElementById("phone").value=null;
		  return false;
			
	   }else if(!pat1.test(pincode)){
	      document.getElementById("pin").innerHTML="*Please enter a valid Pincode";
		  document.getElementById("pincode").value=null;
		  return false; 
			
	   }else if(add.test(plot)==false){
	      document.getElementById("plt").innerHTML="*Please enter a valid Plot no";
		  document.getElementById("plot").value=null;
		  return false; 
	   
	   }else if(add.test(area)==false){
	      document.getElementById("are").innerHTML="*Please enter a valid Area";
		  document.getElementById("area").value=null;
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
	  <h2 class="main-bar-content">Welcome <%=pp%> to Hospital Profile</h2>
        <div class="article">
  
  
			<%
			try{
				String s1=(String) session.getAttribute("id");
				ResultSet rs=st.executeQuery("select b. * from organisation b, login a where a.id='"+s1+"' and a.id=b.oid and a.type='Path lab'");
				if(rs.next()){
			%>
				<form method="post" action="path-profile1.jsp" onSubmit="return validate()">
				<table  class="table-content">
				
				<tr>
				<td><span class="style3">Name:</span></td>
					<td><input type="text" name="nam" class="form-control" value="<%=rs.getString(2)%>" readonly="true" required ></td>
					<td></td>
					<td><span class="style3">Type:</span></td>
					<td><input type="text" name="type" class="form-control" value="<%=rs.getString(12)%>" readonly="true" required /></td>
					
				</tr>
				
				<tr> 
				    <td>Pincode:</td>
					<td><input type="text" name="pincode" id="pincode" class="form-control"  value="<%=rs.getString(6)%>" required></td>
					<td></td>
					<td><span class="style3">City:</span></td>
					<td><input type="text" name="city" id="city" class="form-control" placeholder="City" value="<%=rs.getString(5)%>" required /></td>
				</tr>
				
				<tr>
					<td></td>
					<td> <span id="pin" style="color:#FF0000; margin-left:10px;"> </span></td>
					<td></td>
					<td></td>
					<td> <span id="cit" style="color:#FF0000; margin-left:10px;"> </span></td>
				</tr>
				
			   <tr>
					<td><span class="style3">Area:</span></td>
					<td><input type="text" name="area" id="area" class="form-control" placeholder="Area" value="<%=rs.getString(4)%>" required /></td>
					<td></td>
					
					<td><span class="style3">District:</span></td>
					<td><input type="text" name="district" id="district" class="form-control" placeholder="District" value="<%=rs.getString(7)%>" required /></td>
			  </tr>
			  
			  <tr>
					<td></td>
					<td> <span id="are" style="color:#FF0000; margin-left:10px;"> </span></td>
					<td></td>
					<td></td>
					<td> <span id="dist" style="color:#FF0000; margin-left:10px;"> </span></td>
				</tr>
			
				<tr>
					   <td>State:</td>
					   <td><input type="text" name="state" id="state" class="form-control" placeholder="State" value="<%=rs.getString(8)%>" required /></td>      
					   <td></td>
					   <td>Phone:</td>
				       <td><input type="text" name="phone" id="phone" class="form-control" placeholder="Phone" value="<%=rs.getString(9)%>" required /></td>  
				</tr>
				
				
				<tr>
					<td></td>
					<td> <span id="stat" style="color:#FF0000; margin-left:10px;"> </span></td>
					<td></td>
					<td></td>
					<td> <span id="phh" style="color:#FF0000; margin-left:10px;"> </span></td>
			   </tr>
				
				<tr>	 
					   <td>Mail:</td>
					   <td><input type="text" name="mail" id="mail" class="form-control" placeholder="Mail" value="<%=rs.getString(10)%>" required /></td>
					   <td></td>
					   <td>Timing:</td>
					   <td><input type="time" name="timing" id="timing" class="form-control"  value="<%=rs.getString(11)%>" required /></td>
				</tr>
				
				 <tr>
					<td></td>
					<td> <span id="mai" style="color:#FF0000; margin-left:10px;"> </span></td>
					<td></td>
					<td></td>
					<td> <span id="time" style="color:#FF0000; margin-left:10px;"> </span></td>
			   </tr>
			   
			   
				    <tr>	
					 <td><span class="style3">Plot No </span></td>
					 <td><input type="text" name="plotno" id="plot" class="form-control" placeholder="Plot No" value="<%=rs.getString(3)%>" required /></td>
					  
					<td></td>
				   <td>&nbsp;</td>
				   <td>       
				   
				   </tr>
				   
			  <tr>
				<td></td>
				<td> <span id="plt" style="color:#FF0000; margin-left:10px;"> </span></td>
				<td></td>
				<td></td>
				<td></td>
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
			
			<%}
			con.close();
			}catch(Exception ee) { }
			%>


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
<div class="footer" style="margin-top:150px;">
    <jsp:include page="member-footer.jsp" />
</div>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
