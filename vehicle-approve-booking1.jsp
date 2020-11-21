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
		<jsp:include page="vehicle-nav-bar.jsp" />
      </div>
    </div>
   </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	  <h2 class="main-bar-content">Welcome <%=pp%> to Approve Vehicle</h2>
        <div class="article">
            <%try{
      		  String str=request.getParameter("a1");
			   String str1=request.getParameter("a2");
			   String str2= (String)session.getAttribute("id");
			   //out.print(str);
			   //out.print(str1);
			   //out.print(str2);
			   if(str1.equalsIgnoreCase("A"))
			    {
				   
				   String qry="update booking set status='Complete' where bookid='"+str+"'";
	               st.executeUpdate(qry);
				   //out.print(qry);
				   out.print("<font Color=green size=+3> Approved Successfully</font></br>");
				 }
				 else
				 {
				 String qry2="update vehicle set availability='Y' where vid='"+str2+"'";
				 //out.print(qry2);
				  st.executeUpdate(qry2);
				 String qry1="update booking set status='Rejected' where bid='"+str+"'";
				  //out.print(qry1);
				    st.executeUpdate(qry1);
				 
				   out.print("<font Color=red size=+3> Rejected Successfully</font></br>");
				  }
				 
				   
			con.close();
			}
			catch(Exception e){ }  
			%>
     
      </div>
  </div>

      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="vehicle-left.jsp" />
        </div>
        
      </div>
	  

      
	 </div>
   </div>
</div>
<div class="footer" style="margin-top:370px;">
    <jsp:include page="member-footer.jsp" />
</div>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
