<%@ page contentType="text/html; charset=GB2312" %>
<%@ page language="java" contentType="text/html; charset=GB2312" %>
<%@ page import="java.sql.*"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>����������</title>
</head>
<table width="760" border="0" cellspacing="0" align="center">
  <tr>
    <td colspan="2"><jsp:include page="top.jsp"/></td>
  </tr>
  <tr>
    <td width="221"><jsp:include page="left_1.jsp" /> </td>
    <td width="527" align="center" valign="middle" background="images/bg6.jpg"><table border="0" cellspacing="0">
<tr align="center" background="images/dbj.jpg">
  <td height="26" colspan="2"><font color="#00361c">������½</font></td>
</tr>
<form action="handlelogin" method="post">
<tr>
  <td width="132" height="33"><font color="#00361c"><font color="#00361C">�����������û�����</font></td>
  <td width="240"><input type="text" name="user_name" ></td></tr>
<tr>
  <td height="34"><font color="#00361C"><font color="#00361c">�������������룺</font></td>
  <td><input type="password" name="user_key" ></td></tr>
<tr align="center">
  <td height="35" colspan="2">
    <input type="submit" value="�� ½" name="g">����
    <a href="regedit.jsp">ע��</a></td>
</tr>
</form></table>    </td>
  </tr>
</table>
<table width="760" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="760" height="27" align="center" bgcolor="#71AD23"><span class="style9"><font color="#FFFFFF">�����ˣ��л�Ů��ѧԺ05�������ϵ ��ٻٻ</font></span></td>
  </tr>
</table>
