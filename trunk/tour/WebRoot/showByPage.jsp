<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="mybean.data.*" %>

<jsp:useBean id="show" class="mybean.data.ShowRecordByPage" scope="session" />
<html>
<head>
<CENTER><jsp:include page="top.jsp"/></center>
</head>
<body><CENTER>
<font color="#00361c">
<table width="760" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="2"><jsp:include page="top.jsp"/></td>
    </tr>
  <tr>
    <td width="122"><jsp:include page="left_1.jsp"/></td>
    <td width="638" align="center"><font color="#006600">�������Խ�����ҳ��ʾ������
        <jsp:getProperty name="show" property="pageAllCount" />
      ҳ�� <br>
      ÿҳ�����ʾ
      <jsp:getProperty name="show" property="pageSize" />
      ����¼. <br>
      ��ǰ��ʾ��������: </font><br>
      <br>
      <table border="1">
        <font color="#00361c">
        <tr>
        <th width="150" height="15" background="images/dbj.jpg"><font color="#00361c">���Ա���</font></th>
          <th width="150" height="15" background="images/dbj.jpg"><font color="#00361c">��������</font></th>
          <th width="150" height="15" background="images/dbj.jpg"><font color="#00361c">������</font></th>
          <th width="150" height="15" background="images/dbj.jpg"><font color="#00361c">����ʱ��</font></th>
        </tr>
        <jsp:getProperty name="show" property="presentPageResult"/>
  </font>
      </table>
      <br>
      <font color="#00361c">��ǰ��ʾ��
      <jsp:getProperty name="show" property="showPage" />
      ҳ�� <br>
      <font color="#00361c">����"ǰһҳ"��"��һҳ"�鿴��¼.</font>
      <table>
        <tr>
          <td><form action="handleshowbypage" method="POST">
              <input type="hidden" name="showPage" value="<%=show.getShowPage()-1%>">
              <input type="submit" name="g" value="ǰһҳ">
          </form></td>
          <td><form action="handleshowbypage" method="POST">
              <font color="#00361c">
              <input type="hidden" name="showPage" value="<%=show.getShowPage()+1 %>">
              <input type="submit" name="g" value="��һҳ">
              </font>
          </form></td>
          <td><form action="handleshowbypage" method="POST">
              <font color="#00361c">����ҳ��:
              <input type="text" name="showPage" size="5">
              <input type="submit" value="�ύ">
              </font>
          </form></td>
        </tr>
      </table>
      </font></td>
  </tr>
  <tr align="center" bgcolor="#71AD23">
    <td height="27" colspan="2"><font color="#FFFFFF">�����ˣ��л�Ů��ѧԺ05�������ϵ ��ٻٻ</font> </td>
    </tr>
</table>
</center>
</body>
</html>
