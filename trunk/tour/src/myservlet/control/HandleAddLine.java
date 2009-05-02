package myservlet.control;
import mybean.data.*;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.*;
import java.util.Date;
import java.text.*;

public class HandleAddLine extends HttpServlet {

   //Initialize global variables
    public void init(ServletConfig config) throws ServletException {

         super.init(config);
        try{
           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       }
       catch(Exception e){}
   }
   public String handleString(String s){
        try{
           byte b[]=s.getBytes("iso-8859-1");
           s=new String(b);
       }
       catch(Exception e){

       }
       return s;
   }
    //Process the HTTP Get request
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        request.setCharacterEncoding("gb2312");
        Connection con;
        PreparedStatement sql;
        Line line=new Line();
        request.setAttribute("line",line);
        String tour_line_name=request.getParameter("tour_line_name");
        String hot_tour_line=request.getParameter("hot_tour_line");
        String tour_line_intro=request.getParameter("tour_line_intro");
        
        /*
         * 将当前时间格式化
         */
       
        
 //       String backNews="";
        boolean boo=true;
        if(tour_line_name.length()==0||hot_tour_line.length()==0||tour_line_intro.length()==0)
            boo=false;
        try{
            con=DriverManager.getConnection("jdbc:odbc:tour");
            if(boo=true){

            String insertCondition =" INSERT INTO tour_line_info(tour_line_name,tour_line_intro,hot_tour_line) VALUES(?,?,?)";
            sql = con.prepareStatement(insertCondition);
            sql.setString(1,tour_line_name.trim());
            sql.setString(2,tour_line_intro.trim());
            sql.setString(3,hot_tour_line.trim());
   //         sql.setString(4,date0+" ".trim());
            int m=sql.executeUpdate();
            if(m!=0){
       //         backNews="留言成功！";
   //             line.setBackNews(backNews);
                line.setTour_line_name(tour_line_name.trim());
                line.setTour_line_intro(tour_line_intro.trim());
                line.setHot_tour_line(hot_tour_line.trim());
    //            line.setBoard_time(date0);
            }
             }
             else{
        //        backNews="请输入留言:";
   //             line.setBackNews(backNews);
            }
            con.close();
       }
       catch(Exception e){
       //    backNews="留言的标题和姓名都不能为空！";
   //        ly.setBackNews(backNews);
       }

       RequestDispatcher dispatcher=request.getRequestDispatcher("showLine.jsp");
       dispatcher.forward(request,response);
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        doPost(request,response);
    }
}
