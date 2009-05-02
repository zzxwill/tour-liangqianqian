package myservlet.control;
import mybean.data.*;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.*;
import java.util.Date;
import java.text.*;

public class HandleAddBulletin extends HttpServlet {

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
       Bulletin bulletin=new Bulletin();
        request.setAttribute("bulletin",bulletin);
     
        String bulletin_title=request.getParameter("bulletin_title");
    	String bulletin_context=request.getParameter("bulletin_context");
    	String bulletin_time=request.getParameter("bulletin_time");
        /*
         * 将当前时间格式化
         */
       
        
 //       String backNews="";
        boolean boo=true;
        if(bulletin_title.length()==0||bulletin_context.length()==0||bulletin_time.length()==0)
            boo=false;
        try{
            con=DriverManager.getConnection("jdbc:odbc:tour");
            if(boo=true){

            String insertCondition =" INSERT INTO bulletin_info(bulletin_title,	bulletin_context, bulletin_time) VALUES(?,?,?)";
            sql = con.prepareStatement(insertCondition);
            sql.setString(1,bulletin_title.trim());
            sql.setString(2,bulletin_context.trim());
            sql.setString(3,bulletin_time.trim());
   //         sql.setString(4,date0+" ".trim());
            int m=sql.executeUpdate();
            if(m!=0){
       //         backNews="留言成功！";
   //             line.setBackNews(backNews);
                bulletin.setBulletin_title(bulletin_title.trim());
                
                bulletin.setBulletin_context(bulletin_context.trim());
                bulletin.setBulletin_time(bulletin_time.trim());
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

       RequestDispatcher dispatcher=request.getRequestDispatcher("showBulletin.jsp");
       dispatcher.forward(request,response);
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        doPost(request,response);
    }
}
