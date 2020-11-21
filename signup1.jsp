<%@ include file="dbcom.jsp"  %>
<%
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
try{
   String z=request.getParameter("a1");
   String s4=request.getParameter("em");
   ResultSet rs=st.executeQuery("select max(substr(uid,2)) from user");
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
	 String sta="NO";	 
		 
     String dt=new java.text.SimpleDateFormat("YYY-MM-dd").format(new java.util.Date());
	 
	 
	 if(z.equalsIgnoreCase("error")){
	   st.executeUpdate("insert into user values('"+uid+"','"+s1+"','"+s10+"','"+s13+"','"+s9+"','"+s12+"','"+s11+"','"+s4+"','"+s7+"','"+s8+"','"+s5+"','"+s6+"','"+dt+"')");
	 }
	    		  
   

}catch(Exception e){  out.print(e);   }


%>