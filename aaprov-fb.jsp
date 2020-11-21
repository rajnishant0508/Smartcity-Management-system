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
				  String str=request.getParameter("a1");
				  String str1=request.getParameter("a2");
				  String reply=request.getParameter("a3");
				   if(str1.equalsIgnoreCase("A")){
					
					st.executeUpdate("update contactus set status='Completed' , reply='"+reply+"' where feedbackid='"+str+"'");
					out.print("<font Color=green size=+3>"+ str +" Feedback Process Completed Successfully</font></br>");
				   }else{
					st.executeUpdate("delete from contactus where feedbackid='"+str+"'");
					out.print("<font Color=red size=3>"+ str +" Feedback Removed Successfully</font></br>");
				   }
				   

			con.close();
			}catch(Exception e){ }  	
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
