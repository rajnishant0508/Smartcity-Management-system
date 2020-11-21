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
		  
		  
		  <form method="get" action="user-profile-view1.jsp">
			<%
			try{
			  ResultSet rs=st.executeQuery("select a .* from user a,login b where a.uid=b.id and b.status='y'");
			 %>	
			 <table>
			<tr><td><span class="style6"><b style="font-size:20px; margin-left:120px;">Choose User Name:&nbsp;&nbsp;&nbsp;</b></span></td>
			<td></td>
			<td><select name="em" class="btn btn-secondary dropdown-toggle">
			<% while(rs.next()){%>
			  <option value="<%=rs.getString(1)%>"><%=rs.getString(2)+" "%></option>
			  <%}%>
			</select>
			</td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Go" class="btn btn-primary"></td>
			</tr>
			</table>
			<%}catch(Exception ee){}%>
			 </form>
			 <%
			try{
			 ResultSet rs=st.executeQuery("select a .* from user a,login b where a.uid=b.id and b.status='y' order by(a.uid)  limit 15");
			%>	
			<div class="table-responsive-xl" style="margin-left:120px; margin-top:30px;">
			 <table class="table table-hover">
			      <thead>
					<tr>
					  <th scope="col">Name</th>
					  <th scope="col">DOB</th>
					  <th scope="col">Gender</th>
					  <th scope="col">Marignal Status</th>
					  <th scope="col">Eduaction</th>
					  <th scope="col">Phone No</th>
					  <th scope="col">Mail</th>
					  <th scope="col">Current Addrs</th>
					  <th scope="col">Permanent Addrs</th>
					  <th scope="col">Id Name</th>
					  <th scope="col">Id No</th>
					  <th scope="col">DOR</th>
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
						<td><%=rs.getString(13)%></td>
			</tr>
		     </tbody>
			 <% 	}
			 %> 
	      </table>
			</div>
			
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
