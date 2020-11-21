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
	          <form action="" method="get">
					<b style="font-size:20px;">Choose Blood Bank:</b> <select name="oid" class="btn btn-secondary dropdown-toggle">
					<%
					try{
					ResultSet rs=st.executeQuery("select * from login a, organisation b where a.type='BloodBank' and a.id=b.oid");
					while(rs.next()){
					%>
						<option value="<%=rs.getString(1)%>"><%=rs.getString(10)+" - "+rs.getString(13)%></option>
					<%
					}
					}catch(Exception e){  }
					%>	
					</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Submit" class="btn btn-primary"/>
			 </form>
			 
			 <div class="table-responsive-xl container" style="margin-top:30px;">
				<%
					try{
					String qry="select * from blood a, organisation b  where a.oid=b.oid limit 10";
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
					  <th scope="col">Organisation Name</th>
					  <th scope="col">Address</th>
					  <th scope="col">Phone</th>
					  <th scope="col">Mail</th>
					  <th scope="col">Blood Group</th>
					  <th scope="col">Rh Factor</th>
					  <th scope="col">Unit</th>
					</tr>
				  </thead>
				  <tbody>
				   <% 
					 while(rs.next()){ 
				   %>
					<tr>
					  <td><%=cnt++ %></td>
					  <td><%=rs.getString(7)%></td>
					  <td><%=rs.getString(8)+" "+rs.getString(9)+" "+rs.getString(10)%></td>   
					  <td><%=rs.getString(14)%></td>
					  <td><%=rs.getString(15)%></td>
					  <td><%=rs.getString(3)%></td>
					  <td><%=rs.getString(4)%></td>   
					  <td><%=rs.getString(5)%></td>
					  
					</tr>
					<%	}	%>

				  </tbody>
				 </table>
				<%
				}else{
					out.print("<font color=red size=3>No blood is currently available.</font>");
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
