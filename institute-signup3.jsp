<%@ include file="dbcom.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smart City | Support</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<style type="text/css">
.main-bar-content{
   margin-top:80px;
}

</style>
</head>
<body>
<div class="header">
    <div class="header_resize">
	  <div class="menu_nav">
		<jsp:include page="organisation-nav-bar.jsp" />
      </div>
    </div>
</div>

<div class="main-content">
      <center>
	  <h2 class="main-bar-content">Welcome to Institute Registration</h2>
	  
	  <span style="color:maroon; font-size:25px;" class="style4"></span>
			    
          <%
		     String na=request.getParameter("logname");
			 String ty=request.getParameter("type");
			 String pa=request.getParameter("pwd");
			 String pa1=request.getParameter("cpwd");
			 String caa=request.getParameter("cadd");
			 String ab=request.getParameter("about");
			 String ph1=request.getParameter("phone1");
			 String ph2=request.getParameter("phone2");
			 String ma=request.getParameter("mail");
			 String lt=request.getParameter("lat");
			 String lg=request.getParameter("lng");
			 String dt=new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
		  
		  %>
		  <%
		      try{
			      ResultSet rs=st.executeQuery("Select * from institute where name='"+na+"'");
				  if(rs.next()){
				       out.print("<font color=red size=+2>!!!...Allready Registered...!!!</font>");
					   
				  }else{
				       int cnt=0;
					   String uid="";
					   try{
					    rs=st.executeQuery("Select max(substr(instid,2)) from institute");
					    if(rs.next()){
					      cnt=rs.getInt(1);
						}
				       }catch(Exception e){            }
					   cnt++;
					   
					   if(cnt>0 && cnt<10)
					     uid="I000"+cnt;
					   else if(cnt>9 && cnt<100)
					      uid="I00"+cnt;
					   else if(cnt>99 && cnt<1000)
					      uid="I0"+cnt; 
					   else
					       uid="I"+cnt;
					  st.executeUpdate("insert into institute(instid,name,type,dor,cadd,phone1,phone2,mail,about,lati,longi) values('"+uid+"','"+na+"','"+ty+"','"+dt+"','"+caa+"','"+ph1+"','"+ph2+"','"+ma+"','"+ab+"','"+lt+"','"+lg+"')");
					    session.removeAttribute("instid");
						session.setAttribute("instid",uid);	   
					  st.executeUpdate("insert into login values('"+uid+"','"+na+"','"+ma+"','"+pa+"','"+pa1+"','"+dt+"','"+ty+"','N')");
					  out.print("<br><font color=green size=+3>"+ na +" Registered Successfully </font><br />");	   
				    con.close();
					
				  }
			  
			  
			  }catch(Exception e){ 	out.print(e);	}
		  
		  %>
		  
		  <div style="margin-top:100px;">
			<font color=#F1C40F  size=+2>Choose Picture of Organization.</font>
			<FORM ENCTYPE="multipart/form-data" ACTION="upservlet3" METHOD=POST> 
			<table border="0" >
			<tr>
				<td colspan="2" align="center"><B>UPLOAD THE FILE</B></td>
			</tr>
			<tr><td colspan="2" align="center"> </td></tr>
			<tr><td><br><b>Choose the file To Upload:</b></td>
			<td><br><INPUT NAME="file" TYPE="file"></td>
			</tr>
			<tr><td colspan="2" align="center"><br> </td></tr>
			<tr>
			  <td colspan="2" align="center"><input name="submit" type="submit" value="Send File" class="btn btn-primary" /></td>
			</tr>
			</table>
			</FORM>
		  </div>
		  
		</center>
</div>
<div style="margin-top:150px;">
<jsp:include page="footer.jsp"/>
</div>
	 
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>

