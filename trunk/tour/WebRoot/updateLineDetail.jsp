<%@ page contentType="text/html; charset=gb2312" %>
<%@ page language="java" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<body>
<%
//	String tour_line_name=request.getParameter("name");
//		String tour_line_intro=request.getParameter("intro");
//		String hot_tour_line=req.getParameter("hot");
	String   name=(String)request.getAttribute("name");
	String intro=(String)request.getAttribute("intro");
	String hot=(String)request.getAttribute("hot");

	
 %>
<table width="760" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><jsp:include page="top.jsp"/></td>
  </tr>
  <tr>
    <td height="356">
    <form action="handleupdateline" method="post"> 
     ·�����ƣ�  <input name="name" type="text" value=<%=name %> size="25" ><br />
     ·�߽��ܣ�<input name="intro" type="text" value=<%=intro%> size="20" ><br />
  �Ƿ��: <input name="hot" type="text" value=<%=hot %> size="25"  ><br />
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

