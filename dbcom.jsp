<%@ page import="java.sql.*"  %>
<%! Statement st;
    Connection con;
%>
<%
try{
   Class.forName("com.mysql.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost/smartcity","root","");
   st= con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
}catch(Exception e){
      out.print("DBERROR " + e);
}
%>