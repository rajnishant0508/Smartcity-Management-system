
<%@ include file="dbcom.jsp" %>
<%
String em = request.getParameter("email");
String s1=request.getParameter("na");
String s2=request.getParameter("pw");
String s3=request.getParameter("cnfpw");
String s5=request.getParameter("id1");
String s6=request.getParameter("id2");
String s7=request.getParameter("ca");
String s8=request.getParameter("pa");
String s9=request.getParameter("ma");
String s10=request.getParameter("db");
String s11=request.getParameter("ph");
String s12=request.getParameter("ed");
String s13=request.getParameter("r1");
//out.println(em);
String data ="";
try{
ResultSet rs=st.executeQuery("select * from login where email='"+em+"'");
int count=0;
while(rs.next())
{

count++;
}

if(count>0)
{
data="Email-ID already exists!";
}
else
{
data="You can register now";
}
//out.println(data);
   
   rs=st.executeQuery("select max(substr(uid,2)) from user");
   int cnt=0;
   if(rs.next()){
      cnt=rs.getInt(1);
   }
      cnt++;
	  String uid="";
      if(cnt<10)
	     uid="u000"+cnt;
	  else if(cnt<100)
	     uid="u00"+cnt;
	  else if(cnt<1000)
	      uid="u0"+cnt;
	  else
	      uid="u"+cnt;
		  
     String us="USER";
	 String sta="N";	 
		 
     String dt=new java.text.SimpleDateFormat("YYY-MM-dd").format(new java.util.Date());

		if(data.equalsIgnoreCase("You can register now")){
		      
			   st.executeUpdate("insert into user values('"+uid+"','"+s1+"','"+s10+"','"+s13+"','"+s9+"','"+s12+"','"+s11+"','"+em+"','"+s7+"','"+s8+"','"+s5+"','"+s6+"','"+dt+"')");
	          
			   st.executeUpdate("insert into login values('"+uid+"','"+s1+"','"+em+"','"+s2+"','"+s3+"','"+dt+"','"+us+"','"+sta+"')");
			   
			    session.removeAttribute("logname");
				session.removeAttribute("email");
				session.removeAttribute("pwd");
				session.removeAttribute("type");
				session.removeAttribute("id");
				session.setAttribute("logname",s1);
				session.setAttribute("email",em);
				session.setAttribute("pwd",s2);
				session.setAttribute("type",us);
				session.setAttribute("id",uid);

		}
			
		
		
  con.close();			
}catch (Exception e) {
out.println(e);
}
%>


           <jsp:forward page="userhouse.jsp"/>
		  
		   

