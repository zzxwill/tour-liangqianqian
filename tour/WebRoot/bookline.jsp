<%@ page contentType="text/html; charset=GB2312" %>
<html>
<body>
<%
//	String user=request.getParameter("");
 %>
<table width="760" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td colspan="3"><jsp:include page="top.jsp"/></td>
  </tr>
  <tr>
    <td width="207"><jsp:include page="left_1.jsp"/></td>
    <td height="116" colspan="2" >
    <form action="handlebookline" method="post">
    <table width="553" height="183" border="0" cellpadding="0" cellspacing="0" background="images/bg6.jpg">
      <tr align="center">
        <td width="404" height="31" align="center"><font color="#FF6600">��Ԥ����·����</font></td>
        <td width="149"><font color="#FF6600">Ԥ��</font></td>
      </tr>
      <tr>
        <td height="29"><font color="#006600"> ������������˫�ɹ�����</font></td>
        <td align="center">          <input type="radio" name="tour_line_name" value="����˫�ɹ�����"></td>
      </tr>
      <tr>
        <td height="31"><font color="#006600"> ������������˫��������</font></td>
        <td align="center"><input type="radio" name="tour_line_name" value="����˫��������"></td>
      </tr>
      <tr>
        <td height="27"><font color="#006600">����������ɽ˫��������</font></td>
        <td align="center"><input type="radio" name="tour_line_name" value="��ɽ˫��������"></td>
      </tr>
      <tr>
        <td height="35"><font color="#006600">������������ѩɽ˫��������</font></td>
        <td align="center"><input type="radio" name="tour_line_name" value="����ѩɽ˫��������"></td>
      </tr> 
	   <tr>
    <td width="404" height="30" align="center"><a href="showBookLine.jsp?action=<%=request.getSession().getAttribute("name")%>">��Ԥ����·�鿴���޸�</a></td>
    <td><input type="text" name="user_name" value=<%=request.getSession().getAttribute("name")%> > 	</td>
    <td width="149" align="center"><input type="submit" name="Submit" value="��ҪԤ��"></td>
  </tr>
    </table> </form></table>
	<table width="760" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="760" height="27" align="center" bgcolor="#71AD23"><span class="style9"><font color="#FFFFFF">�����ˣ��л�Ů��ѧԺ05�������ϵ ��ٻٻ</font></span></td>
  </tr>
</table>
</body>
</html>
