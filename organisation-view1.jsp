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
			String 	name=request.getParameter("em");		
		    ResultSet rs=st.executeQuery("select * from organisation where oid='"+name+"'");
			 while(rs.next()){ 
			%>
			<table>
			<tr><td>
			
			<table width="515" height="384"  cellpadding="5" style="margin-left:120px; margin-top:30px;">
			<tr><td width="120"><span class="style7 style2 style7"><strong>Name:</strong></span></td> 
			<td width="379"><span class="style10  style5"><strong><%=rs.getString(2)%></strong></span></td></tr>
			
			<tr><td width="120"><span class="style7 style2 style7"><strong>Plot No:</strong></span></td>
			<td><span class="style10  style5"><strong><%=rs.getString(3)%></strong></span></td></tr>
			
			<tr><td width="120"><span class="style7 style2 style7"><strong>Area:</strong></span></td>
			<td><span class="style10  style5"><strong><%=rs.getString(4)%></strong></span></td></tr>
			
			<tr><td width="120"><span class="style7 style2 style7"><strong>City:</strong></span></td>
			<td><span class="style10  style5"><strong><%=rs.getString(5)%></strong></span></td></tr>
			
			<tr><td width="120"><span class="style7 style2 style7"><strong>Pincode:</strong></span></td>
			<td><span class="style10  style5"><strong><%=rs.getString(6)%></strong></span></td></tr>
			
			<tr><td width="120"><span class="style7 style2 style7"><strong>District:</strong></span></td>
			<td><span class="style10  style5"><strong><%=rs.getString(7)%></strong></span></td></tr>
			
			<tr><td width="120"><span class="style7 style2 style7"><strong>State:</strong></span></td>
			<td><span class="style10  style5"><strong><%=rs.getString(8)%></strong></span></td></tr>
			
			<tr><td width="120"><span class="style7 style2 style7"><strong>Phone:</strong></span></td>
			<td><span class="style10  style5"><strong><%=rs.getString(9)%></strong></span></td></tr>
			
			<tr><td width="120"><span class="style7 style2 style7"><strong>Mail:</strong></span></td>
			<td><span class="style10  style5"><strong><%=rs.getString(10)%></strong></span></td></tr>
			 
			
			<tr><td width="120"><span class="style7 style2 style7"><strong>Timing:</strong></span></td>
			<td><span class="style10  style5"><strong><%=rs.getString(11)%></strong></span></td></tr>
			
			<tr><td width="120"><span class="style7 style2 style7"><strong>Type:</strong></span></td>
			<td><span class="style10  style5"><strong><%=rs.getString(12)%></strong></span></td></tr>
			</table>			 
			
			</td><td>
			<img src="./images/orga/<%=rs.getString(11)%>" width="420" height="300" />
			</td></tr>
			</table>
			<%
			}
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
