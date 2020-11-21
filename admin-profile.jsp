<%@ include file="dbcom.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smart City | Support</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="footerr.css">
<style type="text/css">
.main-bar-content{
   margin-left:120px;
   margin-top:80px;
}
.table-content{
   margin-top:40px;
   margin-left:120px;
}
.form-control{
   margin:10px;
}
</style>
<script type="text/javascript">
   function validate(){
	   var naa=document.getElementById("nam").value;
	   var fnn=document.getElementById("fn").value;
	   var email=document.getElementById("em").value;
	   var mobile=document.getElementById("mob").value;
	   var cad=document.getElementById("ca").value;
	   var pad=document.getElementById("pa").value;
	   var regex = new RegExp("^[a-zA-Z\b ]+$");
	   var mobi = /^[1-9]{1}[0-9]{9}$/;
	   var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	   var add= /^[a-zA-Z0-9\s\,\''\-]*$/;
	   
	   if(regex.exec(naa)==null){
	      document.getElementById("na").innerHTML="*please enter a valid Name";
		   return false;
	  
	   }else if(regex.exec(fnn)==null){
	      document.getElementById("fnnn").innerHTML="*Please enter a valid Name";
		    return false; 
			
	   }else if(reg.test(email)==false){		
			document.getElementById("ema").innerHTML="*Please enter a valid Email";
		    return false; 
	   }else if(email.indexOf(".") == -1) {	
	         document.getElementById("ema").innerHTML="*Please enter a valid Email";
			 return false;
			 
	   }else if(mobi.test(mobile)==false){
	      document.getElementById("phh").innerHTML="*Please enter a valid Phone No";
		    return false;
			
	   }else if(add.test(cad)==false){
	      document.getElementById("cadd").innerHTML="*Please enter a valid Address";
		    return false; 
			
	   }else if(add.test(pad)==false){
	      document.getElementById("padd").innerHTML="*Please enter a valid Address";
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
		<jsp:include page="admin-nav-bar.jsp" />
      </div>
      
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	  <h2 class="main-bar-content">Welcome <%=pp%> to Admin Home</h2>
	  <%
         try{
    String s1=(String) session.getAttribute("id");
	ResultSet rs=st.executeQuery("select b. * from login a,admin b where a.id='"+s1+"' and a.id=b.aid and a.type='ADMIN'");
	if(rs.next()){
    %>
    <form method="post" onSubmit="return validate()" action="admin-profile1.jsp">
	<table  class="table-content">
	
    <tr>
	<td><span class="style4">Full Name</span></td>
		<td><input type="text" class="form-control" name="nam" id="nam" value="<%=rs.getString(3)%>" ></td>
		<td></td>
		<td><span class="style4">Father Name</span></td>
		<td><input name="fnm"  type="text" id="fn" class="form-control" value="<%=rs.getString(4)%>" ></td>
	</tr>
	
	<tr>
	    <td></td>
		<td> <span id="na" style="color:#FF0000; margin-left:10px;"> </span></td>
		<td></td>
		<td></td>
		<td> <span id="fnnn" style="color:#FF0000; margin-left:10px;"> </span></td>
	</tr>
	
    <tr> 
		<td><span class="style4">Date of Birth</span></td>
		<td><input type="date" name="dt" class="form-control" value="<%=rs.getString(5)%>" required="" ></td>
		<td></td>
		<td><span class="style4">Gender</span></td>
		<td>
		  <span class="style4">
		  <%
		  String gen=rs.getString(6);
		  if(gen.equalsIgnoreCase("male")) {
		 %>
		    <input type="radio" name="gen" value="Male" checked="checked"  />
		    Male 
		    <input type="radio" name="gen" value="Female"  />
		    Female
		    <% }else {   %>
		 
		    <input type="radio" name="gen" value="Male" checked="checked"/>
		    Male 
		    <input type="radio" name="gen" value="Female"/>
		    Female
		    <%  }    %>		
		    </span></td>
	</tr>
        <tr>
		 <td><span class="style4">Mobile No.</span></td>
		<td><input type="text" name="mn" class="form-control" id="mob"  value="<%=rs.getString(7)%>" required=""></td>
		<td></td>
		
	    <td><span class="style4">Email</span></td>
		<td><input name="em" type="email" class="form-control" id="em" value="<%=rs.getString(8)%>" required=""></td>
	</tr>
	
	<tr>
	    <td></td>
		<td> <span id="phh" style="color:#FF0000; margin-left:10px;"> </span></td>
		<td></td>
		<td></td>
		<td> <span id="ema" style="color:#FF0000; margin-left:10px;"> </span></td>
	</tr>

	<tr>	
		<td><span class="style4">Current Address</span></td>
	   <td><input type="text" name="text1" class="form-control" id="ca" value="<%=rs.getString(9)%>" required=""></td>
	   <td></td>
	   <td><span class="style4">Permanent Address</span></td>
	   <td><input name="text2" type="text" class="form-control" id="pa" value="<%=rs.getString(10)%>" required="">	</tr>	
	<tr>
	
	<tr>
	    <td></td>
		<td> <span id="cadd" style="color:#FF0000; margin-left:10px;"> </span></td>
		<td></td>
		<td></td>
		<td> <span id="padd" style="color:#FF0000; margin-left:10px;"> </span></td>
	</tr>
	
	<td height="48"></td>
	<td></td>
	<td><input type="submit" class="btn btn-primary" value="Update"> </td>
	<td><span class="style4"></span></td>
	<td></td>
	</tr>  
	</table>
	</form>

<%}
con.close();
}catch(Exception ee) { }
%>
 

        </div>

      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="admin-left.jsp" />
        </div>
        
      </div>
	  

      
	  </div>
    </div>
  </div>
  <div class="footer">
    <footer>
	<div class="Footer-wrapper" style="margin-top:350px;">
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
			    <div class="col-sm footer-content2">
			      <a href="#">Privacy</a>
			    </div>
			    <div class="col-sm footer-content2">
			      <a href="#">Terms & Condition</a>
			    </div>
			    <div class="col-sm footer-content2">
			      <a href="#"><i class="fa fa-question-circle" aria-hidden="true"></i></a>&nbsp;&nbsp;&nbsp;<a href="#">Help</a>
				  </div>
		        </div>
		<div class="last"><p>Copyright &copy; 2007 Smart_city! Designed by <a href="#">Neeraj & Nishant</a></p></div>
	</div>
  </footer>

  </div>



<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
