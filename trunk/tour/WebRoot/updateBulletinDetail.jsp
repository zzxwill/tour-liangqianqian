<%@ page contentType="text/html; charset=gb2312" %>
<%@ page language="java" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<body>
<%
//	String tour_line_name=request.getParameter("name");
//		String tour_line_intro=request.getParameter("intro");
	String   bulletin_title=(String)request.getAttribute("bulletin_title");
	String bulletin_context=(String)request.getAttribute("bulletin_context");
	String bulletin_time=(String)request.getAttribute("bulletin_time");
	
	
 %>

<table width="760" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><jsp:include page="top.jsp"/></td>
  </tr>
  <tr>
    <td height="356">
     <%=bulletin_title %>
 <%=bulletin_context %>
 <%=bulletin_time %>
    <form action="handleupdatebulletin" method="post"> 
     ������⣺  <input name="bulletin_title" type="text" value=<%=bulletin_title %> size="25" readonly ><br />
     �������ݣ�<input name="bulletin_context" type="text" value=<%=bulletin_context%> size="20" ><br />
	<input type="submit" value="ȷ�ϸ���" /><br />
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

