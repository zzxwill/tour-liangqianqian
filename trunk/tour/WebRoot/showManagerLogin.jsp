<%@ page contentType="text/html; charset=GB2312"%>
<%@ page language="java" contentType="text/html; charset=GB2312"%>
<%@ page language="java" import="mybean.data.*"%>
<jsp:useBean id="login" type="mybean.data.ManagerLogin" scope="session" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>星星旅行社后台管理</title>
<style type="text/css">
<!--
.style2 {
	font-size: 16px;
	color: #0033FF;
}
.style3 {color: #000000}
-->
</style>
</head>
<body >
<table width="760" height="371" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr align="center" bgcolor="#ADCFEF">
    <td height="200" colspan="2"><span class="style2">星星旅行社后台管理系统</span></td>
  </tr>
  <tr>
    <td width="160"><table width="160" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="160" height="30" valign="top">
	<table width="160" border="0" cellpadding="0" cellspacing="0">
	  <tr><td height="30" align="center" bgcolor="#5296DE">当前管理员：</td>
	  </tr><tr><td height="30" bgcolor="#ADCFEF" width="160" align="center">
            [<jsp:getProperty name="login" property="manager_name"/>]  <a href="handleexit">退出</a></td>
	  </tr></table>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="160" height="30" bgcolor="#5296DE"><div align="center">旅游线路管理</div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="25" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="160" height="25" bgcolor="#ADCFEF"><div align="center"><a href="lineUpdate.jsp">线路信息更改</a></div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="25" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="160" height="25" bgcolor="#ADCFEF"><div align="center"><a href="addLine.jsp">增加旅游线路</a></div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="30" valign="top" width="160"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="160" height="30" bgcolor="#5296DE"><div align="center">公告栏管理</div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="25" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="160" height="25" bgcolor="#ADCFEF"><div align="center"><a href="addBulletin.jsp">增加公告</a></div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="25" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="160" height="25" bgcolor="#ADCFEF"><div align="center"><a href="bulletinUpdate.jsp">公告信息更改</a></div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="25" valign="top" width="160"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="160" height="25" bgcolor="#5296DE"><div align="center">留言板管理</div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="25" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="160" height="25" bgcolor="#ADCFEF"><div align="center"><a href="response.jsp">回复用户留言</a></div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="265" bgcolor="#ADCFEF">&nbsp;</td>
  </tr>
</table></td>
    <td width="600">&nbsp;</td>
  </tr>
</table>
<table width="760" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="760" height="27" align="center" bgcolor="#5296DE"><span class="style9 style3">制作人：中华女子学院05级计算机系 梁倩倩</span></td>
  </tr>
</table>
</body>
</html>
