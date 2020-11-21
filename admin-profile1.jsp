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
</style>
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
		  String nam=request.getParameter("nam"); 
		  String fnm=request.getParameter("fnm");
		  String dt=request.getParameter("dt");
		  String gen=request.getParameter("gen");
		  String mn=request.getParameter("mn");
		  String em=request.getParameter("em");
		  String text1=request.getParameter("text1");
		  String text2=request.getParameter("text2");
		  String qry="update admin set  fullname='"+nam+"' , fathername='"+fnm+"' , dob='"+dt+"' , gender='"+gen+"' , phone='"+mn+"' ,mail='"+em+"',cadd='"+text1+"' , padd='"+text2+"' where aid='"+s1+"'";
			
			//out.print(qry);
	st.executeUpdate(qry);
	
	out.print("<font color=green size=+3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Updated Successfully </font><br />");
	
	con.close();
	
	}catch(Exception e){          }
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
	<div class="Footer-wrapper" style="margin-top:500px;">
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
