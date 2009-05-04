package myservlet.control;
import mybean.data.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import com.sun.rowset.*;

public class HandleShowByPage extends HttpServlet {
    private static final String CONTENT_TYPE = "text/html; charset=GB2312";
    CachedRowSetImpl rowSet = null;
    //Initialize global variables
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        } catch (Exception e) {}
    }


    //Process the HTTP Post request
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        HttpSession session = request.getSession(true);
        Login login = (Login) session.getAttribute("login");
        boolean ok = true;
        if (login == null) {
            ok = false;
            response.sendRedirect("login.jsp");
        }
        if (ok == true) {
            continueDoPost(request, response);
        }
    }

    public void continueDoPost(HttpServletRequest request,
                               HttpServletResponse response) throws
            ServletException, IOException {
        HttpSession session = request.getSession(true);
        Connection con = null;
        StringBuffer presentPageResult = new StringBuffer();
        ShowRecordByPage showBean = null;
        try {
            showBean = (ShowRecordByPage) session.getAttribute("show");
            if (showBean == null) {
                showBean = new ShowRecordByPage();
                session.setAttribute("show", showBean);
            }
        } catch (Exception exp) {
            showBean = new ShowRecordByPage();
            session.setAttribute("show", showBean);
        }
        showBean.setPageSize(6);
        int showPage=0;
        showPage = Integer.parseInt(request.getParameter("showPage"));
        //System.out.println(request.getParameter("showPage"));
        if(request.getParameter("showPage")==null)
        {      showPage=1;
             System.out.println("aaaa"+showPage);
        }
        if (showPage > showBean.getPageAllCount())
            showPage = 1;
        if (showPage <= 0)
            showPage = showBean.getPageAllCount();
        showBean.setShowPage(showPage);
        int pageSize = showBean.getPageSize();
        //String url=
        try {
            con = DriverManager.getConnection("jdbc:odbc:tour");
            Statement sql = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                                                ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = sql.executeQuery("SELECT * FROM board_info");
            rowSet = new CachedRowSetImpl();
            rowSet.populate(rs);
            con.close();
            showBean.setRowSet(rowSet);
            rowSet.last();
            int m = rowSet.getRow();
            int n = pageSize;
            int pageAllCount = ((m % n) == 0) ? (m / n) : (m / n + 1);
            showBean.setPageAllCount(pageAllCount);
            presentPageResult = show(showPage, pageSize, rowSet);
            showBean.setPresentPageResult(presentPageResult);
        } catch (SQLException exp) {}
        RequestDispatcher dispatcher = request.getRequestDispatcher("showByPage.jsp");
        dispatcher.forward(request, response);
    }

    public StringBuffer show(int page, int pageSize, CachedRowSetImpl rowSet) {
        StringBuffer str = new StringBuffer();
        try {
            rowSet.absolute((page - 1) * pageSize + 1);
            for (int i = 1; i <= pageSize; i++) {
                str.append("<tr>");
                str.append("<td>" + rowSet.getString(1) + "</td>");
                str.append("<td>" + rowSet.getString(2) + "</td>");
                str.append("<td>" + rowSet.getString(3) + "</td>");
                str.append("<td>" + rowSet.getString(4) + "</td>");
                str.append("<td>" + rowSet.getString(5) + "</td>");
                str.append("<td>" + rowSet.getString(6) + "</td>");

                
                //str.append("<td>"+s+"</td>");
                str.append("</tr>");
                rowSet.next();
            }
        } catch (SQLException exp) {}
        return str;
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
            doPost(request,response);
    }
}
