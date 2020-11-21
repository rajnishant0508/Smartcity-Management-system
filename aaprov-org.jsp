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
             ResultSet rs=st.executeQuery("select a.*,b.* from organisation a,login b where a.oid=b.id and b.status='N'");
			%>
			
			<div class="table-responsive-xl" style="margin-left:120px;">
			  <table class="table table-hover">
			      <thead>
					<tr>
					  <th scope="col">Name</th>
					  <th scope="col">Plot No</th>
					  <th scope="col">Area</th>
					  <th scope="col">City</th>
					  <th scope="col">Pincode</th>
					  <th scope="col">District</th>
					  <th scope="col">State</th>
					  <th scope="col">Phone</th>
					  <th scope="col">Mail</th>
					  <th scope="col">Timimg</th>
					  <th scope="col">Type</th>
					  <th scope="col">Action</th> 
					</tr>
				  </thead>
			     <% while(rs.next()){ 	%>
			     <tbody>
						<tr>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getString(4)%></td>
						<td><%=rs.getString(5)%></td>
						<td><%=rs.getString(6)%></td>
						<td><%=rs.getString(7)%></td>
						<td><%=rs.getString(8)%></td>
						<td><%=rs.getString(9)%></td>
					    <td><%=rs.getString(10)%></td>
						<td><%=rs.getString(11)%></td>
						<td><%=rs.getString(12)%></td>
			
		
						<td><a href="aaprov-org1.jsp?a1=<%=rs.getString(1)%>&a2=A" style="color:#00FF00; text-decoration:none;">Approve</a>
			   <a href="aaprov-org1.jsp?a1=<%=rs.getString(1)%>&a2=R" style="color:#FF9900; text-decoration:none;">Remove</a></td>  
			</tr>
		     </tbody>
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
