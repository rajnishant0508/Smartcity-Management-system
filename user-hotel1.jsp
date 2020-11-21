<%@ include file="dbcom.jsp" %>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="hotel.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}

body{
    background-color:#979A9A;
}
.checked {
  color: orange;
}


@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
<body>



<div>
 <jsp:include page="user-nav-bar-hotel.jsp" />
</div>






 
<!---Side Navation model
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onClick="closeNav()">&times;</a>
  <a href="#">Home</a>
  <a href="#">Profile</a>
  <a href="#">Bookings</a>
  <a href="#">e-Cash</a>
  <a href="#">Contact Us</a>
  <a href="#">Logout</a>
  
</div>
--->

<!-- Page content -->
<div class="w3-content" style="max-width:1532px;">

  <div class="w3-container w3-margin-top" id="rooms">
    <h3 style="margin-top:50px;">Rooms</h3>
    <p>Make yourself at home is our slogan. We offer the best beds in the industry. Sleep well and rest well.</p>
  </div>
  <form action="user-hotel.jsp">
  <div class="w3-row-padding">
    <div class="w3-col m3">
      <label><i class="fa fa-calendar-o"></i> Check In</label>
      <input class="form-control" type="date" placeholder="DD MM YYYY">
    </div>
    <div class="w3-col m3">
      <label><i class="fa fa-calendar-o"></i> Check Out</label>
      <input class="form-control" type="date" placeholder="DD MM YYYY">
    </div>
    <div class="w3-col m2">
      <label><i class="fa fa-male"></i> Adults</label>
      <input class="form-control" type="number" placeholder="1">
    </div>
    <div class="w3-col m2">
      <label><i class="fa fa-child"></i> Kids</label>
      <input class="form-control" type="number" placeholder="0">
    </div>
    <div class="w3-col m2">
      <label><i class="fa fa-search"></i> Search</label>
      <button class="w3-button w3-block w3-black form-control">Search</button>
    </div>
  </div>
  </form>

  

 
 
 
 
  
  <div class="row" style="margin-top:50px;">
    <div class="col-sm-4">
	
	  <h4 class="card-title" style="margin-left:20px;">Applied Filters</h4>
	  <h5 class="card-title" style="margin-left:20px; margin-top:40px;">Popular Filters</h5>
	     <div class="custom-control custom-checkbox" style="margin-left:20px;">
		  <input type="checkbox" class="custom-control-input" id="customCheckDisabled1" >
		  <label class="custom-control-label" for="customCheckDisabled1" style="color:black;">MySafety - Safe and Hygienic Stays</label>
		</div>
		 <div class="custom-control custom-checkbox" style="margin-left:20px;">
		  <input type="checkbox" class="custom-control-input" id="customCheckDisabled1" >
		  <label class="custom-control-label" for="customCheckDisabled1" style="color:black;">Pay @ Hotel Available</label>
		</div>
		 <div class="custom-control custom-checkbox" style="margin-left:20px;">
		  <input type="checkbox" class="custom-control-input" id="customCheckDisabled1" >
		  <label class="custom-control-label" for="customCheckDisabled1" style="color:black;">Free Breakfast
(3)

</label>
		</div>
		 <div class="custom-control custom-checkbox" style="margin-left:20px;">
		  <input type="checkbox" class="custom-control-input" id="customCheckDisabled1" >
		  <label class="custom-control-label" for="customCheckDisabled1" style="color:black;">Entire Property</label>
		</div>
		 <div class="custom-control custom-checkbox" style="margin-left:20px;">
		  <input type="checkbox" class="custom-control-input" id="customCheckDisabled1" >
		  <label class="custom-control-label" for="customCheckDisabled1" style="color:black;">Free Cancelation</label>
		</div>
	
	
	 <h5 class="card-title" style="margin-left:20px; margin-top:40px;">Star Category</h5>
	    <div class="custom-control custom-checkbox" style="margin-left:20px;">
		  <input type="checkbox" class="custom-control-input" id="customCheckDisabled1" >
		  <label class="custom-control-label" for="customCheckDisabled1" style="color:black;">Unrated</label>
		</div>
		 <div class="custom-control custom-checkbox" style="margin-left:20px;">
		  <input type="checkbox" class="custom-control-input" id="customCheckDisabled1" >
		  <label class="custom-control-label" for="customCheckDisabled1" style="color:black;">5 Star</label>
		</div>
		 <div class="custom-control custom-checkbox" style="margin-left:20px;">
		  <input type="checkbox" class="custom-control-input" id="customCheckDisabled1" >
		  <label class="custom-control-label" for="customCheckDisabled1" style="color:black;">3 Star</label>
		</div>
		 <div class="custom-control custom-checkbox" style="margin-left:20px;">
		  <input type="checkbox" class="custom-control-input" id="customCheckDisabled1" >
		  <label class="custom-control-label" for="customCheckDisabled1" style="color:black;">2 Star</label>
		</div>
		 <div class="custom-control custom-checkbox" style="margin-left:20px;">
		  <input type="checkbox" class="custom-control-input" id="customCheckDisabled1" >
		  <label class="custom-control-label" for="customCheckDisabled1" style="color:black;">1 Star</label>
		</div>
		
		
		
		<h5 class="card-title" style="margin-left:20px; margin-top:40px;">User Rating</h5>
	    <div class="custom-control custom-checkbox" style="margin-left:20px;">
		  <input type="checkbox" class="custom-control-input" id="customCheckDisabled1" >
		  <label class="custom-control-label" for="customCheckDisabled1" style="color:black;">4.5 & above (Excellent)</label>
		</div>
		 <div class="custom-control custom-checkbox" style="margin-left:20px;">
		  <input type="checkbox" class="custom-control-input" id="customCheckDisabled1" >
		  <label class="custom-control-label" for="customCheckDisabled1" style="color:black;">4 & above (Very Good)</label>
		</div>
		 <div class="custom-control custom-checkbox" style="margin-left:20px;">
		  <input type="checkbox" class="custom-control-input" id="customCheckDisabled1" >
		  <label class="custom-control-label" for="customCheckDisabled1" style="color:black;">3 & above (Good)</label>
		</div>
		 
		
		
		
		
		<h5 class="card-title" style="margin-left:20px; margin-top:40px;">Property Type</h5>
	    <div class="custom-control custom-checkbox" style="margin-left:20px;">
		  <input type="checkbox" class="custom-control-input" id="customCheckDisabled1" >
		  <label class="custom-control-label" for="customCheckDisabled1" style="color:black;">Appartment</label>
		</div>
		 <div class="custom-control custom-checkbox" style="margin-left:20px;">
		  <input type="checkbox" class="custom-control-input" id="customCheckDisabled1" >
		  <label class="custom-control-label" for="customCheckDisabled1" style="color:black;">Hotel</label>
		</div>
		 <div class="custom-control custom-checkbox" style="margin-left:20px;">
		  <input type="checkbox" class="custom-control-input" id="customCheckDisabled1" >
		  <label class="custom-control-label" for="customCheckDisabled1" style="color:black;">Villa</label>
		</div>
		 
		
		
		
		<h5 class="card-title" style="margin-left:20px; margin-top:40px;">Facility</h5>
	    <div class="custom-control custom-checkbox" style="margin-left:20px;">
		  <input type="checkbox" class="custom-control-input" id="customCheckDisabled1" >
		  <label class="custom-control-label" for="customCheckDisabled1" style="color:black;">Spa</label>
		</div>
		 <div class="custom-control custom-checkbox" style="margin-left:20px;">
		  <input type="checkbox" class="custom-control-input" id="customCheckDisabled1" >
		  <label class="custom-control-label" for="customCheckDisabled1" style="color:black;">Eleviator/Lift</label>
		</div>
		 <div class="custom-control custom-checkbox" style="margin-left:20px;">
		  <input type="checkbox" class="custom-control-input" id="customCheckDisabled1" >
		  <label class="custom-control-label" for="customCheckDisabled1" style="color:black;">Outdoor Sports</label>
		</div>
		 
	
	
	
	
	
	</div>
	
	
	<div class="col-sm-8">
	        
		<%  
		    String strr=request.getParameter("strr");
									//out.print(strr);
		    String daay=request.getParameter("daay");
			
			String ckin=request.getParameter("ckin");
			String ckout=request.getParameter("ckout");
			String typ=request.getParameter("typ");
			String adult=request.getParameter("adult");
			//out.print(adult);
			//out.print(typ);
			
			 String idd=""; 
			 String siz="" ,avail="", romid=""; 
			 int pric=0, total_price=0, cnt=0, ava=0; 
			 String total="";
		   
		%>   
		   
		   <div class="card mb-3" style="max-width: 870px;">
			  <div class="row no-gutters">
				<div class="col-md-4">
				  <img src="images/trident.jpg" class="card-img" alt="...">
				</div>
				
				 
					        <% 
							   try{
							      
								  
									
								    ResultSet rs=st.executeQuery("select * from hotel where name='Ashoka Hotel'");
									try{
										if(rs.next()){
										   idd = rs.getString(1);
										   //out.println(idd);
										  
										}
									}catch(Exception e){  out.print(e);  }
									
									cnt = Integer.parseInt(strr);
									
									
									if(cnt==1 && typ.equals("AC")){
									    
										rs=st.executeQuery("Select * from room where hid='"+idd+"' and facility='singleAC'");
										try{
										if(rs.next()){
										    romid=rs.getString(1);
											siz = rs.getString(3);
											pric = rs.getInt(5);
											avail = rs.getString(7);
											//out.print(romid);
											
										}	
										}catch(Exception e){    out.print(e);   }
										 
									    ava = Integer.parseInt(avail);
										
										int str = Integer.parseInt(strr);
										int day = Integer.parseInt(daay);
										total_price=pric*day*str;
									
										//out.println(total_price);
										
										  total = Integer.toString(total_price); 
										//out.print(total);
									}else if(cnt!=1 && typ.equals("AC")){
									
									
									    rs=st.executeQuery("Select * from room where hid='"+idd+"' and facility='doubleAC'");
										try{
										if(rs.next()){
										    romid=rs.getString(1);
											siz = rs.getString(3);
											pric = rs.getInt(5);
											avail = rs.getString(7);
											
										}	
										}catch(Exception e){    out.print(e);   }
										 
										ava = Integer.parseInt(avail);
										
										int str = Integer.parseInt(strr);
										int day = Integer.parseInt(daay);
										total_price=pric*day*str;
									
										//out.println(total_price);
										
										  total = Integer.toString(total_price); 
										//out.print(total);
									
									
									}else if(cnt==1 && typ.equals("Non Ac")){
									
									
									    rs=st.executeQuery("Select * from room where hid='"+idd+"' and facility='NON AC1'");
										try{
										if(rs.next()){
										    romid=rs.getString(1);
											siz = rs.getString(3);
											pric = rs.getInt(5);
											avail = rs.getString(7);
											
										}	
										}catch(Exception e){    out.print(e);   }
										 
										ava = Integer.parseInt(avail);
										
										int str = Integer.parseInt(strr);
										int day = Integer.parseInt(daay);
										total_price=pric*day*str;
									
										//out.println(total_price);
										
										  total = Integer.toString(total_price); 
										//out.print(total);
									
									}else{
									
									
									    rs=st.executeQuery("Select * from room where hid='"+idd+"' and facility='NON AC2'");
										try{
										if(rs.next()){
										    romid=rs.getString(1);
											siz = rs.getString(3);
											pric = rs.getInt(5);
											avail = rs.getString(7);
									         
												
										}	
										}catch(Exception e){    out.print(e);   }
										 
										ava = Integer.parseInt(avail);
										
										int str = Integer.parseInt(strr);
										int day = Integer.parseInt(daay);
										total_price=pric*day*str;
									
										//out.println(total_price);
										
										  total = Integer.toString(total_price); 
										//out.print(total);
								  
								   }
							
								
							
							%>
							
				
				
				
				<div class="col-md-8">
				  <div class="card-body">
				   <div class="row">
				   <div class="col-md-6">
					<h5 class="card-title">Ashoka Hotel</h5>
					<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star"></span>
						<span class="fa fa-star"></span>
					<p class="card-text"><small class="text-muted">South Bhubneswar  </small></p>
					<h6 class="card-title">Premium & spa</h6>
					<p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i> <i class="fa fa-tv"></i> <i class="fa fa-glass"></i> <i class="fa fa-cutlery"></i></p>
					</div>
					<div class="col-md-6">
					    <h6 class="card-title">Including in this Price</h6>
					   <i class="fa fa-check" aria-hidden="true" style="color:green;"> <b style="color:green;">Free Cancellation</b> .Free breakfast</i><br><br>
					   <%   out.print("<font >Room Size: "+siz+"m sq</font>");   %>
					   <div style="margin-left:170px;">
						   <i class="fa fa-inr" aria-hidden="true"><%out.print(pric);%></i>
						   <p class="card-text"><small class="text-muted">Per Night  </small></p>
                       </div>
					   
					        <%if(cnt>ava){%>
							<p style="color:red;">No Rooom Available..!!</p>
							<%}else{%>
					   		<a href="user-hotel2.jsp?a1=<%=total%>&a2=<%=idd%>&a3=<%=ckin%>&a4=<%=ckout%>&a5=<%=romid%>&a6=<%=strr%>&a7=<%=daay%>"><input type="button" value="INR&nbsp;<%=total%>" class="btn btn-success"></a>
						     <%}%>			
							  
					      	
					</div>
					</div>
				  </div>
				</div>
			  </div>
		    </div>
			
			
			
			
			
			
			
			
			
			
			
		   <div class="card mb-3" style="max-width: 870px;">
			  <div class="row no-gutters">
				<div class="col-md-4">
				  <img src="images/trident.jpg" class="card-img" alt="...">
				</div>
				   <% 
				       
							   
							      
								  
									
								    rs=st.executeQuery("select * from hotel where name='Trident Residential'");
									try{
										if(rs.next()){
										   idd = rs.getString(1);
										   //out.println(idd);
										  
										}
									}catch(Exception e){  out.print(e);  }
									
									cnt = Integer.parseInt(strr);
									if(cnt==1 && typ.equals("AC")){
									    
										rs=st.executeQuery("Select * from room where hid='"+idd+"' and facility='singleAC'");
										try{
										if(rs.next()){
										    romid=rs.getString(1);
											siz = rs.getString(3);
											pric = rs.getInt(5);
											avail = rs.getString(7);
						
											
										}	
										}catch(Exception e){    out.print(e);   }
										 
									    ava = Integer.parseInt(avail);
										
										int str = Integer.parseInt(strr);
										int day = Integer.parseInt(daay);
										total_price=pric*day*str;
									
										//out.println(total_price);
										
										  total = Integer.toString(total_price); 
										//out.print(total);
									}else if(cnt!=1 && typ.equals("AC")){
									
									
									    rs=st.executeQuery("Select * from room where hid='"+idd+"' and facility='doubleAC'");
										try{
										if(rs.next()){
										    romid=rs.getString(1);
											siz = rs.getString(3);
											pric = rs.getInt(5);
											avail = rs.getString(7);
										}	
										}catch(Exception e){    out.print(e);   }
										 
										ava = Integer.parseInt(avail);
										
										int str = Integer.parseInt(strr);
										int day = Integer.parseInt(daay);
										total_price=pric*day*str;
									
										//out.println(total_price);
										
										  total = Integer.toString(total_price); 
										//out.print(total);
									
									
									}else if(cnt==1 && typ.equals("Non Ac")){
									
									
									    rs=st.executeQuery("Select * from room where hid='"+idd+"' and facility='NON AC1'");
										try{
										if(rs.next()){
										    romid=rs.getString(1);
											siz = rs.getString(3);
											pric = rs.getInt(5);
											avail = rs.getString(7);
										}	
										}catch(Exception e){    out.print(e);   }
										 
										ava = Integer.parseInt(avail);
										
										int str = Integer.parseInt(strr);
										int day = Integer.parseInt(daay);
										total_price=pric*day*str;
									
										//out.println(total_price);
										
										  total = Integer.toString(total_price); 
										//out.print(total);
									
									}else{
									
									
									    rs=st.executeQuery("Select * from room where hid='"+idd+"' and facility='NON AC2'");
										try{
										if(rs.next()){
										    romid=rs.getString(1);
											siz = rs.getString(3);
											pric = rs.getInt(5);
											avail = rs.getString(7);
										}	
										}catch(Exception e){    out.print(e);   }
										 
										ava = Integer.parseInt(avail);
										
										int str = Integer.parseInt(strr);
										int day = Integer.parseInt(daay);
										total_price=pric*day*str;
									
										//out.println(total_price);
										
										  total = Integer.toString(total_price); 
										//out.print(total);
								  
								   }
									
									
							
								
							
							%>
							
							
							
							
				<div class="col-md-8">
				  <div class="card-body">
				   <div class="row">
				   <div class="col-md-6">
					<h5 class="card-title">Trident Hotel</h5>
					<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star"></span>
						<span class="fa fa-star"></span>
					<p class="card-text"><small class="text-muted">South Bhubneswar  </small></p>
					<h6 class="card-title">Premium & spa</h6>
					<p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i> <i class="fa fa-tv"></i> <i class="fa fa-glass"></i> <i class="fa fa-cutlery"></i></p>
					</div>
					<div class="col-md-6">
					    <h6 class="card-title">Including in this Price</h6>
					   <i class="fa fa-check" aria-hidden="true" style="color:green;"> <b style="color:green;">Free Cancellation</b> .Free breakfast</i><br><br>
					  
					    <%   out.print("<font >Room Size: "+siz+"m sq</font>");   %>
					   <div style="margin-left:170px;">
						   <i class="fa fa-inr" aria-hidden="true"><%out.print(pric);%></i>
						   <p class="card-text"><small class="text-muted">Per Night  </small></p>
                       </div>
					   
					        <%if(cnt>ava){%>
							<p style="color:red;">No Rooom Available..!!</p>
							<%}else{%>
					   		<a href="user-hotel2.jsp?a1=<%=total%>&a2=<%=idd%>&a3=<%=ckin%>&a4=<%=ckout%>&a5=<%=romid%>&a6=<%=strr%>&a7=<%=daay%>"><input type="button" value="INR&nbsp;<%=total%>" class="btn btn-success"></a>
						     <%}%>		
							 
					      		
					</div>
					</div>
				  </div>
				</div>
			  </div>
		    </div>
			
			
			
			
			
		   <div class="card mb-3" style="max-width: 870px;">
			  <div class="row no-gutters">
				<div class="col-md-4">
				  <img src="images/trident.jpg" class="card-img" alt="...">
				</div>
				 <% 
							      
								  
								    rs=st.executeQuery("select * from hotel where name='Meer Residential'");
									try{
										if(rs.next()){
										   idd = rs.getString(1);
										   //out.println(idd);
										  
										}
									}catch(Exception e){  out.print(e);  }
									
									cnt = Integer.parseInt(strr);
									
									if(cnt==1 && typ.equals("AC")){
									    
										rs=st.executeQuery("Select * from room where hid='"+idd+"' and facility='singleAC'");
										try{
										if(rs.next()){
										    romid=rs.getString(1);
											siz = rs.getString(3);
											pric = rs.getInt(5);
											avail = rs.getString(7);
											
										}	
										}catch(Exception e){    out.print(e);   }
										 
									    ava = Integer.parseInt(avail);
										
										int str = Integer.parseInt(strr);
										int day = Integer.parseInt(daay);
										total_price=pric*day*str;
									
										//out.println(total_price);
										
										  total = Integer.toString(total_price); 
										//out.print(total);
									}else if(cnt!=1 && typ.equals("AC")){
									
									
									    rs=st.executeQuery("Select * from room where hid='"+idd+"' and facility='doubleAC'");
										try{
										if(rs.next()){
										    romid=rs.getString(1);
											siz = rs.getString(3);
											pric = rs.getInt(5);
											avail = rs.getString(7);
										}	
										}catch(Exception e){    out.print(e);   }
										 
										ava = Integer.parseInt(avail);
										
										int str = Integer.parseInt(strr);
										int day = Integer.parseInt(daay);
										total_price=pric*day*str;
									
										//out.println(total_price);
										
										  total = Integer.toString(total_price); 
										//out.print(total);
									
									
									}else if(cnt==1 && typ.equals("Non AC")){
									
									
									    rs=st.executeQuery("Select * from room where hid='"+idd+"' and facility='NON AC1'");
										try{
										if(rs.next()){
										    romid=rs.getString(1);
											siz = rs.getString(3);
											pric = rs.getInt(5);
											avail = rs.getString(7);
										}	
										}catch(Exception e){    out.print(e);   }
										 
										ava = Integer.parseInt(avail);
										
										int str = Integer.parseInt(strr);
										int day = Integer.parseInt(daay);
										total_price=pric*day*str;
									
										//out.println(total_price);
										
										  total = Integer.toString(total_price); 
										//out.print(total);
									
									}else{
									
									
									    rs=st.executeQuery("Select * from room where hid='"+idd+"' and facility='NON AC2'");
										try{
										if(rs.next()){
										    romid=rs.getString(1);
											siz = rs.getString(3);
											pric = rs.getInt(5);
											avail = rs.getString(7);
										}	
										}catch(Exception e){    out.print(e);   }
										 
										ava = Integer.parseInt(avail);
										
										int str = Integer.parseInt(strr);
										int day = Integer.parseInt(daay);
										total_price=pric*day*str;
									
										//out.println(total_price);
										
										  total = Integer.toString(total_price); 
										//out.print(total);
								  
								   }
									
									
									
								
			    %>						
							
				
				<div class="col-md-8">
				  <div class="card-body">
				   <div class="row">
				   <div class="col-md-6">
					<h5 class="card-title">Meer Residential</h5>
					<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star"></span>
						<span class="fa fa-star"></span>
					<p class="card-text"><small class="text-muted">South Bhubneswar  </small></p>
					<h6 class="card-title">Premium & spa</h6>
					<p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i> <i class="fa fa-tv"></i> <i class="fa fa-glass"></i> <i class="fa fa-cutlery"></i></p>
					</div>
					<div class="col-md-6">
					    <h6 class="card-title">Including in this Price</h6>
					   <i class="fa fa-check" aria-hidden="true" style="color:green;"> <b style="color:green;">Free Cancellation</b> .Free breakfast</i><br><br>
					  
					 <%   out.print("<font >Room Size: "+siz+"m sq</font>");   %>
					   <div style="margin-left:170px;">
						   <i class="fa fa-inr" aria-hidden="true"><%out.print(pric);%></i>
						   <p class="card-text"><small class="text-muted">Per Night  </small></p>
                       </div>
					   
					        <%if(cnt>ava){%>
							<p style="color:red;">No Rooom Available..!!</p>
							<%}else{%>
					   		<a href="user-hotel2.jsp?a1=<%=total%>&a2=<%=idd%>&a3=<%=ckin%>&a4=<%=ckout%>&a5=<%=romid%>&a6=<%=strr%>&a7=<%=daay%>"><input type="button" value="INR&nbsp;<%=total%>" class="btn btn-success"></a>
						     <%}%>		
					  
					       	
					</div>
					</div>
				  </div>
				</div>
			  </div>
		    </div>
			
			
			
			
			
		   <div class="card mb-3" style="max-width: 870px;">
			  <div class="row no-gutters">
				<div class="col-md-4">
				  <img src="images/trident.jpg" class="card-img" alt="...">
				</div>
				
				
				<% 
							       rs=st.executeQuery("select * from hotel where name='Empire Hotel'");
									try{
										if(rs.next()){
										   idd = rs.getString(1);
										   //out.println(idd);
										  
										}
									}catch(Exception e){  out.print(e);  }
									
									cnt = Integer.parseInt(strr);
									
									if(cnt==1 && typ.equals("AC")){
									    
										rs=st.executeQuery("Select * from room where hid='"+idd+"' and facility='singleAC'");
										try{
										if(rs.next()){
										    romid=rs.getString(1);
											siz = rs.getString(3);
											pric = rs.getInt(5);
											avail = rs.getString(7);
											
										}	
										}catch(Exception e){    out.print(e);   }
										 
									    ava = Integer.parseInt(avail);
										
										int str = Integer.parseInt(strr);
										int day = Integer.parseInt(daay);
										total_price=pric*day*str;
									
										//out.println(total_price);
										
										  total = Integer.toString(total_price); 
										//out.print(total);
									}else if(cnt!=1 && typ.equals("AC")){
									
									
									    rs=st.executeQuery("Select * from room where hid='"+idd+"' and facility='doubleAC'");
										try{
										if(rs.next()){
										    romid=rs.getString(1);
											siz = rs.getString(3);
											pric = rs.getInt(5);
											avail = rs.getString(7);
										}	
										}catch(Exception e){    out.print(e);   }
										 
										ava = Integer.parseInt(avail);
										
										int str = Integer.parseInt(strr);
										int day = Integer.parseInt(daay);
										total_price=pric*day*str;
									
										//out.println(total_price);
										
										  total = Integer.toString(total_price); 
										//out.print(total);
									
									
									}else if(cnt==1 && typ.equals("Non Ac")){
									
									
									    rs=st.executeQuery("Select * from room where hid='"+idd+"' and facility='NON AC1'");
										try{
										if(rs.next()){
										    romid=rs.getString(1);
											siz = rs.getString(3);
											pric = rs.getInt(5);
											avail = rs.getString(7);
										}	
										}catch(Exception e){    out.print(e);   }
										 
										ava = Integer.parseInt(avail);
										
										int str = Integer.parseInt(strr);
										int day = Integer.parseInt(daay);
										total_price=pric*day*str;
									
										//out.println(total_price);
										
										  total = Integer.toString(total_price); 
										//out.print(total);
									
									}else{
									
									
									    rs=st.executeQuery("Select * from room where hid='"+idd+"' and facility='NON AC2'");
										try{
										if(rs.next()){
										    romid=rs.getString(1);
											siz = rs.getString(3);
											pric = rs.getInt(5);
											avail = rs.getString(7);
										}	
										}catch(Exception e){    out.print(e);   }
										 
										ava = Integer.parseInt(avail);
										
										int str = Integer.parseInt(strr);
										int day = Integer.parseInt(daay);
										total_price=pric*day*str;
									
										//out.println(total_price);
										
										  total = Integer.toString(total_price); 
										//out.print(total);
								  
								   }
								
			    %>						
							
							
							
				<div class="col-md-8">
				  <div class="card-body">
				   <div class="row">
				   <div class="col-md-6">
					<h5 class="card-title">Empire Hotel</h5>
					<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star"></span>
						<span class="fa fa-star"></span>
					<p class="card-text"><small class="text-muted">South Bhubneswar  </small></p>
					<h6 class="card-title">Premium & spa</h6>
					<p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i> <i class="fa fa-tv"></i> <i class="fa fa-glass"></i> <i class="fa fa-cutlery"></i></p>
					</div>
					<div class="col-md-6">
					    <h6 class="card-title">Including in this Price</h6>
					   <i class="fa fa-check" aria-hidden="true" style="color:green;"> <b style="color:green;">Free Cancellation</b> .Free breakfast</i><br><br>
					  
					    <%   out.print("<font >Room Size: "+siz+"m sq</font>");   %>
					   <div style="margin-left:170px;">
						   <i class="fa fa-inr" aria-hidden="true"><%out.print(pric);%></i>
						   <p class="card-text"><small class="text-muted">Per Night  </small></p>
                       </div>
					   
					        <%if(cnt>ava){%>
							<p style="color:red;">No Rooom Available..!!</p>
							<%}else{%>
					   		<a href="user-hotel2.jsp?a1=<%=total%>&a2=<%=idd%>&a3=<%=ckin%>&a4=<%=ckout%>&a5=<%=romid%>&a6=<%=strr%>&a7=<%=daay%>"><input type="button" value="INR&nbsp;<%=total%>" class="btn btn-success"></a>
						     <%}%>		
					  
					   
					</div>
					</div>
				  </div>
				</div>
			  </div>
		    </div>
			
			
			
			
			
		   <div class="card mb-3" style="max-width: 870px;">
			  <div class="row no-gutters">
				<div class="col-md-4">
				  <img src="images/trident.jpg"  class="card-img" alt="...">
				</div>
				
				
				<%            rs=st.executeQuery("select * from hotel where name='vrinda Hotel'");
									try{
										if(rs.next()){
										   idd = rs.getString(1);
										   //out.println(idd);
										  
										}
									}catch(Exception e){  out.print(e);  }
									
									cnt = Integer.parseInt(strr);
									
									if(cnt==1 && typ.equals("AC")){
									    
										rs=st.executeQuery("Select * from room where hid='"+idd+"' and facility='singleAC'");
										try{
										if(rs.next()){
										    romid=rs.getString(1);
											siz = rs.getString(3);
											pric = rs.getInt(5);
											avail = rs.getString(7);
											
										}	
										}catch(Exception e){    out.print(e);   }
										 
									    ava = Integer.parseInt(avail);
										
										int str = Integer.parseInt(strr);
										int day = Integer.parseInt(daay);
										total_price=pric*day*str;
									
										//out.println(total_price);
										
										  total = Integer.toString(total_price); 
										//out.print(total);
									}else if(cnt!=1 && typ.equals("AC")){
									
									
									    rs=st.executeQuery("Select * from room where hid='"+idd+"' and facility='doubleAC'");
										try{
										if(rs.next()){
										    romid=rs.getString(1);
											siz = rs.getString(3);
											pric = rs.getInt(5);
											avail = rs.getString(7);
										}	
										}catch(Exception e){    out.print(e);   }
										 
										ava = Integer.parseInt(avail);
										
										int str = Integer.parseInt(strr);
										int day = Integer.parseInt(daay);
										total_price=pric*day*str;
									
										//out.println(total_price);
										
										  total = Integer.toString(total_price); 
										//out.print(total);
									
									
									}else if(cnt==1 && typ.equals("Non Ac")){
									
									
									    rs=st.executeQuery("Select * from room where hid='"+idd+"' and facility='NON AC1'");
										try{
										if(rs.next()){
										    romid=rs.getString(1);
											siz = rs.getString(3);
											pric = rs.getInt(5);
											avail = rs.getString(7);
										}	
										}catch(Exception e){    out.print(e);   }
										 
										ava = Integer.parseInt(avail);
										
										int str = Integer.parseInt(strr);
										int day = Integer.parseInt(daay);
										total_price=pric*day*str;
									
										//out.println(total_price);
										
										  total = Integer.toString(total_price); 
										//out.print(total);
									
									}else{
									
									
									    rs=st.executeQuery("Select * from room where hid='"+idd+"' and facility='NON AC2'");
										try{
										if(rs.next()){
										    romid=rs.getString(1);
											siz = rs.getString(3);
											pric = rs.getInt(5);
											avail = rs.getString(7);
										}	
										}catch(Exception e){    out.print(e);   }
										 
										ava = Integer.parseInt(avail);
										
										int str = Integer.parseInt(strr);
										int day = Integer.parseInt(daay);
										total_price=pric*day*str;
									
										//out.println(total_price);
										
										  total = Integer.toString(total_price); 
										//out.print(total);
								  
								   }
								
			    %>						
							
							
							
							
				<div class="col-md-8">
				  <div class="card-body">
				   <div class="row">
				   <div class="col-md-6">
					<h5 class="card-title">vrinda Hotel</h5>
					<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star checked"></span>
						<span class="fa fa-star"></span>
						<span class="fa fa-star"></span>
					<p class="card-text"><small class="text-muted">South Bhubneswar  </small></p>
					<h6 class="card-title">Premium & spa</h6>
					<p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i> <i class="fa fa-tv"></i> <i class="fa fa-glass"></i> <i class="fa fa-cutlery"></i></p>
					</div>
					<div class="col-md-6">
					    <h6 class="card-title">Including in this Price</h6>
					   <i class="fa fa-check" aria-hidden="true" style="color:green;"> <b style="color:green;">Free Cancellation</b> .Free breakfast</i><br><br>
					  
					    <%   out.print("<font >Room Size: "+siz+"m sq</font>");   %>
					   <div style="margin-left:170px;">
						   <i class="fa fa-inr" aria-hidden="true"><%out.print(pric);%></i>
						   <p class="card-text"><small class="text-muted">Per Night  </small></p>
                       </div>
					   
					        <%if(cnt>ava){%>
							<p style="color:red;">No Rooom Available..!!</p>
							<%}else{%>
					   		<a href="user-hotel2.jsp?a1=<%=total%>&a2=<%=idd%>&a3=<%=ckin%>&a4=<%=ckout%>&a5=<%=romid%>&a6=<%=strr%>&a7=<%=daay%>"><input type="button" value="INR&nbsp;<%=total%>" class="btn btn-success"></a>
						     <%}%>		
					   <%
					      con.close();
					      }catch(Exception e){   }
					   %>
					</div>
					</div>
				  </div>
				</div>
			  </div>
		    </div>
			
	
	
	
	</div>
  </div>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  <div class="w3-row-padding" id="about">
    <div class="w3-col l4 12">
      <h3>About</h3>
      <h6>Our hotel is one of a kind. It is truely amazing. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</h6>
    <p>We accept: <i class="fa fa-credit-card w3-large"></i> <i class="fa fa-cc-mastercard w3-large"></i> <i class="fa fa-cc-amex w3-large"></i> <i class="fa fa-cc-cc-visa w3-large"></i><i class="fa fa-cc-paypal w3-large"></i></p>
    </div>
    <div class="w3-col l8 12">
      <!-- Image of location/map -->
      <img src="https://img.traveltriangle.com/blog/wp-content/uploads/2019/11/Things-To-Do-In-Bhubaneswar-25th-nov.jpg" class="w3-image " style="width:100%;">
    </div>
  </div>
  
  
 

  <div class="w3-container">
    <h3>Our Hotels</h3>
    <h6>You can find our hotels anywhere in the world:</h6>
  </div>
  
  <div class="w3-row-padding w3-padding-16 w3-text-white w3-large">
    <div class="w3-half w3-margin-bottom">
      <div class="w3-display-container">
        <img src="https://images.unsplash.com/photo-1543257461-f3d2a74687a5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=887&q=80" alt="Cinque Terre" style="width:100%">
        <span class="w3-display-bottomleft w3-padding">Cinque Terre</span>
      </div>
    </div>
    <div class="w3-half">
      <div class="w3-row-padding" style="margin:0 -16px">
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRbRr1Kdt_GynBZRmtTtCMBx-aNrPv3NLCYscKvEsVOQzm2pTZv&usqp=CAU" alt="New York" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">Smart City</span>
          </div>
        </div>
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="https://qph.fs.quoracdn.net/main-qimg-c3a6d705c24ddeaca1f2f9ba5aac110e" alt="San Francisco" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">Nandan Kanan</span>
          </div>
        </div>
      </div>
      <div class="w3-row-padding" style="margin:0 -16px">
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="https://im.rediff.com/money/2016/jun/15city2.jpg" alt="Pisa" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">Bubneswar</span>
          </div>
        </div>
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="https://live.staticflickr.com/5531/30152673610_c8ae0a0244_b.jpg" alt="Paris" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">Puri Beach</span>
          </div>
        </div>
      </div>
    </div>
  </div>

 

  <div class="w3-container" id="contact">
    <h2>Contact</h2>
    <p>If you have any questions, do not hesitate to ask them.</p>
	<div class="col-sm-6">
    <form action="/action_page.php" >
      <p><input class="form-control" type="text" placeholder="Name" required name="Name"></p>
      <p><input class="form-control" type="text" placeholder="Email" required name="Email"></p>
      <p><input class="form-control" type="text" placeholder="Message" required name="Message"></p>
      <p><button class="w3-button w3-black w3-padding-large"  type="submit" style="border-radius: .35rem;">SEND MESSAGE</button></p>
    </form>
	</div>
  </div>

<!-- End page content -->
</div>

<!-- Footer -->
<footer >
     <jsp:include page="user-footer.jsp" />
</footer>
</div>


<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
  document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
  document.body.style.backgroundColor = "white";
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->



<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
