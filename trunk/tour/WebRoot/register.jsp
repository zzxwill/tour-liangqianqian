<%@ page contentType="text/html; charset=GB2312" %>
<%@ page language="java" contentType="text/html; charset=GB2312" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>�û�ע��</title>
<script language="javascript">
function IsDigit(cCheck)
{
return(('0'<=cCheck)&&(cCheck<='9'));
}
function IsAlpha(cCheck)
{
return((('a'<=cCheck)&&(cCheck<='z'))||(('A'<=cCheck)&&(cCheck<='Z')));
}
function IsValid()
{
var struserName=reg.user_name.value;
for(nIndex=0;nIndex<struserName.lenth;nIndex++)
{
cCheck=struserName.charAt(nIndex);
if(!(IsDigit(cCheck)||IsAlpha(cCheck))){
return false;
}
}
return true;
}
function docheck()
{
if(reg.user_name.value==""){
alert("����д�û���");
return false;}
else if(!IsValid()){
alert("�û���ֻ������ĸ������");
return false;}
else if(rge.user_key.value=="")
{alert("����д����");
return false;}
else if(reg.Email.value=="")
{alert("����д����");
return false;}
return false;}
else {return true;}
}
</script>
c</head>
<body>
<table width="750" border="0" cellspacing="0" align="center">
  <tr>
    <td colspan="2"><jsp:include page="top.jsp" /></td>
  </tr>
  <tr>
    <td width="221"><jsp:include page="left_1.jsp" /> </td>
    <td width="527" background="images/1.jpg" align="center">
	<form action="handleregister" name="reg" onSubmit="return docheck()" method="POST">
      <table>
        <tr background="images/dbj.jpg">
          <td height="29" colspan="2" align="center"><font color="#00361c">������������Ϣ.</font></td>
		  </tr>
        <tr>
          <td width="98" height="36" align="center"><font color="#00361c">����Ա���ƣ�</font></td>
          <td width="218"><input type="text" name="user_name" >
            <font color="#FF0000">*</font></td>
        </tr>
		<tr>
		  <td height="21" colspan="2" align="center">����������<font color="#FF00FF">�û���ֻ�������ֺ���ĸ���</font></td>
		</tr>
        <tr>
          <td height="28" align="center"><font color="#00361c">�������룺</font></td>
          <td><input type="password" name="user_key" >
            <font color="#FF0000">*</font></td>
        </tr>
        <tr>
          <td height="34" align="center"><font color="#00361c">�� ����</font></td>
          <td><label>
            <input type="radio" name="sex" value="��" checked="checked">
            <font color="#00361c" size="2">��</font></label>
            <label> ����
            <input name="sex" type="radio" value="Ů">
            <font color="#00361c" size="2">Ů</font></label></td>
        </tr>
		<tr>
		  <td height="31" align="center"><font color="#00361C">Email��ַ</font>��</td>
		<td><input type="text" name="email"></td>
		</tr>
        <tr align="center">
          <td height="29" colspan="2"><input type="submit" name="g" value="��  ��"></td>
        </tr>
      </table>
	</form></td>
  </tr>
</table>
<table width="756" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="756" height="27" align="center" bgcolor="#71AD23"><font color="#FFFFFF">�����ˣ��л�Ů��ѧԺ05�������ϵ ��ٻٻ </font></td>
  </tr>
</table>
</body>
</html>

