<%@ include file="dbcom.jsp" %>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>

<div>
 <jsp:include page="user-nav-bar-hotel.jsp" />
</div>


<div style="margin-top:100px;">
 <img src="done.jpg" class="rounded float-left" style="margin-left:120px;" alt="...">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <i class="fa fa-check-circle fa-3x" aria-hidden="true" style="color:#00FF33; margin-top:45px;"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b style="font-size:30px;">Payment Done</b>
</div>



<%

            String total=request.getParameter("total");
			String iid=request.getParameter("iid");
			String chkin=request.getParameter("chkin");
			String chkout=request.getParameter("chkout");
			String romid=request.getParameter("romid");
			String nosroom=request.getParameter("nosroom");
			String email=request.getParameter("email");
			String ph=request.getParameter("ph");
			String name=request.getParameter("name");
			String addrs=request.getParameter("addrs");
			String date=request.getParameter("date");
			String r1=request.getParameter("r1");
			String r2=request.getParameter("r2");
			String txt=request.getParameter("txt");
			
			String cardname=request.getParameter("cardname");
			String cardno=request.getParameter("cardnumber");
			String dt=new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
			String id=(String)session.getAttribute("id");
			//out.print(id);
%>

<%
             try{
			 
				 con.setAutoCommit(false);
				 
				 int cnt=0;
				 String cid="";
				 String bid="";
				 String payid="";
				 
				 
				 
				 try{
				   ResultSet rs=st.executeQuery("Select max(substr(cid,2)) from customer");
				   if(rs.next()){
						cnt=rs.getInt(1);
				   }
				 }catch(Exception e){            }
				 cnt++;
						   
				 if(cnt>0 && cnt<10)
					cid="C0000"+cnt;
				 else if(cnt>9 && cnt<100)
					cid="C000"+cnt;
				 else if(cnt>99 && cnt<1000)
					cid="C00"+cnt; 
				 else if(cnt>999 && cnt<10000)
					cid="C0"+cnt;
				 else
				    cid="C"+cnt;	
					
					
				 st.executeUpdate("insert into customer values('"+cid+"','"+id+"','"+name+"','"+addrs+"','"+ph+"','"+email+"','"+date+"','"+r1+"','"+r2+"')");
				 
				cnt=0;	
				try{
				   ResultSet rs=st.executeQuery("Select max(substr(bid,2)) from booking1");
				   if(rs.next()){
						cnt=rs.getInt(1);
				   }
				}catch(Exception e){            }
				cnt++;
				
				if(cnt>0 && cnt<10)
					bid="b0000"+cnt;
				 else if(cnt>9 && cnt<100)
					bid="b000"+cnt;
				 else if(cnt>99 && cnt<1000)
					bid="b00"+cnt; 
				 else if(cnt>999 && cnt<10000)
					bid="b0"+cnt;
				 else
				    bid="b"+cnt;
				
				st.executeUpdate("insert into booking1 values('"+bid+"','"+romid+"','"+iid+"','None','"+cid+"','"+id+"','"+nosroom+"','"+chkin+"','"+chkout+"','"+dt+"','"+total+"','pending')");
				
				cnt=0;
				try{
				   ResultSet rs=st.executeQuery("Select max(substr(payid,2)) from payment");
				   if(rs.next()){
						cnt=rs.getInt(1);
				   }
				}catch(Exception e){            }
				cnt++;
				
				if(cnt>0 && cnt<10)
					payid="T0000"+cnt;
				 else if(cnt>9 && cnt<100)
					payid="T000"+cnt;
				 else if(cnt>99 && cnt<1000)
					payid="T00"+cnt; 
				 else if(cnt>999 && cnt<10000)
					payid="T0"+cnt;
				 else
				    payid="T"+cnt;
					
			     st.executeUpdate("insert into payment values('"+payid+"','"+cid+"','"+bid+"','"+name+"','"+dt+"','"+cardno+"','"+cardname+"','"+total+"')");		
				 
				 cnt=0;
				 int count=0;
				 int avail=0;
				 int nosrm = Integer.parseInt(nosroom);
				 ResultSet rs=st.executeQuery("select * from room where rid='"+romid+"'");
				 if(rs.next()){
				     avail=rs.getInt(7);
				 
				 }
				 count=avail-nosrm;
				 
				 if(count>0){
					 st.executeUpdate("update room set rooms_avail='"+count+"' where rid='"+romid+"'");
					 
				 }else{
				    st.executeUpdate("update room set rooms_avail='"+cnt+"' where rid='"+romid+"'");
					
				 }	
				 
				  out.print("<br><br><br><br><font color=green size=6 style='margin-left:70px;'> You will recieve a Confirmation Message of Booking. And we will get back to you in </font>");
			      out.print("<font color=#85C1E9 size=6>24 hours.</font><br><br>");
				
			    con.commit();
				
				}catch(Exception e){  
				   try{
					  con.rollback();
					}catch(Exception ee){     }
				   System.out.println(e);
				}
				try{
					  con.close();
				}catch(Exception ee){  }




%>





<footer style="margin-top:230px;" >
     <jsp:include page="user-footer.jsp" />
</footer>

</body>
</html>
