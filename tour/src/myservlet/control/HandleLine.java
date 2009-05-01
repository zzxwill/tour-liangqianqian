package myservlet.control;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.sql.Connection;
import mybean.data.*;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class HandleLine extends HttpServlet {

    //Initialize global variables
    public void init(ServletConfig config) throws ServletException {

         super.init(config);
        try{
           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       }
       catch(Exception e){}
   }

   public void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        response.setCharacterEncoding("gb2312");
        Connection con;
        PreparedStatement sql;
        Line line=new Line();
        request.setAttribute("line",line);
        String tour_line_name=request.getParameter("tour_line_name");
        StringBuffer backNews=new StringBuffer();
        boolean boo=true;
        if(tour_line_name.length()==0){boo=false;}
        try{
            con=DriverManager.getConnection("jdbc:odbc:tour");
            if(boo=true){
            String selectCondition =
                    " select * from tour_line_intro where tour_line_name like'%"+tour_line_name.trim()+"%'";
            sql = con.prepareStatement(selectCondition);
            ResultSet rs=sql.executeQuery();
            //StringBuffer str=new StringBuffer();
            backNews.append("<table border=0>");
            while(rs.next())
            {
                backNews.append("<tr><td><a herf=line_intro.jsp>"+rs.getString(1)+"</a></td></tr>");
            }
            backNews.append("</table>");
            line.setBackNews(backNews);
             }
            con.close();
       }
       catch(Exception e){
           System.out.print(e);
       }

       RequestDispatcher dispatcher=request.getRequestDispatcher
                                     ("selectLine.jsp");
       dispatcher.forward(request, response);

    }

   //Process the HTTP Get request
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        doPost(request,response);
    }
}
