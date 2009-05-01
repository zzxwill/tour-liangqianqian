<%@ page contentType="text/html; charset=GB2312" %>
<%@ page language="java" contentType="text/html; charset=GB2312"%>
<%@ page import="mybean.data.*" %>
<jsp:useBean id="line" scope="session" type="mybean.data.Line">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>线路信息</title>
<style type="text/css">
<!--
.style2 {color: #008000}
.style3 {font-size: 12px}
.style5 {font-size: 12px; color: #CC6600; }
-->
</style>
</head>

<body>
<table width="760" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td colspan="4"><jsp:include page="top.jsp"/></td>
  </tr>
  <tr>
    <td width="136" height="23" align="center"><span class="style2">旅游线路名称:</span></td>
    <td width="388" class="style5">a href="handleshowline?tour_line_name=<%=rs.getString(1)%>">&nbsp;</a></td>
    <td width="120" align="center"><span class="style2">是否为热点线路:</span></td>
    <td width="116" class="style5"><jsp:getProperty name="line" property="hot_tour_line"/></td>
  </tr>
  <tr>
    <td height="252" colspan="4" align="right" background="images/bz1.jpg"><table width="530" height="250" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td class="style2"><jsp:getProperty name="line" property="tour_line_intro"/>
		   </td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="760" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="760" height="27" align="center" bgcolor="#71AD23"><font color="#FFFFFF">制作人：中华女子学院05级计算机系 梁倩倩 </font></td>
  </tr>
</table>
</body>
</html>

