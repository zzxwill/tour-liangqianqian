<%@ page contentType="text/html; charset=GB2312" %>
<%@ page language="java" contentType="text/html; charset=GB2312" %>
<%@ page import="mybean.data.*" %>
<jsp:useBean id="register" scope="request" type="mybean.data.Register"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>�û�ע��</title>
</head>
<body>
<table width="750" border="0" cellspacing="0" align="center">
  <tr>
    <td colspan="2"><jsp:include page="top.jsp" /></td>
  </tr>
  <tr>
    <td width="221"><jsp:include page="left_1.jsp" /> </td>
    <td width="527" background="images/1.jpg"><table width="100%" height="155" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="41" align="center"><font color="#FF3366">
          <jsp:getProperty property="backNews" name="register"/>
        </font></td>
      </tr>
      <tr>
          <td height="41" align="center"><font color="#FF3366">
          ע����û���:<jsp:getProperty property="user_name" name="register"/>
        </font></td>
      </tr>
      <tr>
        <td height="41" align="center"><font color="#FF3366">
          �����ʼ�:<jsp:getProperty property="email" name="register"/>
        </font></td>
      </tr>
	  <tr>
	    <td height="32" align="center"><font color="#FF3366"><a href="login.jsp">�����¼</a>����<a href="register.jsp">����</a></font></td>
	  </tr>
    </table></td>
  </tr>
</table>
<table width="756" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="756" height="27" align="center" bgcolor="#71AD23"><font color="#FFFFFF">�����ˣ��л�Ů��ѧԺ05�������ϵ ��ٻٻ </font></td>
  </tr>
</table>
</body>
</html>

