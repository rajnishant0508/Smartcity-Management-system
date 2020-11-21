<%@ include file="dbcom.jsp" %>
<%
String name=request.getParameter("name");

%>
<%
try{
   ResultSet rs=st.executeQuery("select * from login where logname='"+name+"'");
   if(rs.next()){
%>
     <jsp:forward page="institute-signup.jsp">
	   <jsp:param name="a1" value="error"/>
	 </jsp:forward>
     
<% }else{  %>
     <jsp:forward page="institute-signup2.jsp">
	    <jsp:param name="a1" value="<%=name%>"/>
	 </jsp:forward>
   
<%  }
   con.close();
}catch(Exception e){  }
%>


