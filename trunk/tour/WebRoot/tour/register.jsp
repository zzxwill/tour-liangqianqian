<%@ page contentType="text/html; charset=GB2312" %>
<%@ page language="java" contentType="text/html; charset=GB2312" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>用户注册</title>
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
alert("请填写用户名");
return false;}
else if(!IsValid()){
alert("用户名只能用字母和数字");
return false;}
else if(rge.user_key.value=="")
{alert("请填写密码");
return false;}
else if(reg.Email.value=="")
{alert("请填写邮箱");
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
          <td height="29" colspan="2" align="center"><font color="#00361c">请输入您的信息.</font></td>
		  </tr>
        <tr>
          <td width="98" height="36" align="center"><font color="#00361c">　会员名称：</font></td>
          <td width="218"><input type="text" name="user_name" >
            <font color="#FF0000">*</font></td>
        </tr>
		<tr>
		  <td height="21" colspan="2" align="center">　　　　　<font color="#FF00FF">用户名只能用数字和字母组成</font></td>
		</tr>
        <tr>
          <td height="28" align="center"><font color="#00361c">设置密码：</font></td>
          <td><input type="password" name="user_key" >
            <font color="#FF0000">*</font></td>
        </tr>
        <tr>
          <td height="34" align="center"><font color="#00361c">性 　别：</font></td>
          <td><label>
            <input type="radio" name="sex" value="男" checked="checked">
            <font color="#00361c" size="2">男</font></label>
            <label> 　　
            <input name="sex" type="radio" value="女">
            <font color="#00361c" size="2">女</font></label></td>
        </tr>
		<tr>
		  <td height="31" align="center"><font color="#00361C">Email地址</font>：</td>
		<td><input type="text" name="email"></td>
		</tr>
        <tr align="center">
          <td height="29" colspan="2"><input type="submit" name="g" value="提  交"></td>
        </tr>
      </table>
	</form></td>
  </tr>
</table>
<table width="756" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="756" height="27" align="center" bgcolor="#71AD23"><font color="#FFFFFF">制作人：中华女子学院05级计算机系 梁倩倩 </font></td>
  </tr>
</table>
</body>
</html>

