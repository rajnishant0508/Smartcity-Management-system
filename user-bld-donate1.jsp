<%@ include file="dbcom.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smart City | Support</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="footerr.css">


<style type="text/css">
.main-bar-content{
  
   margin-top:80px;
}
.table-content{
   margin-top:40px;
   margin-left:10px;
}
.form-control{
   margin:10px;
}
.style4{
   margin-left:50px;
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
		<jsp:include page="user-nav-bar.jsp" />
      </div>
      
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	  <h2 class="main-bar-content">Welcome <%=pp%> to  Donate Blood</h2>
	  <%
          try{
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String phno=request.getParameter("phno");
			String gen=request.getParameter("gen");
			String text1=request.getParameter("text1");
			String text2=request.getParameter("text2");
			String grp=request.getParameter("grp");
			String rh=request.getParameter("rh");
			String date=request.getParameter("date");
			String id=(String)session.getAttribute("id");
            String dt=new  java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
	 %>
	 <%
	     ResultSet rs=st.executeQuery("Select * from blddonation where uid='"+id+"'");
		 int data=1;
		 if(!rs.next()){
		   data=0;
		 }
		String qry="select * from blddonation where uid='"+id+"' and (select dntdate from blddonation where uid='"+id+"' order by dntdate desc limit 1) < DATE_ADD( NOW( ) , INTERVAL -3 MONTH ) order by dntdate desc";
		rs=st.executeQuery(qry);
		if(rs.next() || data==0){
			rs=st.executeQuery("select max(substr(did,2)) from blddonation");
			int cnt=0;
			String did="";
			try{
				if(rs.next())
					cnt=rs.getInt(1);	
			}catch(Exception eee){}
			cnt++;
			if(cnt>0 && cnt<10)
				did="D000"+cnt;
			else if(cnt>9 && cnt<100)
				did="D00"+cnt;
			else if(cnt>99 && cnt<1000)
				did="D0"+cnt;
			else 
				did="D"+cnt;
			qry="insert into blddonation values('"+did+"', 'None', '"+id+"', '"+grp+"', '"+rh+"','"+date+"','Pending')";
			//out.print(qry);
			st.executeUpdate(qry);
			out.print("<font color=#2ECC71 size=+3>Blood Requisition Complete.</font>");
		}else{
			out.print("<font color=red size=+3>You have already given blood within last 3 month.</font>");
		}
		 
		con.close();
		}catch(Exception e){  } 
		%>	 

 

        </div>

      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="user-left.jsp" />
        </div>
        
      </div>
	  

      
	  </div>
    </div>
  </div>
  
  <div class="footer" style="margin-top:500px;">
   <jsp:include page="user-footer.jsp"/>
  </div>









<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
