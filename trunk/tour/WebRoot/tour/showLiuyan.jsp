<%@ page contentType="text/html; charset=gb2312" %>
<%@ page language="java" import="mybean.data.*"%>
<jsp:useBean id="liuyan" type="mybean.data.LiuYan" scope="request" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<body>
<table width="760" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><jsp:include page="top.jsp"/></td>
  </tr>
  <tr>
    <td height="356"><form name="form1" method="post" action="handleliuyan">
  <table border="0" align="center" cellpadding="0" cellspacing="0" width="100%" height="100%">
    <tr align="center" background="images/bg6.jpg">
      <td width="156" rowspan="4"><jsp:include page="left_1.jsp"/></td>
      <td height="65" colspan="2"><font color="#336600" size="3">
        <jsp:getProperty property="backNews" name="liuyan"/>
      </font></td>
      </tr>
    <tr>
      <td width="200" height="31" align="right" valign="middle">用户名：</td>
      <td width="404"><jsp:getProperty property="board_name" name="liuyan"/></td>
    </tr>
    <tr>
      <td height="36" align="right" valign="middle"><font size="3">标题：</font></td>
      <td><jsp:getProperty name="liuyan" property="board_title"/></td>
    </tr>
    <tr>
      <td height="190" align="right" valign="middle"><font size="3">留言信息：</font></td>
      <td background="images/swirly_dance.jpg"><jsp:getProperty name="liuyan" property="board_context"/></td>
    </tr>
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

