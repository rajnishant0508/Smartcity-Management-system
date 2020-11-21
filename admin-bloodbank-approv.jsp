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
.article{
  margin-left:120px;
  margin-top:40px;
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
			String qry="select * from blddonation a, user b, organisation c where  a.uid=b.uid  and a.status='accepted' and a.oid=c.oid order by a.dntdate asc";
			//out.print(qry);
			ResultSet rs=st.executeQuery(qry);
			if(rs.next()){
			rs.beforeFirst();
			int cnt=1;
	   %>		
			  <table class="table table-hover">
				  <thead>
					<tr>
					  <th scope="col">Sl no</th>
					  <th scope="col">Name</th>
					  <th scope="col">Organisation</th>
					  <th scope="col">City</th>
					  <th scope="col">Date Of Donation </th>
					  <th scope="col">Blood Group</th>
					  <th scope="col">Rh Factor</th>
					  <th scope="col">Status</th>
					</tr>
				  </thead>
				  <tbody>
				   <% 
					 while(rs.next()){ 
				   %>
					<tr>
					  <td><%=cnt++ %></td>
					  <td><%=rs.getString(9)%></td>
					  <td><%=rs.getString(22)%></td>   
					  <td><%=rs.getString(25)%></td>
					 
					  <td><%=rs.getString(6)%></td>
					  <td><%=rs.getString(4)%></td>
					  <td><%=rs.getString(5)%></td>   
					  <td><%=rs.getString(7)%></td>
					  
					</tr>
					<%	}	%>

				  </tbody>
				 </table>
				 <%
				 }else{
					out.print("<font color=red size=3>No one to donate blood.</font>");
				}
				con.close();
				}catch(Exception e){  }
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
