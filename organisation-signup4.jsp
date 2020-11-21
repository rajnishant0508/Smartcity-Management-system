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
	  <h2 class="main-bar-content">Welcome to Organisation Registration</h2>
	  
	  <span style="color:maroon; font-size:25px;" class="style4"></span>
	  
<% 
try{
  String logname=request.getParameter("logna");
  ResultSet rs=st.executeQuery("select * from login where logname='"+logname+"'");
if(rs.next())
{
	out.print("<font color=red size=+2>"+ logname +" !!!...Already Registered...!!!</font><br />");
}
else
{ 
  String name=request.getParameter("name");
  String plotno=request.getParameter("plotno");
  String area=request.getParameter("area");
  String city=request.getParameter("city");
  String pincode=request.getParameter("pincode");
  String dist=request.getParameter("dist");
  String state=request.getParameter("state");
  String phone=request.getParameter("phone");
  String mail=request.getParameter("mail");
  String timing=request.getParameter("timing");
  String type=request.getParameter("type");
  String pw=request.getParameter("pas");
  String pw1=request.getParameter("pas1");
  String lat=request.getParameter("lat");
  String lng=request.getParameter("lng");
  String dt1=new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
  String oid="";
   int cnt=0;
    rs=st.executeQuery("select max(substr(oid,2)) from organisation");
	try{
	   if(rs.next())
	      {
	     cnt=rs.getInt(1);
		  }
		} catch(Exception e){}
		  cnt++;
		  if(cnt>0 && cnt<10)
		     oid="O0000"+cnt;
		  else if(cnt>9 && cnt<100)
		      oid="O000"+cnt;
		  else if(cnt>99 && cnt<1000)
		  	           oid="O00"+cnt;
		  else if(cnt>999 && cnt<10000)
		  	           oid="O0"+cnt;			   
		  else 
		       oid="O"+cnt;		   
		  
	String qry="insert into login values('"+oid+"','"+logname+"','"+mail+"','"+pw+"','"+pw1+"','"+dt1+"','"+type+"','N')";
	//out.print("<br>"+qry+"<br>");
	st.executeUpdate(qry);
//	url="http://www."+url+"/";
	
	 qry="insert into organisation(oid, name, plotno, area, city, pincode, dist, state, phone, mail, timing, type, lati, longi) values('"+oid+"','"+name+"','"+plotno+"','"+area+"','"+city+"','"+pincode+"','"+dist+"','"+state+"','"+phone+"','"+mail+"','"+timing+"','"+type+"','"+lat+"','"+lng+"')";
	//out.print("<br>"+qry+"<br>");
	st.executeUpdate(qry);
	
	session.removeAttribute("oid");
	session.setAttribute("oid",oid);
	out.print("<br><font color=green size=+3>"+ name +" Registered Successfully </font><br />");
	}
	con.close();
	
	}catch(Exception e){out.print(e);}
%>

<div style="margin-top:100px;">
<font color=#F1C40F  size=+2>Choose Picture of Organization.</font>
<FORM ENCTYPE="multipart/form-data" ACTION="upservlet" METHOD=POST> 
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
<div style="margin-top:160px;">
<jsp:include page="footer.jsp"/>
</div>
	 
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
