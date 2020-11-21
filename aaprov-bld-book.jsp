<%@ include file="dbcom.jsp" %>
<%! String grp,rhfac,bldid=""; %>
<%
  String did=request.getParameter("a1");
  String oid=(String)session.getAttribute("id");
  String grp=request.getParameter("grp");
  String rhfac=request.getParameter("rhfact");
  int unit=1;
%>
<%
try{
  st.executeUpdate("update blddonation set oid='"+oid+"' where did='"+did+"'");
  ResultSet rs=st.executeQuery("Select * from blood where oid='"+oid+"' and grp='"+grp+"' and rhfac='"+rhfac+"'");
  if(rs.next()){
     bldid=rs.getString(1);
	 unit=rs.getInt(5);
	 unit++;
	 
   st.executeUpdate("update blood set unit="+unit+" where bldid='"+bldid+"'");
  }else{
  
	 unit=1;
	//out.print("else : " +unit);
	rs=st.executeQuery("select max(substr(bldid,2)) from blood");
	int cnt=0;
	String bloodid="";
			try{
				if(rs.next())
					cnt=rs.getInt(1);	
			}catch(Exception eee){}
			cnt++;
	out.print(cnt);
	if(cnt>0 && cnt<10)
		bloodid="B000"+cnt;
	else if(cnt>9 && cnt<100)
		bloodid="B00"+cnt;
	else if(cnt>99 && cnt<1000)
		bloodid="B0"+cnt;
	else 
		bloodid="B"+cnt;
	
	st.executeUpdate("insert into blood values('"+bloodid+"', '"+oid+"', '"+grp+"', '"+rhfac+"',1)");
		
  }
	st.executeUpdate("update blddonation set status='Accepted' where did='"+did+"'");
 
  
	
 con.close();
}catch(Exception e){  out.print(e);   }
%>


