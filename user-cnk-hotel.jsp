<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ include file="dbcom.jsp" %>
<%

   String CheckIn=request.getParameter("CheckIn");
   String CheckOut=request.getParameter("CheckOut");
   String Adult=request.getParameter("Adults");
   String type=request.getParameter("type");
   //out.print(Adult);
   int Adults = Integer.parseInt(Adult);
   String Kids=request.getParameter("Kids");
   int rooms_required=0;
   
  
%>

<%
  try{
  
  SimpleDateFormat dates = new SimpleDateFormat("yyyy-MM-dd");
  
  
  Date date1 = dates.parse(CheckIn);
  Date date2 = dates.parse(CheckOut);
  
  
   long difference = Math.abs(date1.getTime() - date2.getTime());
   long differenceDates = difference / (24 * 60 * 60 * 1000);
		
		
		
   String dayDifference = Long.toString(differenceDates);
   
   //out.print(dayDifference);
   
   
   
   
   if(Adults==1){
      rooms_required=1;
	  
   }else if(Adults==2){
      rooms_required=1;
	  
   }else if(Adults==3){
      rooms_required=2;
	  
   }else if(Adults==4){
      
	  rooms_required=2;   
   }else if(Adults==5){
      
	  rooms_required=3;
   }else{
      
	  rooms_required=3;
   }
   
   //out.print(rooms_required);
   
    String str1 = Integer.toString(rooms_required);
   		
%>

  <jsp:forward page="user-hotel1.jsp">
    <jsp:param name="strr" value="<%=str1%>"/>
	<jsp:param name="daay" value="<%=dayDifference%>"/>
	<jsp:param name="ckin" value="<%=CheckIn%>"/>
	<jsp:param name="ckout" value="<%=CheckOut%>"/>
	<jsp:param name="typ" value="<%=type%>"/>
	<jsp:param name="adult" value="<%=Adult%>"/>
  </jsp:forward>
  
<%		
  con.close();
  }catch(Exception e){   out.print(e);   }

%>