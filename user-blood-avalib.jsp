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
	  
	  background-image:url(images/blood.jpg);
	  height:650px;;
	  width:100%;
	  background-repeat: no-repeat;
	  background-size: cover;
	
	}
	
	
	</style>
</head>
<body>

<!-- nav-bar -->

<div class="nav">
  <jsp:include page="user-nav-bar.jsp"/>
</div>


<div>
<jsp:include page="user-left.jsp" />
</div>

<div class="header">
  <div class="container" style="max-width:1000px;"><br /><br /><br /><br />
   <p style="color:#FFFF00; text-align:center; font-size:40px;">Welcome <%=((String)session.getAttribute("logname")).toUpperCase()%> to BloodBank Information</p>
   <p style="font-size: 26px; color:#FFFFFF; text-align: center;">Helping to heal our best asset…our children.</p>
  <div class="row">
   <div class="col-6" style="margin-top:100px;">
	 <%
	     
			 String bloodtype=request.getParameter("bloodtype");
			  String rhtype=request.getParameter("rhtype");
			 String district=request.getParameter("district");
			  //out.print(bloodtype);
			  //out.print(district);
			  
			 
			try{
			 String qry="select * from blood, organisation where grp='"+bloodtype+"' and rhfac='"+rhtype+"' and dist='"+district+"'";
			 ResultSet rs=st.executeQuery(qry);
			 //out.print(qry);
			 if(rs.next()){
			    out.print("<font size=+3 color=#229954 style='margin-left:100px'>Blood is Available...</font>");     
			 }else{
			    out.print("<font size=+3 color=red style='margin-left:100px'>Not Available...!!!</font>");
			 }
			 con.close();
			 }catch(Exception e){   out.print(e);   }
	 %>
	  
			
   </div>
   <div class="col-6" style="margin-top:60px;">
     <img src="images/Screenshot (86).png"/>   
   </div>
  </div>
 </div>
</div>






<footer style="margin-top:0px;">
<jsp:include page="user-footer.jsp" />
</footer>











<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script type="text/javascript" src="nav.js"></script>
	
</body>
</html>