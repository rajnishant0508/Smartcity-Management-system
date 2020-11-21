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
	   var std=document.getElementById("std").value;
	   var addrs=document.getElementById("addrs").value;
	   var locat=document.getElementById("locat").value;
	   var ph=document.getElementById("ph").value;
	   var ownph=document.getElementById("ownph").value;
	   var ownmai=document.getElementById("ownmai").value;
	   var mail1=document.getElementById("mail1").value;
	   var websit=document.getElementById("websit").value;
	   
	   var regex = new RegExp("^[a-zA-Z\b ]+$");
	   var mobi = /^[1-9]{1}[0-9]{9}$/;
	   var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	   var add= /^[a-zA-Z0-9\s\,\''\-]*$/;
	   var pat1=/^\d{6}$/;
	   var pat2=/^\d{4}$/;
		
	   if(regex.exec(addrs)==null){
	      document.getElementById("addr").innerHTML="*please enter a valid Address";
		  document.getElementById("addrs").value=null;
		   return false;
	  
	   }else if(regex.exec(locat)==null){
	      document.getElementById("loc").innerHTML="*Please enter a valid Location";
		  document.getElementById("locat").value=null;
		    return false;  			 		
			
	   }else if(reg.test(ownmai)==false){		
			document.getElementById("omai").innerHTML="*Please enter a valid Mail";
			document.getElementById("ownmai").value=null;
		    return false; 
	   }else if(ownmai.indexOf(".") == -1) {	
	         document.getElementById("omai").innerHTML="*Please enter a valid Mail";
			 document.getElementById("ownmai").value=null;
			 return false;
			 
	   }else if(reg.test(mail1)==false){		
			document.getElementById("mai1").innerHTML="*Please enter a valid Mail";
			document.getElementById("mail1").value=null;
		    return false; 
	   }else if(mail1.indexOf(".") == -1) {	
	         document.getElementById("mai1").innerHTML="*Please enter a valid Mail";
			 document.getElementById("mail1").value=null;
			 return false;		 
			 
	   }else if(mobi.test(ph)==false){
	      document.getElementById("phh").innerHTML="*Please enter a valid Phone No";
		  document.getElementById("ph").value=null;
		  return false;
		
	   }else if(mobi.test(ownph)==false){
	      document.getElementById("oph").innerHTML="*Please enter a valid Phone No";
		  document.getElementById("ownph").value=null;
		  return false;	  
			
	   }else if(!pat2.test(std)){
	      document.getElementById("stdd").innerHTML="*Please enter a valid STD no";
		  document.getElementById("std").value=null;
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
		<jsp:include page="hotel-nav-bar.jsp" />
      </div>
    </div>
   </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	  <h2 class="main-bar-content">Welcome <%=pp%> to Hotel Profile</h2>
        <div class="article">
  
  
			<%
			try{
				String s1=(String) session.getAttribute("id");
				ResultSet rs=st.executeQuery("select b. * from hotel b, login a where a.id='"+s1+"' and a.id=b.hid");
				if(rs.next()){
			%>
				<form method="post" action="hotel-profile1.jsp" onSubmit="return validate()">
				<table width="708" class="table-content">
				
				<tr>
				<td><span class="style3">Name:</span></td>
					<td><input type="text" name="nam" class="form-control" value="<%=rs.getString(4)%>" readonly="true" ></td>
					<td></td>
					<td><span class="style3">Type:</span></td>
					<td><input type="text" name="type" class="form-control" value="<%=rs.getString(3)%>" readonly="true" />
					
				</tr>
				<tr> 
				    <td>Std:</td>
					<td><input type="text" name="std" id="std" class="form-control"  value="<%=rs.getString(5)%>" required></td>
					<td></td>
					<td><span class="style3">Phone:</span></td>
					<td><input type="text" name="ph" id="ph" class="form-control" placeholder="City" value="<%=rs.getString(6)%>" required /></td>
				</tr>
				
				<tr>
					<td></td>
					<td> <span id="stdd" style="color:#FF0000; margin-left:10px;"> </span></td>
					<td></td>
					<td></td>
					<td> <span id="phh" style="color:#FF0000; margin-left:10px;"> </span></td>
				</tr>
				
			    <tr>
					 <td><span class="style3">Address:</span></td>
					<td><input type="text" name="addrs" id="addrs" class="form-control" placeholder="Area" value="<%=rs.getString(8)%>" required /></td>
					<td></td>
					
					<td><span class="style3">Location:</span></td>
					<td><input type="text" name="locat" id="locat" class="form-control" placeholder="District" value="<%=rs.getString(9)%>"  required /></td>
				</tr>
				
				<tr>
					<td></td>
					<td> <span id="addr" style="color:#FF0000; margin-left:10px;"> </span></td>
					<td></td>
					<td></td>
					<td> <span id="loc" style="color:#FF0000; margin-left:10px;"> </span></td>
				</tr>
			
				<tr>
					   <td>Owner's Mail:</td>
					   <td><input type="text" name="ownmail" id="ownmail" class="form-control" placeholder="State" value="<%=rs.getString(13)%>" required />         
					   <td></td>
					   <td>Owner's Phone:</td>
					   <td><input type="text" name="ownph"  id="ownph" class="form-control" placeholder="Phone" value="<%=rs.getString(12)%>" required />          
			   </tr>
			   
			   <tr>
					<td></td>
					<td> <span id="omai" style="color:#FF0000; margin-left:10px;"> </span></td>
					<td></td>
					<td></td>
					<td> <span id="oph" style="color:#FF0000; margin-left:10px;"> </span></td>
			  </tr>
			  
			  
			  <tr>
					   <td>Hotel Mail:</td>
					   <td><input type="text" name="mail1" id="mail1" class="form-control" placeholder="Mail" value="<%=rs.getString(14)%>" required />
					   <td></td>
					   <td>Hotel Website:</td>
					   <td><input type="text" name="websit" id="websit" class="form-control"  value="<%=rs.getString(15)%>" required />
			  </tr>
			  
			  <tr>
					<td></td>
					<td> <span id="mai1" style="color:#FF0000; margin-left:10px;"> </span></td>
					<td></td>
					<td></td>
					<td> <span id="web" style="color:#FF0000; margin-left:10px;"> </span></td>
			  </tr>
					
					
			 <tr>
				<td><span class="style3">Check In:</span></td>
					<td><input type="time" name="tt1" class="form-control" value="<%=rs.getString(10)%>" required ></td>
					<td></td>
					<td><span class="style3">Check Out:</span></td>
					<td><input type="time" name="tt2" class="form-control" value="<%=rs.getString(11)%>" required /></td>
					
			</tr>
			
			<tr>
				<td><span class="style3">Hotel Open Time:</span></td>
					<td><input type="time" name="tt3" class="form-control" value="<%=rs.getString(17)%>" required ></td>
					<td></td>
					<td><span class="style3">Payment Type:</span></td>
					<td><input type="text" name="pmant" class="form-control" value="<%=rs.getString(3)%>" required ></td>
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
			<jsp:include page="hotel-left.jsp" />
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
