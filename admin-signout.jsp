<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smart City</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<style type="text/css">
.main-bar-content{
   margin-left:120px;
   margin-top:80px;
}
.style4{
   margin-left:120px;
}

</style>
<script language="javascript">
   window.history.forward(-1);
</script>
</head>
<body>
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
	  
	<h2 class="main-bar-content"> Welcome <%=((String) session.getAttribute("logname")).toUpperCase() %> to Sign Out</h2>    
    </div>
  
  <h2><span class="style4">Please Confirm to <a href="index.jsp">Logoff.</a></span></h2>

      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="admin-left.jsp" />
        </div>
        
      </div>
	  
      
    </div>
    </div>
  </div>
  <div class="footer">
    <jsp:include page="admin-footer.jsp" />
  </div>
</div>
</body>
</html>
