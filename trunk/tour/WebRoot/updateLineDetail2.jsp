<%@ page contentType="text/html;   charset=gb2312"   language="java" %>  
<%@ page pageEncoding="GB2312"%>
<% request.setCharacterEncoding("GB2312"); %>   
<%@ page language="java" %>
<html>
<head></head>
<body>
<%
//	String tour_line_name=request.getParameter("name");
//		String tour_line_intro=request.getParameter("intro");
//		String hot_tour_line=req.getParameter("hot");
	response.setCharacterEncoding("gb2312");
	String   name=(String)request.getAttribute("name");
	String intro=(String)request.getAttribute("intro");
//	String hot=(String)request.getAttribute("hot");

	
 %>
 


<table width="760" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><jsp:include page="top.jsp"/></td>
  </tr>
  <tr>
    <td height="356">
    <form action="handleupdateline2" method="post"> 
     ���⣺ <%=name %> <input name="name" type="hidden" value=<%=name %> size="25" readonly><br />
     ���ݣ�<%=intro%><br />
 �ظ�: <input name="hot" type="text"  size="25"  ><br />
	<input type="submit" value="ȷ�ϸ���" /><br />
	</form>
</td>
  </tr>
</table>
<table width="760" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="760" height="27" align="center" bgcolor="#71AD23"><font color="#FFFFFF">�����ˣ��л�Ů��ѧԺ05�������ϵ ��ٻٻ</font></span></td>
  </tr>
</table>
</body>
</html>

