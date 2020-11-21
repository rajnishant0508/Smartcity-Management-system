
<%@ include file="dbcom.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smart City | Support</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<style type="text/css">

.checked {
  color: orange;
}


</style>
</head>
<body>


<div>
 <jsp:include page="user-nav-bar-hotel.jsp" />
</div>

<%
    String s1=request.getParameter("a1");
	String s2=request.getParameter("a2");
	String s3=request.getParameter("a3");
	String s4=request.getParameter("a4");
	String s5=request.getParameter("a5");
	String s6=request.getParameter("a6");
	String s7=request.getParameter("a7");
   //out.print(s3);
%>


 <%
 try{
   String uuid=(String)session.getAttribute("id");
   //out.print(uuid);
   String dt=new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
   //out.print(dt);
   String ddt="";
   SimpleDateFormat dates = new SimpleDateFormat("yyyy-MM-dd");
   Date d1 = dates.parse(dt);
   Date d2 = dates.parse(dt);
   //out.println(d1);
   //out.print(ddt);   
    
	try{    
      ResultSet rs=st.executeQuery("select * from booking1 where uid='"+uuid+"' and (status='approved' or status='expired')");
	
		if(rs.next()){
			 ddt=rs.getString(9);
			 d2 = dates.parse(ddt);
		}
	}catch(Exception ee){ out.print(ee);  }   
	   //out.print(ddt);
        
	   //out.println(d1);
	   //out.println(d2);
	    if(d1.before(d2)){
	   
%>

    <div style="margin-top:70px; margin-left:120px;">

    <%		
                out.print("<font color=red size=+3>Allready one booking is done from your ID. Now further Booking Allowed...!!!</font>");
          
    %>
  
    </div>
    <%   }else if( (d1.equals(d2)) || (d1.after(d2)) ){   %>
                
	

				<div class="container" style="margin-top:80px;">
					<div class="row">
						<div class="col-md-8">
						   <div class="row">
							 <div class="col-4"><img src="images/trident.jpg" alt="..." class="img-thumbnail" style="margin-top:10px;"></div>
							 <div class="col-8">
								<h5 class="card-title"><b>Ashoka Hotel</b>&nbsp;&nbsp;&nbsp;&nbsp;<span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star checked"></span><span class="fa fa-star"></span><span class="fa fa-star"></span></h5>
								<h6 class="card-title">Tivai Vaddo, Calangute, Bardez, Opp. To Porait Football ground, Calangute, Goa, 403516, India</h6>
									<div class="row">
									<div class="col-3" style="padding-right: 15px;">
									   
									   <div class="card bg-light mb-3" style="max-width:200px;">
										  <div class="card-header">Check-In</div>
										  <div class="card-body">
											<h5 class="card-title"><%=s3%><p></h5>
											
										  </div>
									  </div>
									
									</div>
									<div class="col-3" style="padding-right: 15px;">
									
									   <div class="card bg-light mb-3" style="max-width:200px;">
										  <div class="card-header">Check-Out</div>
										  <div class="card-body">
											<h5 class="card-title"><%=s4%></h5>
											
										  </div>
									  </div>
									  
									</div>
									<div class="col-6">
									   
									   <h5 class="card-title"><b><%=s7%> Days</b></h5><hr>
									   <h6 class="card-title">Rooms Allotment: <%=s6%> Rooms</h6><hr>
									   
									   
									   
									   
									</div>
								  </div>
								  <h7 class="card-title">Inclusion:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="fa fa-check" aria-hidden="true" style="color:#00CC33;"></i>Complimentary Wi-Fi Internet</h7>
							 </div>
						   </div>
						   
						   
							<div class="row" style="margin-top:50px;">
							 
							 <div class="col-12">
								<h5 class="card-title"><i class="fa fa-address-book fa-2x" aria-hidden="true" style="color:#FF0099;"></i><b style="font-size:24px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enter Traveler Details</b></h5>
								
								
								 <form action="user-hotel-payment.jsp">
								  <p>Contact Details</p>
								  <div class="row">
									<div class="col">
									  <input type="text" name="email" class="form-control" placeholder="Email">
									</div>
									<div class="col">
									  <input type="text" name="phone" class="form-control" placeholder="Phone No">
									</div>
								  </div>
								  <p>Traveler Details</p>
								  <div class="row">
									<div class="col">
									  <input type="text" name="name" class="form-control" placeholder="Name">
									</div>
									<div class="col">
									  <input type="text" name="addrs" class="form-control" placeholder="Address">
									</div>
								  </div>
								  <p>DOB</p>
								  <div class="row">
									<div class="col">
									  <input type="date" name="date" class="form-control" placeholder="DOB">
									</div>
									<div class="col">
									  <input name="r1" type="radio" value="Male" required="" checked="checked"/> Male   <input name="r1" type="radio" value="Female" />Female &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									  <input name="r2" type="radio" value="Maried" required="" checked="checked"/> Maried  <input name="r2" type="radio" value="Unmaried" />Unmaried <br><br>
									</div>
								  </div>
								   <div class="form-group">
									<label for="exampleFormControlTextarea1">Special Request:</label>
									<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="textfield"></textarea>
								  </div>
								  
								  <input type="hidden" name="ss1" value="<%=s1%>" />
								  <input type="hidden" name="ss2" value="<%=s2%>" />
								  <input type="hidden" name="ss3" value="<%=s3%>" />
								  <input type="hidden" name="ss4" value="<%=s4%>" />

								   <input type="hidden" name="ss5" value="<%=s5%>" />
									<input type="hidden" name="ss6" value="<%=s6%>" />
								  
								  <input type="submit" class="btn btn-success" style="margin-left:150px; width:400px; height:50px;" value="Continue">
								</form>
					
									
							 </div>
						   </div>
						   
						   
						</div>
						<div class="col-md-4" style="background-color:white; border-radius:5px; height:400px;">
						
						
						   <div class="row">
							<div class="col-sm-6"><p >Hotel Charges</p></div>
							<div class="col-sm-6"><i class="fa fa-inr" aria-hidden="true" ></i><%=s1%></div>
						  </div>
						  
						   <div class="row">
							<div class="col-sm-6"><p>Discount</p></div>
							<div class="col-sm-6"><i class="fa fa-inr" aria-hidden="true"></i>0</div>
						  </div><hr />
						  
						   <div class="row">
							<div class="col-sm-6"><p >Sub Total</p></div>
							<div class="col-sm-6"><i class="fa fa-inr" aria-hidden="true" ></i><%=s1%></div>
						  </div>
						  
						   <div class="row">
							<div class="col-sm-6"><p >Hotel GST</p></div>
							<div class="col-sm-6"><i class="fa fa-inr" aria-hidden="true" ></i>0</div>
						  </div><hr />
						  
						   <div class="row">
							<div class="col-sm-6"><p >You Pay</p></div>
							<div class="col-sm-6"><i class="fa fa-inr" aria-hidden="true" ></i><%=s1%></div>
						  </div>
						  
						   <div class="row">
							<div class="col-sm-6"><p >Total Saving</p></div>
							<div class="col-sm-6"><i class="fa fa-inr" aria-hidden="true" ></i>0</div>
						  </div>
						
						</div>
					</div>
					</div>		 
		 
     <%}%>
      
<%
con.close();
}catch(Exception e){ out.print(e);  }
%>








<footer style="margin-top:170px;">
<jsp:include page="user-footer.jsp"/>
</footer>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>









<!--
  String s1=request.getParameter("a1");
  String s2=request.getParameter("a2");
  out.print(s1);
  out.print(s2);
--->