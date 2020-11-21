<%@ include file="dbcom.jsp" %>
<%
   String na=request.getParameter("tt1");
   String em=request.getParameter("tt2");
   String ph=request.getParameter("tt3");
%>
<%
   try{
      
	  st.executeUpdate("insert into touch values('"+na+"','"+em+"','"+ph+"')");
   }catch(Exception e){      }


%>