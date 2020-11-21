<%@ include file="dbcom.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" type="text/css" href="footerr.css">
	<link rel="stylesheet" type="text/css" href="sidenav.css">
	<link rel="stylesheet" type="text/css" href="nav.js">
	
	<style type="text/css">
	.header{
	  
	  background-image:url(hal-gatewood-THLqyxkdtfE-unsplash.jpg);
	  height:700px;
	  width:100%;
	  background-repeat: no-repeat;
	  background-size: cover;
	
	}
	
	
	
	</style>
	
	<style type="text/css">
<!--
.style1 {
	font-size: large;
	font-weight: bold;
	color: #000000;
}

-->
</style>




 <style> 
  .myButton {
	-moz-box-shadow: 0px 1px 0px 0px #fff6af;
	-webkit-box-shadow: 0px 1px 0px 0px #fff6af;
	box-shadow: 0px 1px 0px 0px #fff6af;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffec64), color-stop(1, #ffab23));
	background:-moz-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:-webkit-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:-o-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:-ms-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:linear-gradient(to bottom, #ffec64 5%, #ffab23 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffec64', endColorstr='#ffab23',GradientType=0);
	background-color:#ffec64;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #ffaa22;
	display:inline-block;
	cursor:pointer;
	color:#333333;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:7px 44px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffee66;
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffab23), color-stop(1, #ffec64));
	background:-moz-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-webkit-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-o-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-ms-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:linear-gradient(to bottom, #ffab23 5%, #ffec64 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffab23', endColorstr='#ffec64',GradientType=0);
	background-color:#ffab23;
}
.myButton:active {
	position:relative;
	top:1px;
}
     
      #map {
        width: 920px;
        height: 600px;
      }
#style15 {font-size:20px}
 </style>


</head>
<body>

<!-- nav-bar -->

<div class="nav">
  <jsp:include page="user-ambulance-nav-bar.jsp"/>
</div>


<div>
<jsp:include page="user-left.jsp" />
</div>



 <div class="header">
  <div class="container" style="max-width:1000px;"><br /><br /><br />
   <p style="color:#FFFF00; text-align:center; font-size:40px;">Welcome <%=((String)session.getAttribute("logname")).toUpperCase()%> to Vehicle Information</p>
   <p style="font-size: 26px; color:#FFFFFF; text-align: center;">Helping to heal our best asset�our children.</p>
   
      <%
			String lati ="";
			String longi = "";
			String  id=request.getParameter("em");			
			%>	   
			<% 
			try{
						 String qry="select * from vehicle  where vid='"+id+"'";
						// out.print(qry);
						 ResultSet rs=st.executeQuery(qry);	 		   
						 while(rs.next())
						 { 
							lati = rs.getString("lati");
							longi = rs.getString("longi");
			%>
		   <div class="article">
			<form  action="user-chk-ambul.jsp">
			<input type="hidden" name="vid" value="<%=rs.getString(1)%>"/>
			<input type="hidden" name="vno" value="<%=rs.getString(2)%>"/>
			<input type="hidden" name="model" value="<%=rs.getString(3)%>"/>
			<input type="hidden" name="type" value="<%=rs.getString(17)%>"/>
			<input type="hidden" name="avail" value="<%=rs.getString(14)%>"/>
			<input type="submit"  class="myButton" value="Book Now">
			</form>
			 
			<table style="margin-top:50px;">
			<tr><td>
			<table width="515" height="384"  cellpadding="5">
			<tr><td width="400"><span class="style15"><strong>Vehicle Number</strong></span></td> 
			<td width="379"><span class="style15"><%=rs.getString(2)%></span></td>
			</tr>
			
			<tr><td width="120"><span class="style15"><strong>Model</strong></span></td>
			<td><span class="style15"><%=rs.getString(3)%></span></td>
			</tr>
			
			<tr><td width="120"><span class="style15"><strong>Contact Number</strong></span></td>
			<td><span class="style15"><%=rs.getString(6)%></span></td>
			</tr>
			
			<tr><td width="120"><span class="style15"><strong>City</strong></span></td>
			<td><span class="style15"><%=rs.getString(8)%></span></td>
			</tr>
			
			<tr><td width="120"><span class="style15"><strong>State</strong></span></td>
			<td><span class="style15"><%=rs.getString(9)%></span></td>
			</tr>
			
			<tr><td width="120"><span class="style15"><strong>Timing</strong></span></td>
			<td><span class="style15"><%=rs.getString(11)%></span></td>
			</tr>
			 
			
			<tr><td width="120"><span class="style15"><strong>BasePrice</strong></span></td>
			<td><span class="style15"><%=rs.getString(12)%></span></td>
			</tr>
			
			<tr><td width="120"><span class="style15"><strong>Per Km Price</strong></span></td>
			<td><span class="style15"><%=rs.getString(13)%></span></td>
			</tr>
			
			<tr><td width="120"><span class="style15"><strong>Availability</strong></span></td>
			<td><span class="style15"><%=rs.getString(14)%></span></td>
			</tr>
			</table>			 
			
			</td><td>
			<img src="./images/vehi/<%=rs.getString(18)%>" width="500" height="360" alt="no photo" />
			</td></tr>
			</table>
						<% }
						%>  	 
					   </table>		 
			
			 <%
				try{
				   String z=request.getParameter("a1");
				   if(z.equalsIgnoreCase("error")){
					 out.print("<font color=black size=+3 style='margin-left:300px'>Ambulance Not Available...!!!</font>");
				   }
				}catch(Exception e){   }
			  %>
			  
			  
			<%
			con.close();
			}catch(Exception e){  }
			%>	
 
 </div>
</div>





<footer>
<jsp:include page="user-footer.jsp" />
</footer>






<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script type="text/javascript" src="nav.js"></script>
	
</body>
</html>