<%@ page contentType="text/html; charset=GB2312" %>
<%@ page language="java" contentType="text/html; charset=GB2312" %>
<%@ page import="java.sql.*"%><head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>星星旅行社</title>
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	font-family: "宋体";
	font-weight: bold;
}
-->
</style>
</head>
<table width="760" height="553" border="0" align="center" cellpadding="0" cellspacing="0">
<tr><td colspan="2" align="center" valign="middle" bgcolor="#6666FF">
<form action="handlemanagerlogin" method="post"><table width="484" height="231" border="0" cellpadding="0" cellspacing="0" bgcolor="#9B9BFF">
  <tr align="center">
    <td colspan="2"><span class="style1">星星旅行社后台管理网站</span></td>
	</tr>
    <tr>
    <td width="222" height="31" align="right">管理员：</td>
	<td width="262"><input name="manager_name" type="text" size="15" maxlength="15"></td>
  </tr>
    <tr>
    <td height="31" align="right">密　码：</td>
	<td><input name="manager_key" type="password" size="15" maxlength="15"></td>
  </tr>
    <tr>
    <td height="45" align="right"><input type="submit" name="Submit" value="登录"></td>
	<td valign="middle"> 　　　
	  <input type="reset" name="Submit" value="重置"></td>
  </tr>
</table></form></td>
</tr>
</table>
