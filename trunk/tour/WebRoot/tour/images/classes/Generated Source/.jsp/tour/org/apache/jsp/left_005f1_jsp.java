package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class left_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n\r\n<style type=\"text/css\">\r\n<!--\r\n.style3 {\r\n\tfont-size: 14px;\r\n\tcolor: #009900;\r\n}\r\n.style4 {color: #FF6699}\r\n.style6 {color: #FF6699; font-size: 12px; }\r\n.style8 {color: #FF6600; font-size: 14px; }\r\n-->\r\n</style>\r\n<table width=\"219\" border=\"0\" cellspacing=\"0\">\r\n  <tr>\r\n    <td width=\"100%\" height=\"345\"><table width=\"100%\" height=\"166\" border=\"1\" cellspacing=\"0\">\r\n            <tr>\r\n              <td height=\"26\" bgcolor=\"#D5FFB9\"> 　<img src=\"images/003.gif\" width=\"16\" height=\"16\">　<span class=\"style3\">特色季节游　　　</span><img src=\"images/13571911.gif\" width=\"36\" height=\"17\"></td>\r\n            </tr>\r\n            <tr>\r\n              <td height=\"138\" valign=\"top\" bordercolor=\"0\"><p>&nbsp;<img src=\"images/05070524.gif\" width=\"13\" height=\"13\" vspace=\"0\">&nbsp;<span class=\"style33\">&nbsp;<span class=\"style6\">绝色九寨沟春景</span></span><br>\r\n                <br>\r\n                &nbsp;<img src=\"images/05070525.gif\" width=\"13\" height=\"13\">&nbsp;&nbsp;<span class=\"style6\">游港澳4人同行减800</span><br>\r\n                <br>\r\n                &nbsp;<img src=\"images/05070526.gif\" width=\"13\" height=\"13\">&nbsp;&nbsp;<span class=\"style6\">毕业之旅京郊游</span><br>\r\n");
      out.write("                <br>\r\n                &nbsp;<img src=\"images/05070527.gif\" width=\"13\" height=\"13\">&nbsp;&nbsp;<span class=\"style6\">三亚豪华五星游</span><br>\r\n                <br>\r\n                &nbsp;<img src=\"images/05070528.gif\" width=\"13\" height=\"13\">&nbsp;&nbsp;<span class=\"style6\">丽江七日游</span></p>\r\n              </td>\r\n            </tr>\r\n    </table>\r\n      <table width=\"219\" height=\"179\" border=\"1\" cellspacing=\"0\">\r\n        <tr>\r\n          <td height=\"29\" bgcolor=\"#D5FFB9\"> 　 <img src=\"images/003.gif\" width=\"16\" height=\"16\">　<span class=\"style3\">出行参考</span>　　　<img src=\"images/13571911.gif\" width=\"36\" height=\"17\"></td>\r\n        </tr>\r\n        <tr>\r\n          <td height=\"148\"><span class=\"style6\"><br>\r\n　・印尼巴厘岛旅游须知<br>\r\n\t\t    <br>\r\n\t\t  　・西藏旅游须知<br>\r\n          <br>\r\n          　・最后的香格里拉<br>\r\n          <br>\r\n          　・澳洲 新西兰 旅游须知<br>\r\n          <br>\r\n          　・九寨沟半冰半水的童话王国<br>\r\n          <br>\r\n          　・夏日漂流知多少</span></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  \r\n</table>\r\n");
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
