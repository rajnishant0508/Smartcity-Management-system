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
.article{
   margin-left:120px;
   margin-top:30px;
}
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
     
     

 </style>


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
	  <h2 class="main-bar-content">Welcome <%=pp%> to Hotel Today's Check-Out Portal</h2>
        <div class="article">
          <a href="hotel-chkout-update-status.jsp" class="myButton" style="margin-top:20px;">Update Status</a><br />  
		  <%
		      String iid=(String)session.getAttribute("id"); 
		      String dt=new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
			  //out.print(dt);
			  try{
			     ResultSet rs=st.executeQuery("select * from booking1 b, customer c where b.hid='"+iid+"' and b.cid=c.cid and b.tos='"+dt+"'");
				 
				 if(rs.next()){
			     rs.beforeFirst();
		  %>
		  
		   <div class="table-responsive-xl" >
			  <table class="table table-hover">
			      <thead>
					<tr>
					  <th scope="col">Name</th>
					  <th scope="col">Check-Out</th>
					  <th scope="col">Address</th>
					  <th scope="col">Mail</th>
					  <th scope="col">Phone No</th>
					  <th scope="col">No's of Room</th>
					  <th scope="col">Booking Date</th>
					  <th scope="col">Dob</th>
					  <th scope="col">Gender</th>
					  <th scope="col">Amount</th>
					</tr>
				  </thead>
			     <% while(rs.next()){ 	%>
			     <tbody>
						<tr>
						<td><%=rs.getString(15)%></td>
						<td><%=rs.getString(9)%></td>
						<td><%=rs.getString(16)%></td>
						<td><%=rs.getString(18)%></td>
						<td><%=rs.getString(17)%></td>
						<td><%=rs.getString(7)%></td>
						<td><%=rs.getString(10)%></td>
						<td><%=rs.getString(19)%></td>
						<td><%=rs.getString(20)%></td>
						<td><%=rs.getString(11)%></td>
			            </tr>
		         </tbody>
				 <% 	
					}
				 %> 
		    </table>
		  </div>
		  
		  <%
				}else{
					out.print("<font color=red size=+3>Today's No Check-Out Available...!!!</font>");
				}
				con.close();
				}catch(Exception e){  }
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




<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
