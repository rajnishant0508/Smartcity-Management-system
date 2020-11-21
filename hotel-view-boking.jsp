<%@ include file="dbcom.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smart City | Support</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<style type="text/css">
.main-bar-content{
   margin-left:320px;
   margin-top:80px;
}
.form-control{
   margin:10px;
}
.article{
   margin-top:30px;
   margin-left:200px;
}
</style>
</head>
<body>
<%! String pp; %>
<% pp=((String)session.getAttribute("logname")).toUpperCase(); %>
<div class="mainn">
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
	  <h2 class="main-bar-content">Welcome <%=pp%> to View booking Portal</h2>
	     <div class="article">
		    <%
            try{
			  String hid=(String)session.getAttribute("id");
              ResultSet rs=st.executeQuery("select * from booking1 b, customer c, room r, payment p where b.hid='"+hid+"'  and b.status='approved' and b.cid=c.cid and b.rid=r.rid and b.cid=p.cid");
			 
			%>
	
			<div class="table-responsive-xl" style="margin-left:120px;">
			  <table class="table table-hover">
			      <thead>
					<tr>
					  <th scope="col">Name</th>
					  <th scope="col">address</th>
					  <th scope="col">Mail</th>
					  <th scope="col">Phone No</th>
					  <th scope="col">Dob</th>
					  <th scope="col">Check in</th>
					  <th scope="col">Ckeck out</th>
					  <th scope="col">No's Of Rooms</th>
					  <th scope="col">Booking Date</th>
					  <th scope="col">Room Type</th>
					  <th scope="col">Payment Date</th>
					  <th scope="col">Amount</th> 
					  
					</tr>
				  </thead>
				 <% while(rs.next()){ 	%> 

				 <tbody>
						<tr>
						<td><%=rs.getString(15)%></td>
						<td><%=rs.getString(16)%></td>
						<td><%=rs.getString(18)%></td>
						<td><%=rs.getString(17)%></td>
						<td><%=rs.getString(19)%></td>
						<td><%=rs.getString(8)%></td>
						<td><%=rs.getString(9)%></td>
						<td><%=rs.getString(7)%></td>
					    <td><%=rs.getString(10)%></td>
						<td><%=rs.getString(25)%></td>
						<td><%=rs.getString(33)%></td>
						<td><%=rs.getString(11)%></td>
						</tr>
		       </tbody>
			 <% 	
			 }
			 %> 
	      </table>

		 </div>
		 <%
		  con.close();
		  }catch(Exception e){ out.print(e);   }
		 %>
        </div>

      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="hotel-left.jsp" />
        </div>
        
      </div>
	  

      
	 </div>
   </div>
</div>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
