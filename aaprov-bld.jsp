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
	  <h2 class="main-bar-content">Welcome <%=pp%> to Hospital Profile</h2>
        <div class="article">
  
             <%!   String s1;     %>
			  <%!   String name,email,phone,gender,cadd,padd;     %>
			<%
			try{
				ResultSet rs=st.executeQuery("select * from blddonation a  where a.status='pending' order by a.dntdate asc limit 1");
				if(rs.next()){  
				    s1 =rs.getString(3);
				}
				rs=st.executeQuery("Select * from user c where c.uid='"+s1+"'");
				if(rs.next()){
				   name=rs.getString(2);
				   email=rs.getString(8);
				   phone=rs.getString(7);
				   gender=rs.getString(4);
				   cadd=rs.getString(9);
				   padd=rs.getString(10);
				}
			 %>
			 
			 <%
			    String oid=(String)session.getAttribute("id");
				rs=st.executeQuery("select * from blddonation a  where a.status='pending' order by a.dntdate asc limit 1");
				if(rs.next()){
			 %>
			 <form method="post" action="aaprov-bld-book.jsp" >
				<table  class="table-content">
				
				<tr>
				<td><span class="style3">Name:</span></td>
					<td><input type="text" name="nam" class="form-control" value="<%=name%>" readonly="true" ></td>
					<td></td>
					<td><span class="style3">Email:</span></td>
					<td><input type="text" name="type" class="form-control" value="<%=email%>" readonly="true" /></td>
					
				</tr>
				<tr>
				<td><span class="style3">Phone:</span></td>
					<td><input type="text" name="nam" class="form-control" value="<%=phone%>" readonly="true" ></td>
					<td></td>
					<td><span class="style3">Gender:</span></td>
					<td><input type="text" name="type" class="form-control" value="<%=gender%>" readonly="true" /></td>
					
				</tr>
				
				<tr>
				<td><span class="style3">Current Address:</span></td>
					<td><input type="text" name="nam" class="form-control" value="<%=cadd%>" readonly="true" ></td>
					<td></td>
					<td><span class="style3">Permanent Address:</span></td>
					<td><input type="text" name="type" class="form-control" value="<%=padd%>" readonly="true" /></td>
					
				</tr>
				<tr> 
				    <td><span class="style3">Group:</td>
					<td><input type="text"  name="grp" class="form-control"  value="<%=rs.getString(4)%>" readonly="true"></td>
					<td></td>
					<td><span class="style3">Rh Factor:</span></td>
					<td><input type="text" name="rhfact" class="form-control" placeholder="City" value="<%=rs.getString(5)%>" readonly="true"/></td>
				</tr>
					 <tr>
					 <td><span class="style3">Date of Donation:</span></td>
					<td><input type="text" name="dt" class="form-control" value="<%=rs.getString(6)%>" readonly="true"  /></td>
					<td></td>
					 <td><span class="style3">Status:</span></td>
					<td><input type="text" name="status" class="form-control" placeholder="Area" value="<%=rs.getString(7)%>"  readonly="true"/></td>
					<td></td>
					
					
				</tr>
				
				<tr>
				<td></td>
				<td><input type="hidden" value="<%=rs.getString(1)%>" name="a1" /></td>
				<td><input type="submit" value="Accept" class="btn btn-primary" /> </td>
				<td></td>
				<td></td>
				</tr>  
				</table>
				
				</form>
			
			 
			 
			 
			 
			 
			 
			 
			 
			 <%    
			 }
			con.close();
			}catch(Exception e) { out.print(e); }
			%>

             
      </div>
  </div>

      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="blood-left.jsp" />
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
