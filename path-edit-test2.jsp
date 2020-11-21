<%
String ttype=request.getParameter("select");
String tid=request.getParameter("tid"); 
%>
<input type="hidden" name="tid" value="<%=tid%>"  />
<%
try{
  if(ttype.equalsIgnoreCase("URINE")){
    %><jsp:forward page="path-edit-urine.jsp" /><%
  }else if(ttype.equalsIgnoreCase("BLOOD")){
    %><jsp:forward page="path-edit-blood.jsp" /><%
  }else{
    %><jsp:forward page="path-edit-tumor.jsp" /><%
  }
  
}catch(Exception e){   out.print(e);   }
%>