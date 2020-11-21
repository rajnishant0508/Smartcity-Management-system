<%@ include file="dbcom.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smart City | Support</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="footerr.css">
<style type="text/css">
.main-bar-content{
   
   margin-top:80px;
}
.table-content{
   margin-top:40px;
   margin-left:10px;
}
.form-control{
   margin:10px;
}
.style4{
   margin-left:50px;
   font-size:20px;
}
.style7{
   font-size:20px;
   
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
		<jsp:include page="user-nav-bar.jsp" />
      </div>
      
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	  <h2 class="main-bar-content" style="color:#DC7633; margin-bottom:50px;">Welcome <%=pp%> to Institute Profile</h2>
	      
		  
					  
			<%
			String qry="", lati="", longi="", str="";
			try{
			String id=request.getParameter("em");
			//String logname=request.getParameter("logname");
			
			qry="select a.* from institute a,login b where a.instid=b.id and b.status='y' and b.type='Institute' and  a.instid='"+id+"'";
			//out.print(qry+"<br>");
			ResultSet rs=st.executeQuery(qry);
			if(rs.next()){
			%>	
			
<table >
<tr><td>
	<table width="515" height="384"  cellpadding="5">
				<tr><td width="217"><span class="style7"><b>Name:<b></span></td>
				<td width="270"><span class="style7"></span>  <%=rs.getString(2)%></td>
				</tr>   
				<tr><td><span class="style7"><b>Type:</b></span></td>
				<td><span class="style6"><%=rs.getString(3)%></span></td>
				</tr>
				<tr><td><span class="style7"><b>Date of Registration:</b></span></td>
				<td><span class="style6"><%=rs.getString(4)%></span></td>
				</tr>
				<tr><td><span class="style7"><b>Address:</b></span></td>
				<td><span class="style6"><%=rs.getString(5)%></span></td>
				</tr> 
				<tr><td><span class="style7"><b>Phone:</b></span></td>
				<td><span class="style6"><%=rs.getString(7)%></span></td>
				</tr>
				<tr><td><span class="style7"><b>Alt. Phone:</b></span></td>
				<td><span class="style6"><%=rs.getString(6)%></span></td>
				</tr>
				<tr><td><span class="style7"><b>Mail ID:</b></span></td>
				<td><span class="style6"><%=rs.getString(8)%></span></td>
				</tr>
				<tr><td><span class="style7"><b>About:</b></span></td> 
				<td><span class="style6"><%=rs.getString(9)%></span></td>
				</tr> 
	</table>
</td><td>
	<img src="./images/inst/<%=rs.getString(12)%>"  width="500" height="360" alt="no photo" />
</td></tr>
</table>
			<% }  %>  	 
					
					
								
			<h4 style="margin-top:40px;">View Course Details Here</h4>
			<% 
			rs= st.executeQuery("select * from instcrs where instid='"+id+"'");
			if(rs.next()){
			rs.beforeFirst();
			%>
			
			<table   class="table table-hover table-dark">
	
			<thead>
			<tr>
			  <th scope="col">Course</th>
			  <th scope="col">Fee</th>
			  <th scope="col">Duration (days)</th>
			  <th scope="col">StartsOn</th>
			  <th scope="col">Description</th>
			</tr>
		  </thead>
		  <tbody>
			
			<%    while(rs.next()) {   %>
			<tr>
			  <th scope="row"><%=rs.getString(3)%></th>
			  <td><%=rs.getString(4)%></td>
			  <td><%=rs.getString(5)%></td>
			  <td><%=rs.getString(6)%></td>
			 
			  <td><%=rs.getString(8)%></td>
			</tr>
			<%    }   %>
			 </tbody>
			</table>
			<%
			}
			 %>
			 
			<div id="map"></div>
			<%
			con.close();
			}catch(Exception e){out.print(e);}	 
			
			%>	



        </div>

      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="user-left.jsp" />
        </div>
        
      </div>
	  

      
	  </div>
    </div>
  </div>
  <div class="footer" style="margin-top:100px;">
   <jsp:include page="user-footer.jsp"/>
  </div>



<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
