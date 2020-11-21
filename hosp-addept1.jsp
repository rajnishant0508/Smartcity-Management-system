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
.article{
  margin-left:120px;
  margin-top:30px;
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
		<jsp:include page="hospital-nav-bar.jsp" />
      </div>
    </div>
   </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	  <h2 class="main-bar-content">Welcome <%=pp%> to Member Home</h2>
	     <div class="article">
		   <%
		   
		      String oid=(String)session.getAttribute("id");
			  String name=request.getParameter("select");
              String type=request.getParameter("type");
			  String timing=request.getParameter("timing");
		  %>
		  <%
		    try{
			  ResultSet rs=st.executeQuery("select a. * from dept a, login b where a.oid='"+oid+"' and a.name='"+name+"'");
			  if(rs.next()){
			     out.print("<font color=red size=6>Allready Registered!!!</font>");
			  }else{
				  int cnt=0;
				  String depid="";
				  try{
				    rs=st.executeQuery("select max(substr(depid,2)) from dept");
					if(rs.next()){
					   cnt=rs.getInt(1);			
					}
				  }catch(Exception e){   }
				  cnt++;
				  
				  if(cnt>0 && cnt<10)
					depid="D000"+cnt;
				  else if(cnt>9 && cnt<100)
					depid="D00"+cnt;
				  else if(cnt>99 && cnt<1000)
					 depid="D0"+cnt;
				 else
					 depid="D"+cnt;
				  String qry="insert into dept values('"+depid+"','"+oid+"','"+name+"','"+type+"','"+timing+"')";
				  
				  st.executeUpdate(qry);
				  
				  out.print("<font color=green size=6>Registered Successfully</font>");
				  con.close();
			 }
		
			  }catch(Exception e){ out.print(e); }	 
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
<div class="footer" style="margin-top:500px;">
    <jsp:include page="member-footer.jsp" />
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
