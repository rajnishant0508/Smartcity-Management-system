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
		<jsp:include page="hotel-nav-bar.jsp" />
      </div>
    </div>
   </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	  <h2 class="main-bar-content">Welcome <%=pp%> to Update Booking Portal</h2>        
        <div class="article">
	      <%try{
		  
			  String str=request.getParameter("a1");
			  String str1=request.getParameter("a2");
			  //out.print(str);
			  //out.print(str1);
			  String rid="";
			  String hid="";
			  String room_avail="";
			  String room_given="";
			   if(str1.equalsIgnoreCase("A"))
			    {
				  
				   String qry="select * from booking1 where bid='"+str+"'";
				   ResultSet rs=st.executeQuery(qry);
				    if(rs.next()){
					    rid=rs.getString(2);
					    hid=rs.getString(3);
						room_given=rs.getString(7);
					}
					
					//out.println(rid);
					//out.println(hid);
					//out.println(room_given);
					
				   rs=st.executeQuery("select * from room where rid='"+rid+"' and hid='"+hid+"'");
				   if(rs.next()){
				      room_avail=rs.getString(7);
				   }	
				   //out.print(room_avail);
				   int resultant=0;
				   int room_avail1 = Integer.parseInt(room_avail);
				   int room_given1 = Integer.parseInt(room_given);
				   resultant=room_avail1+room_given1;
				   
				   //out.print(resultant);
				   
				   st.executeUpdate("update room set rooms_avail='"+resultant+"' where rid='"+rid+"' and hid='"+hid+"'");
				   
				   st.executeUpdate("update booking1 set status='expired' where bid='"+str+"'");
			
				   out.print("<font Color=green size=+3>Updated Successfully</font></br>");
				
			  }
				 
			con.close();
			}catch(Exception e){ }  	
			%>
        </div>

      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="hotel-left.jsp" />
        </div>
        
      </div>
	  

      
	 </div>
   </div>
</div>

</body>
</html>
