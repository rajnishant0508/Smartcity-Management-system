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
	  <h2 class="main-bar-content" style="color:#DC7633; margin-bottom:50px;">Welcome <%=pp%> to  Hospital Profile</h2>
	      
		  
					  
			<%
			try{
			String str=request.getParameter("a1");
			String str1=request.getParameter("a2");
			String str2=request.getParameter("a3");
			//out.print(str2);
			String qry="select * from doctor  where oid='"+str1+"' and deptid='"+str+"'";
            //out.print(qry);
			  ResultSet rs=st.executeQuery(qry);
			 %>	
			 
			 <table class="table table-sm table-dark" style="width:1000px;">
			  <thead>
				<tr>
				  <th scope="col">Department Name</th>
				  <th scope="col">Name</th>
				  <th scope="col">Timing</th>
				  <th scope="col">Fee</th>
				  <th scope="col">Days</th>
				</tr>
			  </thead>
			  <tbody>
			   <% while(rs.next()){ 	%>
				<tr>
				  <th scope="row"><%=str2%></th>
				  <td><%=rs.getString(4)%></td>
				  <td><%=rs.getString(5)%></td>
				  <td><%=rs.getString(6)%></td>
				  <td><%=rs.getString(7)%></td>
				</tr>
				<% 
				  }
			 	%> 
			  </tbody>
			</table>
			
						  
			 <%
			con.close();
			}catch(Exception ee) { }
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
  <div class="footer" style="margin-top:200px;">
   <jsp:include page="user-footer.jsp"/>
  </div>



<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
