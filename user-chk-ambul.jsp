<%@ include file="dbcom.jsp" %>
<%
            String vid=request.getParameter("vid");
			String vno=request.getParameter("vno");
			String model=request.getParameter("model");
			String type=request.getParameter("type");
			String avail=request.getParameter("avail");
%>
<%
try{
 ResultSet rs=st.executeQuery("Select * from vehicle where vid='"+vid+"' and availability='N'");
  if(rs.next()){
  %>
     <jsp:forward page="user-ambulance1.jsp">
		<jsp:param name="a1" value="error"/>
	 </jsp:forward>
  <%
  }else{
    %>
	 
						   <jsp:forward page="user-ambul-book1.jsp">
		                      <jsp:param name="vvid"  value ="<%=vid %>"/>
							  <jsp:param name="vvno"  value ="<%=vno %>"/>
							  <jsp:param name="vmodel"  value ="<%=model %>"/>
							  <jsp:param name="vtype"  value ="<%=type %>"/>
							  <jsp:param name="vavail"  value ="<%=avail %>"/>
                           </jsp:forward>
  <%
  } 
}catch(Exception e){ out.print(e); }
%>