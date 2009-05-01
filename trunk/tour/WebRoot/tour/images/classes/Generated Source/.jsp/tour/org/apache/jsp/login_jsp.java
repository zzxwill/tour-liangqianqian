package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static java.util.Vector _jspx_dependants;

  public java.util.List getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    JspFactory _jspxFactory = null;
    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      _jspxFactory = JspFactory.getDefaultFactory();
      response.setContentType("text/html; charset=GB2312");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n\r\n\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=GB2312\">\r\n<title>星星旅行社</title>\r\n</head>\r\n<table width=\"760\" border=\"0\" cellspacing=\"0\" align=\"center\">\r\n  <tr>\r\n    <td colspan=\"2\">");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "top.jsp", out, false);
      out.write("</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"221\">");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "left_1.jsp", out, false);
      out.write(" </td>\r\n    <td width=\"527\" align=\"center\" valign=\"middle\" background=\"images/bg6.jpg\"><table border=\"0\" cellspacing=\"0\">\r\n<tr align=\"center\" background=\"images/dbj.jpg\">\r\n  <td height=\"26\" colspan=\"2\"><font color=\"#00361c\">请您登陆</font></td>\r\n</tr>\r\n<form action=\"handlelogin\" method=\"post\">\r\n<tr>\r\n  <td width=\"132\" height=\"33\"><font color=\"#00361c\"><font color=\"#00361C\">请输入您的用户名：</font></td>\r\n  <td width=\"240\"><input type=\"text\" name=\"user_name\" ></td></tr>\r\n<tr>\r\n  <td height=\"34\"><font color=\"#00361C\"><font color=\"#00361c\">请输入您的密码：</font></td>\r\n  <td><input type=\"password\" name=\"user_key\" ></td></tr>\r\n<tr align=\"center\">\r\n  <td height=\"35\" colspan=\"2\">\r\n    <input type=\"submit\" value=\"登 陆\" name=\"g\">　　\r\n    <a href=\"regedit.jsp\">注册</a></td>\r\n</tr>\r\n</form></table>    </td>\r\n  </tr>\r\n</table>\r\n<table width=\"760\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n  <tr>\r\n    <td width=\"760\" height=\"27\" align=\"center\" bgcolor=\"#71AD23\"><span class=\"style9\"><font color=\"#FFFFFF\">制作人：中华女子学院05级计算机系 梁倩倩</font></span></td>\r\n");
      out.write("  </tr>\r\n</table>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      if (_jspxFactory != null) _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
