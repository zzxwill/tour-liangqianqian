<%@page contentType="text/html; charset=GB2312"%>
<%@page language="java" contentType="text/html; charset=GB2312"%>
<%@page language="java" import="mybean.data.*"%>
<jsp:useBean id="login" type="mybean.data.Login" scope="session" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>����������</title>
<style type="text/css">
  <!--
    .style1 {color: #71AD23}
    .style2 {color: #71AD23; font-size: 14px; }
    .style3 {color: #FF6666}
    a:link {
    color: #FF6699;
    }
    .style4 {color: #71AD23; font-size: 12px; }
    .style6 {color: #FF6666; font-size: 12px; }
    .style7 {font-size: 12px}
    .style9 {font-size: 12px; color: #FFFFFF; }
.style10 {color: #FF00FF}
  -->
</style>
</head>
<body>
<table width="756" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="F0F7FF">
  <!--DWLayoutTable-->
  <tr>
    <td colspan="3" align="center">
      <jsp:include page="top.jsp"/>
    </td>
  </tr>
  <tr>
    <td width="222" height="600" valign="top">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="221" valign="top">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <!--DWLayoutTable-->
              <tr>
                <td height="525" valign="top">
                  <table width="219" height="539" border="0" cellspacing="0">
                    <tr>
                      <td height="23" bgcolor="#D5FFB9">                        ��
                        <img src="images/tits.gif" width="12" height="12">
                        &nbsp;&nbsp;
                        <span class="style3">��Ա��¼</span>
                      </td>
                    </tr>
                    <tr>
                      <td height="40" align="center" background="images/bj4.gif">
                        <span class="style10"><br>
                        <jsp:getProperty name="login" property="backNews"/>
                        </span> </td>
                    </tr>
                    <tr>
                      <td height="96" align="center" valign="middle" background="images/1.jpg">
                        <span class="style10"><br>
						<% if(login.getSuccess()==true)
			  {
			  %>
					    ��¼��Ա����:
                        <jsp:getProperty name="login" property="user_name"/>
					    <% }
			  else
			  {
			  %>
					    ��¼��Ա����:
					    <jsp:getProperty name="login" property="user_name"/>
				        ��¼��Ա����:
                        <jsp:getProperty name="login" property="user_key"/>
                        <% }
				 %>
                        </span>
                      </td>
                    </tr>
                    <tr>
                      <td height="380">
                        <jsp:include page="left_1.jsp"/>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td height="30" valign="top">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <!--DWLayoutTable-->
              <tr>
                <td width="210" height="30" background="image/dbj.jpg">
                  <span class="style1"> �� <img src="images/003.gif" width="16" height="16">���ȵ���·������<img src="images/13571911.gif" width="36" height="17"></span>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td height="177" valign="top">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <!--DWLayoutTable-->
              <tr>
                <td width="210" height="187"><jsp:include page="hot_line_show.jsp"/>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
    <td width="379" rowspan="2" valign="top">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="385" height="240" valign="top">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <!--DWLayoutTable-->
              <tr>
                <td width="381" height="30" valign="top">
                  <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <!--DWLayoutTable-->
                    <tr>
                      <td width="385" height="30">
                        <MARQUEE scrollAmount=1 scrollDelay=3 class="style3" onmouseover=this.stop() onmouseout=this.start()>��Һã���ӭ�������������磡</MARQUEE>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr>
                <td height="25" valign="top">
                  <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <!--DWLayoutTable-->
                    <tr>
                      <td width="25" height="25" valign="top">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                          <!--DWLayoutTable-->
                          <tr>
                            <td width="47" height="25">
                              <img src="images/004.gif" width="16" height="16">
                            </td>
                          </tr>
                        </table>
                      </td>
                      <td width="306" background="images/dbj.jpg">
                        <div align="center" class="style2">������</div>
                      </td>
                      <td width="42" valign="top">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                          <!--DWLayoutTable-->
                          <tr>
                            <td width="42" height="25" valign="top" background="images/dbj.jpg">
                              <img src="images/13571911.gif" width="36" height="17">
                            </td>
                          </tr>
                        </table>
                      </td>
                      <td width="12" valign="top">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                          <!--DWLayoutTable-->
                          <tr>
                            <td width="12" height="25">
                              <img src="images/youshangjiao.gif" width="12" height="25">
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr>
                <td height="160" valign="top">
                  <table width="97%" border="0" cellpadding="0" cellspacing="0">
                    <!--DWLayoutTable-->
                    <tr>
                      <td width="9" height="160" valign="top">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                          <!--DWLayoutTable-->
                          <tr>
                            <td width="10" height="160">&nbsp;</td>
                          </tr>
                        </table>
                      </td>
                       <td bgcolor="#FFFFFF" align="center" valign="top"><div id="marquees">
                        <br><jsp:include page="bulletin_show.jsp"/></div>
              <script language="javascript">
              <!--
             marqueesHeight=160; //�������߶�
stopscroll=false; //������������Ƿ�ֹͣ����
with(marquees){
noWrap=true; //�������������Զ�����
style.width=0; //�������ǿ��Խ����Ŀ����Ϊ0����Ϊ���ᱻ�Ŵ�
style.height=marqueesHeight;
style.overflowY="hidden"; //���������ɼ�
onmouseover=new Function("stopscroll=true"); //��꾭����ֹͣ����
onmouseout=new Function("stopscroll=false"); //����뿪����ʼ����
}
//��ʱ���������ĸ߶����޷���ȡ�ˡ��������һ�����ɼ��Ĳ�"templayer"���Ժ����ݸ��Ƶ����棺
document.write('<div id="templayer" style="position:absolute;z-index:1;visibility:hidden"></div>');
function init(){ //��ʼ����������
//��θ���ԭ���ݵ�"templayer"��ֱ��"templayer"�ĸ߶ȴ����������߶ȣ�
while(templayer.offsetHeight<marqueesHeight){
templayer.innerHTML+=marquees.innerHTML;
} //��"templayer"�����ݵġ����������ƻ�ԭ��������
marquees.innerHTML=templayer.innerHTML+templayer.innerHTML;
//����������ʱ������"scrollUp()"����������������
setInterval("scrollUp()",20);
}
document.body.onload=init;
preTop=0; //������������жϹ������Ƿ��Ѿ����˾�ͷ
function scrollUp(){ //����������������
if(stopscroll==true) return; //�������"stopscroll"Ϊ�棬��ֹͣ����
preTop=marquees.scrollTop; //��¼����ǰ�Ĺ�����λ��
marquees.scrollTop+=1; //�����������ƶ�һ������
//��������������ˣ������Ϲ������͵�ǰ����һ����λ��
//��Ȼ������ˣ�ͬ����Ҫ���¹���һ������(+1)��
if(preTop==marquees.scrollTop){
marquees.scrollTop=templayer.offsetHeight-marqueesHeight+1;
}
}
-->
  </script></td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr>
                <td height="25" valign="top">
                  <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <!--DWLayoutTable-->
                    <tr>
                      <td width="25" height="25" valign="top">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                          <!--DWLayoutTable-->
                          <tr>
                            <td width="25" height="25" valign="top">
                              <img src="images/zuojiao.gif" width="25" height="20">
                            </td>
                          </tr>
                        </table>
                      </td>
                      <td width="347" background="images/xbkbg.gif">&nbsp;</td>
                      <td width="10" valign="top">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                          <!--DWLayoutTable-->
                          <tr>
                            <td width="12" height="25">&nbsp;</td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td height="30" valign="top">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <!--DWLayoutTable-->
              <tr>
                <td width="385" height="30" background="images/dbj.jpg">
                  <span class="style2">��<img src="images/150.gif" width="17" height="15">����������������������·��ѯ</span>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td height="13" valign="top">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <!--DWLayoutTable-->
              <tr>
                <td width="385" height="13" valign="middle">
                  <form name="form2" method="post" action="show_line.jsp">
                  <table width="100%" border="0" cellspacing="0">
                    <tr>
                      <td width="38%">
                        <div align="center" class="style1">������·����:</div>
                      </td>
                      <td width="47%">
                        <input type="text" name="tour_line_name">
                      </td>
                      <td width="15%">
                        <input type="submit" name="Submit3" value="��ѯ">
                      </td>
                    </tr>
                  </table>
                  </form>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td height="23" valign="top"><!--DWLayoutEmptyCell-->&nbsp;


          </td>
        </tr>
      </table>
      <table width="379" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="379" height="163">
            <table width="377" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="377" height="26" background="images/dbj.jpg">                  ��
                  <img src="images/icon.gif" width="21" height="21">
                  ��
                  <span class="style2">ǩ֤����</span>
                </td>
              </tr>
              <tr>
                <td height="151">
                  <table width="378" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="126" height="79">
                        <img src="images/france.png" width="125" height="80">
                      </td>
                      <td width="126">
                        <img src="images/england.png" width="125" height="80">
                      </td>
                      <td width="126">
                        <img src="images/usa.png" width="125" height="80">
                      </td>
                    </tr>
                    <tr class="style1">
                      <td height="25" align="center">
                        <a href="#" class="style4">��������ǩ֤</a>
                      </td>
                      <td align="center" class="style4">
                        <a href="#">Ӣ������ǩ֤</a>
                      </td>
                      <td align="center" class="style4">
                        <a href="#">��������ǩ֤</a>
                      </td>
                    </tr>
                    <tr class="style6">
                      <td height="28" align="center">
                        <span class="style6">��1599</span>
                      </td>
                      <td align="center">
                        <span class="style3">��1500</span>
                      </td>
                      <td align="center">
                        <span class="style3">��1400</span>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td height="176">
            <table width="379" height="174" border="0" cellpadding="0" cellspacing="0">
              <tr background="images/dbj.jpg">
                <td height="30" colspan="5">                  ��
                  <img src="images/icon_03.gif" width="25" height="14">
                  ��
                  <span class="style2">�ؼۻ�Ʊ</span>
                </td>
              </tr>
              <tr>
                <td width="86">&nbsp;</td>
                <td width="93" align="center" class="style4">������/Ŀ�ĵ�</td>
                <td width="54" align="center" class="style4">����</td>
                <td width="80" align="center" class="style4">��������</td>
                <td width="66" align="center" class="style4">���</td>
              </tr>
              <tr>
                <td height="45" align="center">
                  <img src="images/xg.jpg" width="74" height="45">
                </td>
                <td rowspan="2" align="center" class="style6">
                  <a href="#">����-���</a>
                </td>
                <td rowspan="2" align="center" class="style6">����</td>
                <td rowspan="2" align="center" class="style6">2009-04-21</td>
                <td rowspan="2" align="center" class="style6">��1500</td>
              </tr>
              <tr>
                <td height="13" align="center">
                  <span class="style7">���</span>
                </td>
              </tr>
              <tr>
                <td height="45" align="center" valign="middle">
                  <img src="images/oz.jpg" width="74" height="45">
                </td>
                <td colspan="4" rowspan="2">                  ��
                  <span class="style6">�˺��������ؼۻ�Ʊ</span>
                </td>
              </tr>
              <tr>
                <td height="13" align="center">
                  <span class="style7">ŷ��</span>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td height="59" valign="top">
            <table width="379" height="65" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td height="28" background="images/dbj.jpg">                  ��
                  <img src="images/001.gif" width="16" height="15">
                  ��
                  <span class="style2">��������</span>
                </td>
              </tr>
              <tr>
                <td height="37" align="center">
                  <span class="style4"><a href="http://www.169trip.com/">����������</a>��<a href="http://www.utourworld.com/">����������</a>��<a href="http://www.cn5518.cn/">Я��������</a>��<a href="http://www.kuxun.cn/">��Ѷ������</a>��<a href="www.baidu.com">�ٶ�</a></span>
                  ��
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
    <td width="155" valign="top">
      <br>
      <table width="97%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td width="155" height="120" valign="top">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <!--DWLayoutTable-->
              <tr>
                <td width="155" height="98" valign="top">
                  <div align="center">
                    <img src="images/jiuzaigou.jpg" width="155" height="98">
                  </div>
                </td>
              </tr>
              <tr>
                <td height="22">
                  <div align="center">
                    <a href="#" class="style4">��կ��</a>
                  </div>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td height="120" valign="top">
            <table width="97%" border="0" cellpadding="0" cellspacing="0">
              <!--DWLayoutTable-->
              <tr>
                <td width="155" height="98" valign="top">
                  <div align="center">
                    <img src="images/bdlg.jpg" width="155" height="98">
                  </div>
                </td>
              </tr>
              <tr>
                <td height="22">
                  <div align="center">
                    <a href="#" class="style4">��������</a>
                  </div>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td height="120" valign="top">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <!--DWLayoutTable-->
              <tr>
                <td width="165" height="98" valign="top">
                  <div align="center">
                    <img src="images/zhyn.jpg" width="155" height="98">
                  </div>
                </td>
              </tr>
              <tr>
                <td height="22">
                  <div align="center">
                    <a href="#" class="style4">�麣��Ů��</a>
                  </div>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td height="120" valign="top">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <!--DWLayoutTable-->
              <tr>
                <td width="165" height="98" valign="top">
                  <div align="center">
                    <img src="images/lmgc.jpg" width="155" height="98">
                  </div>
                </td>
              </tr>
              <tr>
                <td height="22">
                  <div align="center">
                    <a href="#" class="style4">����㳡</a>
                  </div>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td height="98" valign="top">
            <div align="center">
              <img src="images/sbd.jpg" width="155" height="98">
            </div>
          </td>
        </tr>
        <tr>
          <td height="22">
            <div align="center">
              <a href="#" class="style4">���ൺ</a>
            </div>
          </td>
        </tr>
      </table>
      <table width="155" height="134" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="99" valign="top">
            <img src="images/hs.jpg" width="155" height="98">
          </td>
        </tr>
        <tr>
          <td height="23" align="center">
            <a href="#" class="style4">��ɽӭ����</a>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table width="760" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="760" height="27" align="center" bgcolor="#71AD23">
      <span class="style9">�����ˣ��л�Ů��ѧԺ05�������ϵ ��ٻٻ</span>
    </td>
  </tr>
</table>
</body>
</html>
