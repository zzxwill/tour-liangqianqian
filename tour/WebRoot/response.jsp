<%@ page contentType="text/html; charset=gb2312" %>
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
  <table border="0" align="center" cellpadding="0" cellspacing="0" width="100%" height="100%">
   
   <%
   		Connection con;   
        try{
        	
            con=DriverManager.getConnection("jdbc:odbc:tour");
            Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
            		ResultSet.CONCUR_UPDATABLE);
//            if(boo=true){

 //           String insertCondition ="INSERT INTO board_info(board_title,board_context,board_name,board_time) VALUES(?,?,?,?)";
            String insertCondition ="select * from board_info";

//            ResultSet rs = st.executeQuery("select * from StuScore");

            
//            sql = con.prepareStatement(insertCondition);
            
            ResultSet rs = st.executeQuery(insertCondition);
            %>
         
            
            <tr>
            <td>���Ա���</td><td>��������</td><td>����</td></tr>
           
            <%
            
            while (rs.next()){
            %>
         
             <%
            out.println("<tr><td>"+rs.getObject("board_title")+"</td>");
            out.println("<td>"+rs.getObject("board_context")+"</td><td>");
            //             <textarea  cols=20 name="response_context" ></textarea>
            
            %>
 			  
            <a href="makeResponse.jsp?board_title=<%=rs.getObject("board_title") %>">����ظ�</a><br>
            
       
            
            <% 
 //           out.println(rs.getObject("tour_line_intro")+"</td></tr>");
            		
			}
            con.close();
            
       }
       catch(Exception e){
    	  
       } 
       
     %>
  </table>
</td>
  </tr>
</table>
<table width="760" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="760" height="27" align="center" bgcolor="#71AD23"><span class="style9"><font color="#FFFFFF">�����ˣ��л�Ů��ѧԺ05�������ϵ ��ٻٻ</font></span></td>
  </tr>
</table>
</body>
</html>
