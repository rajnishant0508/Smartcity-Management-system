<%@ include file="dbcom.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smart City | Support</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
.main-bar-content{
   margin-left:120px;
   margin-top:80px;
}
.tabl{
   margin-left:120px;
}
.style10{
   color:#FFFFFF;
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
        <div class="article">
	          <%
            try{
             ResultSet rs=st.executeQuery("select * from contactus where status='pending' order by(feedbackid)");
			%>
			
			<div class="table-responsive-xl" style="margin-left:120px;">
			  <table class="table table-hover">
			      <thead>
					<tr>
					  <th scope="col">Name</th>
					  <th scope="col">Type</th>
					  <th scope="col">Date</th>
					  <th scope="col">Email</th>
					  <th scope="col">Phone NO</th>
					  <th scope="col">Message</th>
					  <th scope="col">Reply</th>
					  <th scope="col">Action</th> 
					</tr>
				  </thead>
			     <% while(rs.next()){ 	%>
			     <form action="aaprov-fb.jsp">
				 <input type="hidden" name="a1" value="<%=rs.getString(1)%>">
				 <input type="hidden" name="a2" value="A" />
				 <tbody>
						<tr>
						<td><%=rs.getString(5)%></td>
						<td><%=rs.getString(4)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getString(6)%></td>
						<td><%=rs.getString(7)%></td>
					    <td><%=rs.getString(8)%></td>
						<td><input name="a3" type="text" class="form-control" style="width:200px;"></td>
			
		
						<td> <input type="submit" value="Accept"  />
			                <a href="aaprov-fb.jsp?a1=<%=rs.getString(1)%>&a2=R" style="color:#FF9900; text-decoration:none;">Remove</a>
						</td>  
			</tr>
		     </tbody>
			 </form>
			 <% 	}
			 %> 
	  </table>
    </div>			
<br/><br/>
<%
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

</body>
</html>
