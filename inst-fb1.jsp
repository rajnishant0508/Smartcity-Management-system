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
.table-content{
   margin-left:120px;
   margin-top:200px;
   
}
.form-control{
   margin:10px;
} 
.article{
   margin-left:120px;
   margin-top:170px;
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
		<jsp:include page="institute-nav-bar.jsp" />
      </div>
    </div>
   </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	  <h2 class="main-bar-content">Welcome <%=pp%> to </h2><br />
	     <img src="done.jpg" class="rounded float-left" style="margin-left:120px;" alt="...">
	    
        <div class="article">
          <%
		   try{
		    String id=(String)session.getAttribute("id");
		    String name=request.getParameter("name");
			String email=request.getParameter("email");
			String message=request.getParameter("message");
			String phone=request.getParameter("phone");
			String type=((String)session.getAttribute("type"));
            String dt1=new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
            String feedbackid="";
		    int cnt=0;
			ResultSet rs=st.executeQuery("select max(substr(feedbackid,3)) from contactus");
		    try{
			  if(rs.next()){
			    cnt=rs.getInt(1);
			  }
			}catch(Exception e){   }
			  cnt++;
			  if(cnt>0 && cnt<10)
			     feedbackid="FB0000"+cnt;
			  else if(cnt>9 && cnt<100)
			     feedbackid="FB000"+cnt;
			  else if(cnt>99 && cnt<1000)
			     feedbackid="FB00"+cnt;
			  else if(cnt>999 && cnt<10000)
			     feedbackid="FB0"+cnt;
			  else
			     feedbackid="FB"+cnt;
			  st.executeUpdate("insert into contactus values('"+feedbackid+"','"+id+"','"+dt1+"','"+type+"','"+name+"','"+email+"','"+phone+"','"+message+"','','PENDING')"); 
			 
			  out.print("<font color=green size=6> Thanks for your valuable feedback.We will get back to you in </font>");
			  out.print("<font color=#F7DC6F size=6>48 hours.</font><br><br>");
	
			}catch(Exception e){  out.print(e);   }
		  %>
        </div>
      </div>
      
      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="institute-left.jsp" />
        </div>
        
      </div>
	  

      
	 </div>
   </div>
</div>
<div class="footer" style="margin-top:350px;">
    <jsp:include page="member-footer.jsp" />
</div>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
