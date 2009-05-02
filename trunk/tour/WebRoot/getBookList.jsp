<%@ page contentType="text/html; charset=GB2312" %>
<html>
<body>
<table width="760" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td colspan="3"><jsp:include page="top.jsp"/></td>
  </tr>
  <tr>
    <td width="207"><jsp:include page="left_1.jsp"/></td>
    <td height="116" colspan="2" >
    </table>
    
    <%
    	String lineID=(String.valueOf(request.getParameter("book"))); 
    	out.println(lineID);
    	out.println("11111111111");
    	
    	
     %>
    
	<table width="760" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="760" height="27" align="center" bgcolor="#71AD23"><span class="style9"><font color="#FFFFFF">制作人：中华女子学院05级计算机系 梁倩倩</font></span></td>
  </tr>
</table>
</body>
</html>
