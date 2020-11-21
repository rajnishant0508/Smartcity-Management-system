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
.form-control{
   margin:10px;
}

</style>

<script type="text/javascript">
  function validate(){
	   var name=document.getElementById("name").value;
	   var fee=document.getElementById("fee").value;
	   var day=document.getElementById("day").value;
	   var regex = new RegExp("^[a-zA-Z\b ]+$");
	   var re = /[0-9]/;
	   
	   if(regex.exec(name)==null){
	      document.getElementById("na").innerHTML="*please enter a valid Name";
		  document.getElementById("name").value=null;
		   return false;
	  
	   }else if(regex.exec(day)==null){
	      document.getElementById("da").innerHTML="*Please enter a valid Day";
		  document.getElementById("day").value=null;
		    return false; 
			 
	   }else if(!/^[0-9]+$/.test(fee)){
	      document.getElementById("fe").innerHTML="*Please enter a valid Number";
		  document.getElementById("fee").value=null;
		    return false;
	  
				 		
	   }else{
	       return true;
	   }
	   }
</script>

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
	  <h2 class="main-bar-content">Welcome <%=pp%> to Hospital's Doctors</h2>
	     <div class="article">
		 <%
		    try{
			   ResultSet rs=st.executeQuery("select a. * from dept a, login b where a.oid='"+(String)session.getAttribute("id")+"' and a.oid=b.id");
			   
		 %>
		   <form action="hosp-addoct1.jsp" method="post" onSubmit="return validate()">
		     <table style="margin-left:120px; margin-top:30px;">
			   <tr> 
				<td>Organisation ID: </td>
				<td><input type="text" name="oid" class="form-control" value="<%=session.getAttribute("id")%>" readonly="true" /></td>
				</tr>
				<tr>
				<td>Department Name:* </td>
				<td>&nbsp;&nbsp;<select name="select" class="form-control dropdown-toggle" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				      <% while(rs.next()){ %>
                      <option value=<%=rs.getString(1)%>><%=rs.getString(3)%></option>
					  <%}%>
                    </select></td></tr>
				<tr>
				<td>Name:*</td>
				<td><input type="text" class="form-control" id="name" name="name" required /></td>
				</tr>	
				<tr>
					<td></td>
					<td> <span id="na" style="color:#FF0000; margin-left:10px;"> </span></td>
				</tr>
				<tr>
				<td>Timing:*</td>
				<td><input type="time" class="form-control" name="timing" required /></td></tr>
				<tr>
				<td>Fee:*</td>
				<td><input type="text" id="fee" class="form-control" name="fee" required></td>
			   </tr>
			   <tr>
					<td></td>
					<td> <span id="fe" style="color:#FF0000; margin-left:10px;"> </span></td>
				</tr>
			    <tr>
			    <td>Days:*</td>
			    <td><input type="text" class="form-control" id="day" name="day" required /></td></tr>
			     <tr>
					<td></td>
					<td> <span id="da" style="color:#FF0000; margin-left:10px;"> </span></td>
				</tr>
			<tr><td><input type="submit" value="SUBMIT" style="margin-left:100px;" class="btn btn-primary" ></td></tr>		
			 </table>
		   </form>
		   <%
		   con.close();
		   }catch(Exception e){    }
		   %>
		 </div>
        </div>

      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="hospital-left.jsp" />
        </div>
        
      </div>
	  

      
	 </div>
   </div>
</div>
<div class="footer" style="margin-top:200px;">
    <jsp:include page="member-footer.jsp" />
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
