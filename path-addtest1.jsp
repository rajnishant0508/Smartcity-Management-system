<%@ include file="dbcom.jsp" %>
<%
 String select=request.getParameter("select");
%>
<%
try{
  if(select.equalsIgnoreCase("Urine")){
     %><jsp:forward page="path-urine.jsp"  />
	 <%
  }else if(select.equalsIgnoreCase("Blood")){
     %><jsp:forward page="path-blood.jsp"  />
	  
	 <%
  }else{
     %><jsp:forward page="path-tumor.jsp"  />
      	 
	 <%
  }
con.close();
}catch(Exception e){ out.print(e); }
%>