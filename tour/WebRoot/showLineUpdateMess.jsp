<%@ page contentType="text/html; charset=GB2312" %>
<%@ page language="java" contentType="text/html; charset=GB2312" %>
<%@ page import="mybean.data.*" %>
<jsp:useBean id="line" scope="request" type="mybean.data.Line"/>
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
        </font></td>
      </tr>
      <tr>
          <td height="41" align="center"><font color="#FF3366">
         ·�����ƣ�<jsp:getProperty property="tour_line_name" name="line"/>
        </font></td>
      </tr>
     
  
      <tr>
        <td height="41" align="center"><font color="#FF3366">
         ·�߽���:<jsp:getProperty property="tour_line_intro" name="line"/>
        </font></td>
      </tr>
       <tr>
        <td height="41" align="center"><font color="#FF3366">
          �Ƿ��:<jsp:getProperty property="hot_tour_line" name="line"/>
        </font></td>
      </tr>
	  <tr>
	    <td height="32" align="center"><font color="#FF3366">����<a href="lineUpdate.jsp">����</a></font></td>
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

