<%@ page contentType="text/html; charset=gb2312" %>
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
      <td width="160" rowspan="5"><font size="3"><jsp:include page="left_1.jsp"/></font></td>
      <td height="65" colspan="2"><font color="#336600" size="6">���԰壺</font></td>
      </tr>
    <tr>
      <td width="115" height="31" align="right" valign="middle">�û�����</td>
      <td width="485"><input type="text" name="board_name" size=40></td>
    </tr>
    <tr>
      <td height="36" align="right" valign="middle"><font size="3">���⣺</font></td>
      <td><input name="board_title" type="text" size=40></td>
    </tr>
    <tr>
      <td height="190" align="right" valign="middle"><font size="3">�����ԣ�</font></td>
      <td background="images/swirly_dance.jpg"><textarea name="board_context" rows=10 cols=40></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input name="submit" type="submit" value="�� ��">����������
      <font size=2>
      <input name="reset" type="reset" value="�� ��">
           <font size=3 color="#00361c">      ����������<a href="handleshowbypage?showPage=1">�鿴����</a></font></font></td>
      </tr>
  </table>
</form>
</td>
  </tr>
</table>
<table width="760" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="760" height="27" align="center" bgcolor="#71AD23"><span class="style9"><font color="#FFFFFF">�����ˣ��л�Ů��ѧԺ05�������ϵ ��ٻٻ</font></span></td>
  </tr>
</table>
</body>
</html>
