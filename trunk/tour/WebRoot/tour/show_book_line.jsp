<%@ page contentType="text/html; charset=GB2312" %>
<%@ page language="java" contentType="text/html; charset=GB2312" %>
<%@ page import="java.sql.*"%>

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
   String condition="select * from tour_line_book where user_name like ";
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
