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
   margin-top:200px;
   
}
.form-control{
   margin:10px;
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
		<jsp:include page="hospital-nav-bar.jsp" />
      </div>
    </div>
   </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	  <h2 class="main-bar-content">Welcome <%=pp%> to </h2>
	      <img src="feedback1.jpg" class="rounded float-left" style="margin-left:120px;" alt="...">
          <img src="feedback.jpg" class="rounded float-right" style="margin-right:125px;" alt="...">
	 
        <div class="article">
		<%
		try{
		ResultSet rs=st.executeQuery("select * from contactus where  id= '"+(String)session.getAttribute("id")+"' order by(feedbackid) limit 15");
		%>	
		
		<div class="table-responsive-xl" style="margin-left:120px;">
				<table class="table table-hover" style="margin-top:200px;">
				  <thead>
					<tr>
					  <th scope="col">Name</th>
					  <th scope="col">Date of Feedback</th>
					  <th scope="col">Email</th>
					  <th scope="col">Phone</th>
					  <th scope="col">Message</th>
					  <th scope="col">Current Status</th>
					  <th scope="col">Reply</th>
					</tr>
				  </thead>
				  <tbody>
				  <% while(rs.next()){ 	%>
					<tr>
					  <th scope="row"><%=rs.getString(5)%></th>
					  <td><%=rs.getString(3)%></td>
					  <td><%=rs.getString(6)%></td>
					  <td><%=rs.getString(7)%></td>
					  <td><%=rs.getString(8)%></td>
					  <td><%=rs.getString(10)%></td>
					  <td><%=rs.getString(9)%></td>
					</tr>
					<% }  %> 
				  </tbody>
				</table>
				</div>
               <%
				con.close();
				}catch(Exception ee) { }
			   %>
		

      </div>
  </div>

      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="hospital-left.jsp" />
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
