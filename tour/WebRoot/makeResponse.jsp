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
  <tr>    <td height="12">
  
   
    
     <%
    	request.setCharacterEncoding("gb2312");
    	response.setCharacterEncoding("gb2312");
   		String board_title=request.getParameter("board_title");
   		
   		
   		out.println(board_title+"BUAA");
   		
    %>
    
  <table border="0" align="center" cellpadding="0" cellspacing="0" width="100%" height="100%">
   	 
   	  <form name="form1" method="post" action="handleresponse">
   	  <input type="hidden" name="board_title" value=<%=board_title %>>
   <textarea  cols=40 rows=8 name="response_context" ></textarea>
    <input type="submit" value=" ���Իظ�">
    </form>
   
  
  </td>
  </tr>
    </table>
</table>

</body>
</html>
