<%@ page contentType="text/html;   charset=gb2312"   language="java" %>  
<%@ page pageEncoding="GB2312"%>
<% request.setCharacterEncoding("GB2312"); %> 
<%@page import="java.sql.*;"  %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<body>
<table width="760" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><jsp:include page="top.jsp"/></td>
  </tr>
  <tr>
    <td height="356">
    <form name="form1" method="post" action="handleupdatebulletin">
  <table border="0" align="center" cellpadding="0" cellspacing="0" width="100%" height="100%">
   
   <%
   		Connection con;   
        try{
        	
            con=DriverManager.getConnection("jdbc:odbc:tour");
            Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
            		ResultSet.CONCUR_UPDATABLE);
//            if(boo=true){

 //           String insertCondition ="INSERT INTO board_info(board_title,board_context,board_name,board_time) VALUES(?,?,?,?)";
            String insertCondition ="select * from bulletin_info";

//            ResultSet rs = st.executeQuery("select * from StuScore");

            
//            sql = con.prepareStatement(insertCondition);
            
            ResultSet rs = st.executeQuery(insertCondition);
            while (rs.next()){
  //          	out.println(rs.getObject("bulletin_title"));
           	String bulletin_title=String.valueOf(rs.getObject("bulletin_title"));
           	String bulletin_context=String.valueOf(rs.getObject("bulletin_context"));
           	String bulletin_time=String.valueOf(rs.getObject("bulletin_time"));
            	out.println(rs.getObject("bulletin_title"));
    //        	out.println(rs.getObject("bulletin_context"));
           	out.println(rs.getObject("bulletin_time"));
 //           	out.println("<a href=\"/labmanagement/jsp/groupAdmin.jsp\">返回</a>");
 		%>
 
            	<a href="updatebulletin?bulletin_title=<%=bulletin_title %>& bulletin_context=<%= bulletin_context%>">修改旅游线路</a><br>
	<%
		}
            con.close();
       }
       catch(Exception e){
    	   out.println("Error!");
       } 
       
     %>
  </table>
</form>
</td>
  </tr>
</table>
<table width="760" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="760" height="27" align="center" bgcolor="#71AD23"><span class="style9"><font color="#FFFFFF">制作人：中华女子学院05级计算机系 梁倩倩</font></span></td>
  </tr>
</table>
</body>
</html>
