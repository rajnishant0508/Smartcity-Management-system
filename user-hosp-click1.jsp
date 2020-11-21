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
.style10 {
   margin-left:50px;
   
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
			 String qry="", lati="", longi="", str="";
			try{
			//String id=request.getParameter("em");
			//String logname=request.getParameter("logname");
			String id="";
			
			qry="select a.* from organisation a,login b where a.oid=b.id and b.status='y' and a.type='Hospital' and  a.name='AMRI'";
			//out.print(qry+"<br>");
			ResultSet rs=st.executeQuery(qry);
			if(rs.next()){
			   id=rs.getString(1);
			%>	
			
			<table>
			<tr><td>
				<table width="515" height="384"  cellpadding="5">
				<tr><td width="120" bordercolor="#000000"><span class="style7 style7 style4"><strong>Name:</strong></span></td> 
				<td width="379" bordercolor="#000000"><span class="style10 style5 style4"><%=rs.getString(2)%></span></td>
				</tr>
				
				<tr><td width="120" bordercolor="#000000"><span class="style7 style7 style4"><strong>Plot No:</strong></span></td>
				<td bordercolor="#000000"><span class="style10 style5 style4"><%=rs.getString(3)%></span></td>
				</tr>
				
				<tr><td width="120" bordercolor="#000000"><span class="style7 style7 style4"><strong>Area:</strong></span></td>
				<td bordercolor="#000000"><span class="style10 style5 style4"><%=rs.getString(4)%></span></td>
				</tr>
				
				<tr><td width="120" bordercolor="#000000"><span class="style7 style7 style4"><strong>City:</strong></span></td>
				<td bordercolor="#000000"><span class="style10 style5 style4"><%=rs.getString(5)%></span></td>
				</tr>
				
				<tr><td width="120" bordercolor="#000000"><span class="style7 style7 style4"><strong>Pincode:</strong></span></td>
				<td bordercolor="#000000"><span class="style10 style5 style4"><%=rs.getString(6)%></span></td>
				</tr>
				
				<tr><td width="120" bordercolor="#000000"><span class="style7 style7 style4"><strong>District:</strong></span></td>
				<td bordercolor="#000000"><span class="style10 style5 style4"><%=rs.getString(7)%></span></td>
				</tr>
				
				<tr><td width="120" bordercolor="#000000"><span class="style7 style7 style4"><strong>State:</strong></span></td>
				<td bordercolor="#000000"><span class="style10 style5 style4"><%=rs.getString(8)%></span></td>
				</tr>
				
				<tr><td width="120" bordercolor="#000000"><span class="style7 style7 style4"><strong>Phone:</strong></span></td>
				<td bordercolor="#000000"><span class="style10 style5 style4"><%=rs.getString(9)%></span></td>
				</tr>
				
				<tr><td width="120" bordercolor="#000000"><span class="style7 style7 style4"><strong>Mail:</strong></span></td>
				<td bordercolor="#000000"><span class="style10 style5 style4"><%=rs.getString(10)%></span></td>
				</tr>
				 
				
				<tr><td width="120" bordercolor="#000000"><span class="style7 style7 style4"><strong>Timing:</strong></span></td>
				<td bordercolor="#000000"><span class="style10 style5 style4"><%=rs.getString(11)%></span></td>
				</tr>
				</table>	
			
			
			</td><td>
				<img src="" width="420" height="300" alt="no photo" />
			</td></tr>
			</table>
			<% }  %>  	 
					
					
			<h4 style="margin-bottom:50px; margin-top:50px;">View Department Details Here</h4>
						<table width="923"  height="65" border="1"  cellpadding="5">
						 <tr>
						 <td width="354" bgcolor="#CCCCCC"><span class="style7 style7 style4"><strong>Department Name</strong></span></td>
						 <td width="144" bgcolor="#CCCCCC"><span class="style7 style7 style4"><strong>Type</strong></span></td>
						 <td width="192" bgcolor="#CCCCCC"><span class="style7 style7 style4"><strong>Timing</strong></span></td>
						 </tr>
						 <% 
						  qry="select a.*,b.* from dept a,organisation b where a.oid='"+id+"'  and b.oid='"+id+"' ";
						 //out.print(qry);
						  rs=st.executeQuery(qry);	 		   
						 while(rs.next())
						 { 
							lati = rs.getString("lati");
							longi = rs.getString("longi");
						 %>
				<tr>
			<td height="29" bgcolor="#CCCCCC"><span class="style10"><strong><a href="user-view-doct.jsp?a1=<%=rs.getString(1)%>&a2=<%=rs.getString(2)%> &a3=<%=rs.getString(3)%> "><font color="#330099"><%=rs.getString(3)%></font></a></strong></span></span></td>
						<td bgcolor="#CCCCCC"><span class="style10 style5"><%=rs.getString(4)%></span></td>
						<td bgcolor="#CCCCCC"><span class="style10 style5"><%=rs.getString(5)%></span></td>
						</tr>
						<% }
						%>  	 
					   </table>
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
