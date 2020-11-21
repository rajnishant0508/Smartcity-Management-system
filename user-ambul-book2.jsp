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
	  height:600px;
	  width:100%;
	  background-repeat: no-repeat;
	  background-size: cover;
	
	}
	.article{
	  margin-left:330px;px;
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

   <style type="text/css">

	#style15 {font-size:20px}
	.form-control{ margin:10px;  }
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
   <p style="color:#FFFF00; text-align:center; font-size:40px;">Welcome <%=((String)session.getAttribute("logname")).toUpperCase()%> to Book Ambulance</p>
   <p style="font-size: 26px; color:#FFFFFF; text-align: center;">Helping to heal our best asset…our children.</p>
   <div class="article">
   
  <%try{
	  String uid=((String)session.getAttribute("id"));
	  String vid=request.getParameter("vid");
	  String lat=request.getParameter("lat");
	  String lng=request.getParameter("lng");
	  String fees=request.getParameter("fees");
	  String bookfromdate=request.getParameter("bookfromdate");
	  String bookfromtime=request.getParameter("bookfromtime");
	  String type=request.getParameter("type");
	  String bookid="";
	   int cnt=0;
	   ResultSet rs=st.executeQuery("select max(substr(bookid,2)) from booking");
		try{
		   if(rs.next())
			  {
			 cnt=rs.getInt(1);
			  }
			} catch(Exception e){}
			  cnt++;
			  if(cnt>0 && cnt<10)
				 bookid="B0000"+cnt;
			  else if(cnt>9 && cnt<100)
				  bookid="B000"+cnt;
			  else if(cnt>99 && cnt<1000)
						   bookid="B00"+cnt;
			  else if(cnt>999 && cnt<10000)
						   bookid="B0"+cnt;			   
			  else  bookid="B"+cnt;	
			  
	String qry="insert into booking values('"+bookid+"','"+vid+"','"+lat+"','"+lng+"','"+bookfromdate+"','"+bookfromtime+"','"+bookfromdate+"','"+bookfromtime+"','0.0','0.0','"+uid+"','"+type+"','Pending')";
	//out.print("<br>"+qry+"<br>");
	st.executeUpdate(qry);
	String qry1="update vehicle set  availability='N' where vid= '"+vid+"'";
	//out.print("<br>"+qry1+"<br>");
	st.executeUpdate(qry1);		
	out.print("<font color=green size=+3> Booked Successfully </font><br />");
	

	con.close();
	
	}catch(Exception e){out.print(e);}
%> 	   
		 </div>
		
	
	
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