<%@ page contentType="text/html; charset=GB2312" %>
<%@ page language="java" contentType="text/html; charset=GB2312" %>
<%@ page import="java.sql.*"%>
<!--
.style1 {color: #71AD23}
.style2 {color: #71AD23; font-size: 14px; }
.style3 {color: #FF6666}
a:link {
	color: #FF6699;
}
.style4 {color: #71AD23; font-size: 12px; }
.style6 {color: #FF6666; font-size: 12px; }
.style7 {font-size: 12px}
.style8 {color: #FFFFFF}
.style9 {font-size: 12px; color: #FFFFFF; }
-->
<html>
<body>
<% Connection con;
   Statement sql;
   ResultSet rs;
  try {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");}
  catch(ClassNotFoundException e)
   {
     out.print(e);
   }
   try
   {
   con=DriverManager.getConnection("jdbc:odbc:tour","","");
   sql=con.createStatement();
   String condition="select tour_line_name from tour_line_info where hot_tour_line='"+"yes"+"'";
   rs=sql.executeQuery(condition);
   out.print("<table border=0>");
   while(rs.next())
   {
        out.print("<tr>");
	out.print("<td class=style6>"+rs.getString(1)+"</td>");
        out.print("</tr>");
   }
   out.print("</table>");
   con.close();
   }
   catch(SQLException e)
   {
     out.print(e);
   }
%>
</body>
</html>

