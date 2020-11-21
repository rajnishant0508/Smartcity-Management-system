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
	   var cadd=document.getElementById("cadd").value;
	   var ph1=document.getElementById("ph1").value;
	   var ph2=document.getElementById("ph2").value;
	   var mail=document.getElementById("mail").value;
	   var about=document.getElementById("about").value;
	   var regex = new RegExp("^[a-zA-Z\b ]+$");
	   var mobi = /^[1-9]{1}[0-9]{9}$/;
	   var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	   var add= /^[a-zA-Z0-9\s\,\''\-]*$/;
	   var pat1=/^\d{6}$/;
		
	   if(regex.exec(about)==null){
	      document.getElementById("abt").innerHTML="*please enter a valid discription";
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
			 
	   }else if(mobi.test(ph1)==false){
	      document.getElementById("phh1").innerHTML="*Please enter a valid Phone No";
		  document.getElementById("ph1").value=null;
		  return false; 
	   
	   }else if(mobi.test(ph2)==false){
	      document.getElementById("phh2").innerHTML="*Please enter a valid Phone No";
		  document.getElementById("ph2").value=null;
		  return false; 
					
	  
	   }else if(add.test(cadd)==false){
	      document.getElementById("caa").innerHTML="*Please enter a valid Address";
		  document.getElementById("cadd").value=null;
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
	  <h2 class="main-bar-content">Welcome <%=pp%> to Institute Profile</h2>
        <div class="article">
  
  
			<%
			try{
				String s1=(String) session.getAttribute("id");
				ResultSet rs=st.executeQuery("select b. * from institute b, login a where a.id='"+s1+"' and a.id=b.instid and a.type='INSTITUTE'");
				if(rs.next()){
			%>
				<form method="post" action="inst-profile1.jsp" onSubmit="return validate()">
				<table  class="table-content">
				
				<tr>
				<td><span class="style3">Name:</span></td>
					<td><input type="text" name="nam" class="form-control" value="<%=rs.getString(2)%>" readonly="true" ></td>
					<td></td>
					<td><span class="style3">Type:</span></td>
					<td><input type="text" name="type" class="form-control" value="<%=rs.getString(3)%>" readonly="true" />
					
				</tr>
				
				<tr> 
				    <td>Current Address:</td>
					<td><input type="text" name="cadd" id="cadd" class="form-control" placeholder="Current Address" value="<%=rs.getString(5)%>" required></td>
					<td></td>
					<td><span class="style3">Mail:</span></td>
					<td><input type="email" name="mail" id="mail" class="form-control" placeholder="Email" value="<%=rs.getString(8)%>" required /></td>
				</tr>
				
				<tr>
					<td></td>
					<td> <span id="caa" style="color:#FF0000; margin-left:10px;"> </span></td>
					<td></td>
					<td></td>
					<td> <span id="mai" style="color:#FF0000; margin-left:10px;"> </span></td>
				</tr>
				
				<tr>
					 <td><span class="style3">Phone1:</span></td>
					<td><input type="text" name="ph1" id="ph1" class="form-control" placeholder="Phone no" value="<%=rs.getString(6)%>" required /></td>
					<td></td>
					
					<td><span class="style3">Phone2:</span></td>
					<td><input type="text" name="ph2" id="ph2" class="form-control" placeholder="Phone no" value="<%=rs.getString(7)%>" required /></td>
				</tr>
				
				<tr>
					<td></td>
					<td> <span id="phh1" style="color:#FF0000; margin-left:10px;"> </span></td>
					<td></td>
					<td></td>
					<td> <span id="phh2" style="color:#FF0000; margin-left:10px;"> </span></td>
				</tr>
			
					 <tr>
					   <td>About:</td>
					   <td><input type="text" name="about" id="about" class="form-control" placeholder="About" value="<%=rs.getString(9)%>" required />         
					   <td></td>
					   
	                 </tr>
					 
					 
					<tr>
					<td></td>
					<td> <span id="abt" style="color:#FF0000; margin-left:10px;"> </span></td>
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
			<jsp:include page="institute-left.jsp" />
        </div>
        
      </div>
	  

      
	 </div>
   </div>
</div>
<div class="footer" style="margin-top:200px;">
    <jsp:include page="member-footer.jsp" />
</div>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
