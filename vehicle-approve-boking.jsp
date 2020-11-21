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
		<jsp:include page="vehicle-nav-bar.jsp" />
      </div>
    </div>
   </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	  <h2 class="main-bar-content">Welcome <%=pp%> to  Approve Vehicle</h2>
        <div class="article">
  
  
			 <%
            try{
			
			String qry="select z.vno,  a.*,  b.id, b.logname, b.pwd, b.dor, c.fullname  from vehicle z, booking a,login b, user c where a.vid='"+(String)session.getAttribute("id")+"' and z.vid=a.vid and a.status='Pending' and a.vid=b.id and a.uid=c.uid";

//String qry="select * from (select z.vno,  a.*,  b.id, b.logname, b.pwd, b.dor  from vehicle z, booking a,login b where a.vid='"+(String)session.getAttribute("id")+"' and a.status='Pending' and a.vid=b.id) c, login d where  c.vid=d.id";
			//out.print(qry);
            ResultSet rs=st.executeQuery(qry);
			 
			%>
				<div class="table-responsive-xl" style="margin-left:120px;">
				  <table class="table table-hover">
					  <thead>
						<tr>
						  <th scope="col">Vehicle Regd. No</th>
						  <th scope="col">Booking ID</th>
						  <th scope="col">Booked Form Date</th>
						  <th scope="col">Booked Form Time</th>
						  <th scope="col">Booked To Time</th>
						  <th scope="col">User Name</th> 
						  <th scope="col">Action</th> 
						</tr>
					  </thead>
					 <% while(rs.next()){ 	
			            String bkid=rs.getString(2);
					 %>
					 <tbody>
							<tr>
							<td><%=rs.getString(1)%></td>
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(6)%></td>
							<td><%=rs.getString(7)%></td>
							<td><%=rs.getString(8)%></td>
							<td><%=rs.getString(19)%></td>
							<td><p class="style10 style4"><a href="vehicle-approve-booking1.jsp?a1=<%=bkid%>&a2=A" style="color:#00FF00; text-decoration:none;">Approve</a></p>
			                    <p class="style10 style4"><a href="vehicle-approve-booking1.jsp?a1=<%=bkid%>&a2=R" style="color:#FF9900; text-decoration:none;">Remove</a></p></td>  
				</tr>
				 </tbody>
				 <% 	
				       }
				 %> 
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
			<jsp:include page="vehicle-left.jsp" />
        </div>
        
      </div>
	  

      
	 </div>
   </div>
</div>
<div class="footer" style="margin-top:310px;">
    <jsp:include page="member-footer.jsp" />
</div>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
