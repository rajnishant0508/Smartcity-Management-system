<%@ page import="java.sql.*" %> 
<%
String name = request.getParameter("email");
//out.println(name);
String data ="";

try{
	 Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost/smartcity","root","");
	 //out.print("hi");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from login where email='"+name+"'");
	int count=0;
	while(rs.next())
	{
	
	count++;
	}
		if(count>0)
		{
		data="Email-ID already exists!";
		}
		else
		{
		data="You can register now!!!!";
		}
        out.println(data);
}catch (Exception e) {
out.println(e);
}
%>