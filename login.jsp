<%@ page import="java.sql.*" %>
<%! String un="",ty="",na=""; %>
<%
String s1=request.getParameter("t1");
String s2=request.getParameter("t2");
%>
<%
try{
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost/smartcity","root","");
  Statement st=con.createStatement();
  ResultSet rs=st.executeQuery("select * from login where email='"+s1+"' and pwd='"+s2+"'");
   if(rs.next()){
    un=rs.getString("id");
    ty=rs.getString("type");
	na=rs.getString("logname");
    
	session.removeAttribute("logname");
    session.removeAttribute("email");
    session.removeAttribute("pwd");
    session.removeAttribute("type");
	session.removeAttribute("id");
	session.setAttribute("logname",na);
    session.setAttribute("email",s1);
    session.setAttribute("pwd",s2);
    session.setAttribute("type",ty);
	session.setAttribute("id",un);
  } 
con.close();
}catch(Exception e){
  out.print(e);
}
%>
<%
      if(ty.equalsIgnoreCase("ADMIN")){   %>
          <jsp:forward page="adminhouse.jsp"/>
<%   }else if(ty.equalsIgnoreCase("HOSPITAL")){  %>
           <jsp:forward page="hospitalhouse.jsp"/>
<%   }else if(ty.equalsIgnoreCase("PATH LAB")) {  %>
           <jsp:forward page="pathlabhouse.jsp"/>
<%   }else if(ty.equalsIgnoreCase("BLOODBANK")) {  %>
           <jsp:forward page="bloodbankhouse.jsp"/>
<%   }else if(ty.equalsIgnoreCase("INSTITUTE")) {  %>
           <jsp:forward page="institutehouse.jsp"/>
<%   }else if(ty.equalsIgnoreCase("HOTEL")) {  %>
           <jsp:forward page="hotelhouse.jsp"/>
<%   }else if(ty.equalsIgnoreCase("RESTURENT")) {  %>
           <jsp:forward page="resturenthouse.jsp"/>
<%   }else if(ty.equalsIgnoreCase("USER")) {  %>
           <jsp:forward page="userhouse.jsp"/>
<%   }else if(ty.equalsIgnoreCase("VEHICLE")) {  %>
           <jsp:forward page="vehiclehouse.jsp"/>		   
		   
<%	 }else{  %>
           <jsp:forward page="signin.jsp">
		   <jsp:param name="a1" value="Invalid ID and Password"/>
		   </jsp:forward>
<%   }%>