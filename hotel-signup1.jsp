<%@ include file="dbcom.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smart City</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" type="text/css" href="tabcontent.css" />
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="footerr.css">
<style type="text/css">
.main-bar-content{
   margin-left:120px;
   margin-top:80px;
}
.content_main{
 
}
body{
  background-image:url(resturent.jpg);
  background-size:cover;
  background-repeat: no-repeat;
}
</style>

<script type="text/javascript" src="tabcontent.js"></script>
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
        width: 650px;
        height: 400px;
      }
.style12 {font-size: 12px}
.mainbar{
margin-top:80px;

}
.form-control{
   margin:10px;
}
 </style>

<script type="text/javascript" src='js/jquery-1.10.0.min.js'></script>



</head>
<body>


<div class="nav_bar">
<header>
  <div class="collapse bg-dark" id="navbarHeader">
    <div class="container">
      <div class="row">
        <div class="col-sm-8 col-md-7 py-4">
          <h4 class="text-white">Smart City</h4>
          <p style="color:cyan">Smart City The BHUBNESWAR</p>
        </div>
        <div class="col-sm-4 offset-md-1 py-4">
          <h4 class="text-white">Contact</h4>
          <ul class="list-unstyled">
            <li><a href="#" class="text-white"><i class="fa fa-twitter-square fa-2x" aria-hidden="true"></i>&nbsp;&nbsp;Follow on Twitter</a></li>
            <li><a href="#" class="text-white"><i class="fa fa-facebook-official fa-2x" aria-hidden="true"></i>&nbsp;&nbsp; Like on Facebook</a></li>
            <li><a href="#" class="text-white"><i class="fa fa-envelope fa-2x" aria-hidden="true"></i>&nbsp;&nbsp;Email me</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="navbar navbar-dark bg-dark shadow-sm">
    <div class="container d-flex justify-content-between">
      <a class="navbar-brand d-flex align-items-center">
        
        <strong>Smart City</strong>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
  </div>
</header>


</div>
<div class="container">
 <div class="row">
   <div class="col-12">
       <div class="content_main">
         <h1>Hotel Registration</h1>
	     <h2>Basic Info</h2>
       </div>
       <div class="mainn_1">
            <%
			   String restname=request.getParameter("restname");
			   String pw=request.getParameter("pw");
			   String pw1=request.getParameter("pw1");
			   String city=request.getParameter("city");
			   String r1=request.getParameter("r1");
			   String ownerph=request.getParameter("ownerph");
			   String owneremail=request.getParameter("owneremail");
			   String std=request.getParameter("std");
			   String restph=request.getParameter("restph");
			   String r2=request.getParameter("r2");
			   String addrs=request.getParameter("addrs");
			   String lat=request.getParameter("lat");
			   String lng=request.getParameter("lng");
			   String chkin=request.getParameter("chkin");
			   String chkout=request.getParameter("chkout");
			   String acroom1=request.getParameter("acroom1");
			   String acroom2=request.getParameter("acroom2");
			   String room1=request.getParameter("room1");
			   String room2=request.getParameter("room2");
			   String acsingle=request.getParameter("acsingle");
			   String acdouble=request.getParameter("acdouble");
			   String single=request.getParameter("single");
			   String doubls=request.getParameter("double");
			   String acfoot=request.getParameter("acfoot");
			   String acfoots=request.getParameter("acfoots");
			   String singlefoot=request.getParameter("singlefoot");
			   String doublefoot=request.getParameter("doublefoot");
			   String r5=request.getParameter("r5");
			   String rating=request.getParameter("rating");
			   String ac=request.getParameter("ac");
			   String time=request.getParameter("time");
			   String hotelmail=request.getParameter("hotelmail");
			   String hotelwebsite=request.getParameter("hotelwebsite");
			   String dt1=new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
			   
			   int cnt=0;
			   String hid="";
			   String rid="";
			%>
			<%
			  try{
			     
				 ResultSet rs=st.executeQuery("Select * from hotel where name='"+restname+"'");
				 if(rs.next()){
				    out.print("<br><font color=red size=+3>"+ restname +" Allready Registered </font><br />");
				 }else{
				  rs=st.executeQuery("select max(substr(hid,2)) from hotel");
				  try{
				  if(rs.next()){
				     cnt=rs.getInt(1);
				  }
				  }catch(Exception e){ out.print(e);  }
				  cnt++;
				  if(cnt>0 && cnt<10)
					   hid="H0000"+cnt;
				  else if(cnt>9 && cnt<100)
					   hid="H000"+cnt;
				  else if(cnt>99 && cnt<1000)
					   hid="H00"+cnt;
				  else if(cnt>999 && cnt<10000)
					   hid="H0"+cnt;			   
				  else 
					   hid="H"+cnt;	
					   
					   String qry="insert into login values('"+hid+"','"+restname+"','"+hotelmail+"','"+pw+"','"+pw1+"','"+dt1+"','HOTEL','N')";
						
						st.executeUpdate(qry);
				

					   st.executeUpdate("insert into hotel values('"+hid+"','"+hid+"','"+rating+"','"+restname+"','"+std+"','"+restph+"','"+r2+"','"+addrs+"','"+city+"','"+chkin+"','"+chkout+"','"+ownerph+"','"+owneremail+"','"+hotelmail+"','"+hotelwebsite+"','"+r5+"','"+time+"','"+lat+"','"+lng+"')");
				 
				  rs=st.executeQuery("select max(substr(rid,2)) from room");
				  try{
				  if(rs.next()){
				     cnt=rs.getInt(1);
				  }
				  }catch(Exception e){ out.print(e);  }
				  cnt++;
				  if(cnt>0 && cnt<10)
					   rid="R0000"+cnt;
				  else if(cnt>9 && cnt<100)
					   rid="R000"+cnt;
				  else if(cnt>99 && cnt<1000)
					   rid="R00"+cnt;
				  else if(cnt>999 && cnt<10000)
					   rid="R0"+cnt;			   
				  else 
					   rid="R"+cnt;		   
					   st.executeUpdate("insert into room values('"+rid+"','"+hid+"','"+acfoot+"','singleAC','"+acsingle+"','"+acroom1+"','0')");
					  
				  rs=st.executeQuery("select max(substr(rid,2)) from room");
				  try{
				  if(rs.next()){
				     cnt=rs.getInt(1);
				  }
				  }catch(Exception e){ out.print(e);  }
				  cnt++;
				  if(cnt>0 && cnt<10)
					   rid="R0000"+cnt;
				  else if(cnt>9 && cnt<100)
					   rid="R000"+cnt;
				  else if(cnt>99 && cnt<1000)
					   rid="R00"+cnt;
				  else if(cnt>999 && cnt<10000)
					   rid="R0"+cnt;			   
				  else 
					   rid="R"+cnt;		   
					   st.executeUpdate("insert into room values('"+rid+"','"+hid+"','"+acfoots+"','doubleAC','"+acdouble+"','"+acroom2+"','0')");
					 
				
				 rs=st.executeQuery("select max(substr(rid,2)) from room");
				  try{
				  if(rs.next()){
				     cnt=rs.getInt(1);
				  }
				  }catch(Exception e){ out.print(e);  }
				  cnt++;
				  if(cnt>0 && cnt<10)
					   rid="R0000"+cnt;
				  else if(cnt>9 && cnt<100)
					   rid="R000"+cnt;
				  else if(cnt>99 && cnt<1000)
					   rid="R00"+cnt;
				  else if(cnt>999 && cnt<10000)
					   rid="R0"+cnt;			   
				  else 
					   rid="R"+cnt;		   
					   st.executeUpdate("insert into room values('"+rid+"','"+hid+"','"+singlefoot+"','NON AC1','"+single+"','"+room1+"','0')");
					   	  	
					  
				  rs=st.executeQuery("select max(substr(rid,2)) from room");
				  try{
				  if(rs.next()){
				     cnt=rs.getInt(1);
				  }
				  }catch(Exception e){ out.print(e);  }
				  cnt++;
				  if(cnt>0 && cnt<10)
					   rid="R0000"+cnt;
				  else if(cnt>9 && cnt<100)
					   rid="R000"+cnt;
				  else if(cnt>99 && cnt<1000)
					   rid="R00"+cnt;
				  else if(cnt>999 && cnt<10000)
					   rid="R0"+cnt;			   
				  else 
					   rid="R"+cnt;		   
					   st.executeUpdate("insert into room values('"+rid+"','"+hid+"','"+doublefoot+"','NON AC2','"+doubls+"','"+room2+"','0')");
					    
						session.removeAttribute("hid");
						session.setAttribute("hid",hid);
						out.print("<br><font color=green size=+3>"+ restname +" Registered Successfully </font><br />");	    
				 }
			     
				con.close(); 
			  }catch(Exception e){  out.print(e);   }
			%>
        </div>
      </div>
	  
   </div>
</div>
<br />
<footer style="margin-top:340px;">
<jsp:include page="footer.jsp"/>
</footer>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
