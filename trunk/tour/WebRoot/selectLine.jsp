<%@ page contentType="text/html; charset=GB2312" %>
<%@ page import="mybean.data.*"  %>
<jsp:useBean id="line" scope="request" type="mybean.data.Line"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>

<body>
<table width="760" border="0" cellpadding="0" cellspacing="0" align="center">
  <tr>
    <td colspan="2"><jsp:include page="top.jsp"/></td>
  </tr>
  <tr>
    <td width="221"><jsp:include page="left_1.jsp"/></td>
    <td><jsp:getProperty property="backNews" name="line"/></td>
  </tr>
  <tr>
    <td height="27" colspan="2"  align="center" bgcolor="#71AD23"><font color="#FFFFFF">制作人：中华女子学院05级计算机系 梁倩倩 </font></td>
  </tr>
</table>
</body>
</html>
