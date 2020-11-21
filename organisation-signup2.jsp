<%@ include file="dbcom.jsp" %>
<%
String s0=request.getParameter("t0");
String s1=request.getParameter("t1");
String s2=request.getParameter("t2");
%>
<%
try{
  ResultSet rs=st.executeQuery("select * from organisation where name='"+s1+"' and pincode='"+s2+"' and type='"+s0+"'");
  if(rs.next()){  %>             
    <jsp:forward page="organisation-signup1.jsp">
	<jsp:param name="a1" value="error"/>
	</jsp:forward>
     
  
 <%}else{%>
     <jsp:forward page="organisation-signup3.jsp">
	 <jsp:param name="a1" value="<%=s0%>"/>
	 <jsp:param name="a2" value="<%=s1%>"/>
	 <jsp:param name="a3" value="<%=s2%>"/>
	 </jsp:forward>
  
  
 <%}%>
 <%
   con.close();
}catch(Exception e){     }
%>
