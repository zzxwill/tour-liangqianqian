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
        <td width="404" height="31" align="center"><font color="#FF6600">可预订线路名称</font></td>
        <td width="149"><font color="#FF6600">预订</font></td>
      </tr>
      <tr>
        <td height="29"><font color="#006600"> 　　　　巴黎双飞国际游</font></td>
        <td align="center">          <input type="radio" name="tour_line_name" value="巴黎双飞国际游"></td>
      </tr>
      <tr>
        <td height="31"><font color="#006600"> 　　　　杭州双卧三日游</font></td>
        <td align="center"><input type="radio" name="tour_line_name" value="杭州双卧三日游"></td>
      </tr>
      <tr>
        <td height="27"><font color="#006600">　　　　黄山双飞五日游</font></td>
        <td align="center"><input type="radio" name="tour_line_name" value="黄山双飞五日游"></td>
      </tr>
      <tr>
        <td height="35"><font color="#006600">　　　　云南雪山双飞七日游</font></td>
        <td align="center"><input type="radio" name="tour_line_name" value="云南雪山双飞七日游"></td>
      </tr> 
	   <tr>
    <td width="404" height="30" align="center"><a href="showBookLine.jsp?action=<%=request.getSession().getAttribute("name")%>">已预订线路查看与修改</a></td>
    <td><input type="text" name="user_name" value=<%=request.getSession().getAttribute("name")%> > 	</td>
    <td width="149" align="center"><input type="submit" name="Submit" value="我要预订"></td>
  </tr>
    </table> </form></table>
	<table width="760" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="760" height="27" align="center" bgcolor="#71AD23"><span class="style9"><font color="#FFFFFF">制作人：中华女子学院05级计算机系 梁倩倩</font></span></td>
  </tr>
</table>
</body>
</html>
