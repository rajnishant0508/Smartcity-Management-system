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
		<jsp:include page="vehicle-nav-bar.jsp" />
      </div>
    </div>
</div>

<div class="main-content">
      <center>
	  <h2 class="main-bar-content">Welcome to Vehicle Registration</h2>
	  
	  <span style="color:#00FF00; font-size:22px;" class="style4">Uploaded Successfully...</span><br><br>
	  <span style="color:maroon; font-size:25px;" class="style4">Wait for Approval. Click to <a href="index.jsp">Home </a></span>
	  
		</center>
</div>
<div style="margin-top:200px;">
<jsp:include page="footer.jsp"/>
</div>
	 
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
