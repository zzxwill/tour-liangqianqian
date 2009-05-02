package myservlet.control;
import mybean.data.*;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.*;
import java.util.Date;
import java.text.*;

public class HandleBookLine extends HttpServlet {
	
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
        BookLine bookline=new BookLine();
//        Line line=new Line();
        request.setAttribute("bookline",bookline);
        
        
        String tour_line_name=request.getParameter("tour_line_name");
        
        String user_name=request.getParameter("user_name");
       String book_time=request.getParameter("book_time");
        
        
        
        /*
         * 将当前时间格式化
         */
        Date time=new Date();
        SimpleDateFormat fmt= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        book_time=fmt.format(time) ;
        
       System.out.println(tour_line_name);
       System.out.println(user_name);
       System.out.println(book_time);
        
       
 //       String backNews="";
        boolean boo=true;
      if(tour_line_name.length()==0||user_name.length()==0)
         boo=false;
        System.out.println(boo);
        try{
            con=DriverManager.getConnection("jdbc:odbc:tour");
            if(boo=true){

            String insertCondition =" INSERT INTO tour_line_book(tour_line_name,user_name,book_time) VALUES(?,?,?)";
            sql = con.prepareStatement(insertCondition);
            sql.setString(1,tour_line_name.trim());
            sql.setString(2,user_name.trim());
            sql.setString(3,book_time.trim());
   //         sql.setString(4,date0+" ".trim());
            int m=sql.executeUpdate();
            if(m!=0){
       //         backNews="留言成功！";
   //             line.setBackNews(backNews);
            	bookline.setTour_line_name(tour_line_name.trim());
            	bookline.setUser_name(user_name.trim());
            	bookline.setBook_time(book_time.trim());
            	
            }
             }
             else{
        //        backNews="请输入留言:";
   //             line.setBackNews(backNews);
            }
            con.close();
       }
       catch(Exception e){
    	   System.out.println("插入有误！");
       //    backNews="留言的标题和姓名都不能为空！";
   //        ly.setBackNews(backNews);
       }

       RequestDispatcher dispatcher=request.getRequestDispatcher("showBookLine.jsp");
       dispatcher.forward(request,response);
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        doPost(request,response);
    }
}
