<%@ page contentType="text/html; charset=GB2312"%>
<%@ page language="java" contentType="text/html; charset=GB2312"%>
<%@ page language="java" import="mybean.data.*"%>
<jsp:useBean id="login" type="mybean.data.ManagerLogin" scope="session" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�����������̨����</title>
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
    <td height="200" colspan="2"><span class="style2">�����������̨����ϵͳ</span></td>
  </tr>
  <tr>
    <td width="160"><table width="160" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="160" height="30" valign="top">
	<table width="160" border="0" cellpadding="0" cellspacing="0">
	  <tr><td height="30" align="center" bgcolor="#5296DE">��ǰ����Ա��</td>
	  </tr><tr><td height="30" bgcolor="#ADCFEF" width="160" align="center">
            [<jsp:getProperty name="login" property="manager_name"/>]  <a href="handleexit">�˳�</a></td>
	  </tr></table>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="160" height="30" bgcolor="#5296DE"><div align="center">������·����</div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="25" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="160" height="25" bgcolor="#ADCFEF"><div align="center"><a href="lineUpdate.jsp">��·��Ϣ����</a></div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="25" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="160" height="25" bgcolor="#ADCFEF"><div align="center"><a href="addLine.jsp">����������·</a></div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="30" valign="top" width="160"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="160" height="30" bgcolor="#5296DE"><div align="center">����������</div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="25" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="160" height="25" bgcolor="#ADCFEF"><div align="center"><a href="addBulletin.jsp">���ӹ���</a></div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="25" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="160" height="25" bgcolor="#ADCFEF"><div align="center"><a href="bulletinUpdate.jsp">������Ϣ����</a></div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="25" valign="top" width="160"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="160" height="25" bgcolor="#5296DE"><div align="center">���԰����</div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="25" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="160" height="25" bgcolor="#ADCFEF"><div align="center"><a href="response.jsp">�ظ��û�����</a></div></td>
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
    <td width="760" height="27" align="center" bgcolor="#5296DE"><span class="style9 style3">�����ˣ��л�Ů��ѧԺ05�������ϵ ��ٻٻ</span></td>
  </tr>
</table>
</body>
</html>
