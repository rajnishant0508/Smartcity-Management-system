<%@ include file="dbcom.jsp"%>
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
		<jsp:include page="vehicle-nav-bar.jsp" />
      </div>
    </div>
</div>

<div class="main-content">
      <center>
	  <h2 class="main-bar-content">Welcome to Ambulance & Mortality Van Registration</h2>
	  
	  <span style="color:maroon; font-size:25px;" class="style4">Vehicle Signup</span>
			    
              <%
			    String vno=request.getParameter("vno");
				String model=request.getParameter("model");
				String oname=request.getParameter("oname");
				String dname=request.getParameter("dname");
				String bookingnum=request.getParameter("bookingnum");
				String city=request.getParameter("city");
				String district=request.getParameter("district");
				String state=request.getParameter("state");
				String timing=request.getParameter("timing");
				String baseprice=request.getParameter("baseprice");
				String perkm=request.getParameter("perkm");
				String type=request.getParameter("type");
			    String lati=request.getParameter("lati");
				String longi=request.getParameter("longi");
				String mail=request.getParameter("mail");
				String pwd=request.getParameter("pwd");
				String cnfpwd=request.getParameter("cnfpwd");
				String dt1=new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
				String vid="";
			  %>
			  <%
			    try{
					
					ResultSet rs=st.executeQuery("select * from vehicle where vno='"+vno+"'");
					if(rs.next())
					{
						out.print("<br><font color=red size=6>"+ vno +" Already Registered...!!!</font><br />");
					
					}else{
						  int cnt=0;
						  rs=st.executeQuery("Select max(substr(vid,2)) from vehicle");
						  if(rs.next()){
							 cnt=rs.getInt(1);
						  }
						  cnt++;
						  if(cnt>0 && cnt<10)
							vid="V0000"+cnt;
						  else if(cnt>9 && cnt<100)
							 vid="V000"+cnt;
						  else if(cnt>99 && cnt<1000)
							 vid="V00"+cnt;
						  else if(cnt>999 && cnt<10000)
							 vid="V0"+cnt;
						  else
							  vid="V"+cnt;
						  st.executeUpdate("insert into login values('"+vid+"','"+oname+"','"+mail+"','"+pwd+"','"+cnfpwd+"','"+dt1+"','VEHICLE','N')");
						  	  
						  st.executeUpdate("insert into vehicle(vid,vno,model,oname,dname,contactno,mail,City,District,State,timing,baseprice,perkm,availability,lati,longi,type) values('"+vid+"','"+vno+"','"+model+"','"+oname+"','"+dname+"','"+bookingnum+"','"+mail+"','"+city+"','"+district+"','"+state+"','"+timing+"','"+baseprice+"','"+perkm+"','N','"+lati+"','"+longi+"','"+type+"')");
						  
						  session.removeAttribute("vid");
						  session.setAttribute("vid",vid);
		
							  out.print("<br><font color=green size=6>"+ vno +" Registered Successfully... </font><br />");
							  }
							  con.close();		  
		  		}catch(Exception e){ out.print(e);  }
			  %>
			  
			  <div style="margin-top:100px;">
				<font color=#F1C40F  size=+2>Choose Picture of Organization.</font>
				<FORM ENCTYPE="multipart/form-data" ACTION="upservlet1" METHOD=POST> 
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
