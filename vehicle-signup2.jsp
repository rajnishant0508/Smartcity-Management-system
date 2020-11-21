<%@ include file="dbcom.jsp" %>
<%
String type=request.getParameter("type");
String regdno=request.getParameter("regdno");
%>
<%
try{
 ResultSet rs=st.executeQuery("Select * from vehicle where vno='"+regdno+"'");
  if(rs.next()){
  %><jsp:forward page="vehicle-signup1.jsp">
    <jsp:param name="a1" value="error" />
	</jsp:forward>
  <%
  }else{
    %>
	<jsp:forward page="vehicle-signup3.jsp" >
	<jsp:param name="type" value="<%=type%>" />
	<jsp:param name="regdno" value="<%=regdno%>" />
	</jsp:forward>
  <%
  } 
}catch(Exception e){ out.print(e); }
%>