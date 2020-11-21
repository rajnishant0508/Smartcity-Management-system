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
   margin-left:10px;
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
	  <h2 class="main-bar-content">Welcome <%=pp%> to  Donate Blood</h2>
	  <%
         try{
    String s1=(String) session.getAttribute("id");
	ResultSet rs=st.executeQuery("select b. * from login a,user b where a.id='"+s1+"' and a.id=b.uid and a.type='USER'");
	if(rs.next()){
    %>
    <form method="post" action="user-bld-donate1.jsp">
	<table class="table-content">
	
    <tr>
	<td><span class="style4">Full Name:</span></td>
		<td><input type="text" class="form-control" name="nam" value="<%=rs.getString(2)%>" readonly="true"></td>
		<td></td>
		<td><span class="style4">Email:</span></td>
		<td><input name="email"  type="emial" class="form-control" value="<%=rs.getString(8)%>" readonly="true" ></td>
	</tr>
    <tr> 
		<td><span class="style4">Mobile No:</span></td>
		<td><input type="text" name="phno" class="form-control"  value="<%=rs.getString(7)%>" readonly="true"></td>
		<td></td>
		<td><span class="style4">Gender:</span></td>
		<td>
		  <span class="style4">
		  <%
		  String gen=rs.getString(4);
		  if(gen.equalsIgnoreCase("male")) {
		 %>
		    <input type="radio" name="gen" value="Male" checked="checked"  />
		    Male 
		    <input type="radio" name="gen" value="Female"  />
		    Female
		    <% }else {   %>
		 
		    <input type="radio" name="gen" value="Male" checked="checked"/>
		    Male 
		    <input type="radio" name="gen" value="Female"/>
		    Female
		    <%  }    %>		
		    </span></td>
	</tr>

	<tr>	
		<td><span class="style4">Current Address:</span></td>
	   <td><input type="text" name="text1" class="form-control" value="<%=rs.getString(9)%>" readonly="true"></td>
	   <td></td>
	   <td><span class="style4">Permanent Address:</span></td>
	   <td><input name="text2" type="text" class="form-control" value="<%=rs.getString(10)%>" readonly="true"></td>	
	</tr>	
	
	<tr>	
	    <td><span class="style4">Blood Group:</span></td>
	   <td><select name="grp" class="form-control">
	       <option value="--select--">--Select--</option>
	        <option value="O">O</option>
			<option value="A">A</option>
			<option value="B">B</option>
			<option value="AB">AB</option>
			</select>
			</td>
	   <td></td>
	   <td><span class="style4">Rh Factor:</span></td>
	   <td><select name="rh" class="form-control">
	     <option value="--select--">--Select--</option>
			<option value="+ve">+ve</option>
			<option value="-ve">-ve</option> 
			</select></td>	
	</tr>	
	<tr>	
	    <td><span class="style4">Date To be Given:</span></td>
	   <td><input type="date" name="date" class="form-control" ></td>
	   <td></td>
	   
	</tr>	
	
	<tr>
	<td height="48"></td>
	<td></td>
	<td><input type="submit" value="Donate" class="btn btn-primary" /> <input type="Reset" value="Reset" class="btn btn-primary" /></td>
	<td><span class="style4"></span></td>
	<td></td>
	</tr>  
	
	</table>
	</form>

	<%}
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
