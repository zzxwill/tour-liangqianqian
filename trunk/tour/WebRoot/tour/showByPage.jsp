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
    <td width="638" align="center"><font color="#006600">所有留言将被分页显示。共有
        <jsp:getProperty name="show" property="pageAllCount" />
      页。 <br>
      每页最多显示
      <jsp:getProperty name="show" property="pageSize" />
      条记录. <br>
      当前显示的内容是: </font><br>
      <br>
      <table border="1">
        <font color="#00361c">
        <tr>
        <th width="150" height="15" background="images/dbj.jpg"><font color="#00361c">留言标题</font></th>
          <th width="150" height="15" background="images/dbj.jpg"><font color="#00361c">留言内容</font></th>
          <th width="150" height="15" background="images/dbj.jpg"><font color="#00361c">留言人</font></th>
          <th width="150" height="15" background="images/dbj.jpg"><font color="#00361c">留言时间</font></th>
        </tr>
        <jsp:getProperty name="show" property="presentPageResult"/>
  </font>
      </table>
      <br>
      <font color="#00361c">当前显示第
      <jsp:getProperty name="show" property="showPage" />
      页， <br>
      <font color="#00361c">单击"前一页"或"后一页"查看记录.</font>
      <table>
        <tr>
          <td><form action="handleshowbypage" method="POST">
              <input type="hidden" name="showPage" value="<%=show.getShowPage()-1%>">
              <input type="submit" name="g" value="前一页">
          </form></td>
          <td><form action="handleshowbypage" method="POST">
              <font color="#00361c">
              <input type="hidden" name="showPage" value="<%=show.getShowPage()+1 %>">
              <input type="submit" name="g" value="后一页">
              </font>
          </form></td>
          <td><form action="handleshowbypage" method="POST">
              <font color="#00361c">输入页码:
              <input type="text" name="showPage" size="5">
              <input type="submit" value="提交">
              </font>
          </form></td>
        </tr>
      </table>
      </font></td>
  </tr>
  <tr align="center" bgcolor="#71AD23">
    <td height="27" colspan="2"><font color="#FFFFFF">制作人：中华女子学院05级计算机系 梁倩倩</font> </td>
    </tr>
</table>
</center>
</body>
</html>
