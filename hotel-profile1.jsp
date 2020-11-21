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
			     String s1=(String)session.getAttribute("id");
				 String std=request.getParameter("std");
				 String locat=request.getParameter("locat");
				 String ph=request.getParameter("ph");
				 String addrs=request.getParameter("addrs");
				 String ownmail=request.getParameter("ownmail");
				 String ownph=request.getParameter("ownph");
				 String mail1=request.getParameter("mail1");
				 String websit=request.getParameter("websit");
				 String pt=request.getParameter("plotno");
				 
				 String tt1=request.getParameter("tt1");
				 String tt2=request.getParameter("tt2");
				 String tt3=request.getParameter("tt3");
				 String pmant=request.getParameter("pmant");
				 
				 st.executeUpdate("update hotel set std='"+std+"', phno='"+ph+"', address='"+addrs+"', loca='"+locat+"', chkin='"+tt1+"', chkout='"+tt2+"', ownerph='"+ownph+"', owneremail='"+ownmail+"', hotelmail='"+mail1+"', hotelwebsite='"+websit+"', payment='"+pmant+"', hotel_open_time='"+tt3+"' where hid='"+s1+"'");
                  out.print("<font color=green size=6>Updated Successfully</font>");
				  con.close();				 
			  }catch(Exception e){ out.print(e);  }
			  
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
<div class="footer" style="margin-top:500px;">
    <jsp:include page="member-footer.jsp" />
</div>



<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
