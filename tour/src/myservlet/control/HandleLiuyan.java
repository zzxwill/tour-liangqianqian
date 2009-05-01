package myservlet.control;
import mybean.data.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.*;
import java.util.Date;
import java.text.*;

public class HandleLiuyan extends HttpServlet {

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
        LiuYan ly=new LiuYan();
        request.setAttribute("liuyan",ly);
        String board_context=request.getParameter("board_context");
        String board_name=request.getParameter("board_name");
        String board_title=request.getParameter("board_title");
        Date time=new Date();
        SimpleDateFormat fmt= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String date0=fmt.format(time.getTime()) ;
        String backNews="";
        boolean boo=true;
        if(board_name.length()==0||board_title.length()==0||board_context.length()==0)
            boo=false;
        try{
            con=DriverManager.getConnection("jdbc:odbc:tour");
            if(boo=true){

            String insertCondition =" INSERT INTO board_info(board_title,board_context,board_name,board_time) VALUES(?,?,?,?)";
            sql = con.prepareStatement(insertCondition);
            sql.setString(1,board_title.trim());
            sql.setString(2,board_context.trim());
            sql.setString(3,board_name.trim());
            sql.setString(4,date0+" ".trim());
            int m=sql.executeUpdate();
            if(m!=0){
                backNews="留言成功！";
                ly.setBackNews(backNews);
                ly.setBoard_title(board_title.trim());
                ly.setBoard_name(board_name.trim());
                ly.setBoard_Context(board_context.trim());
                ly.setBoard_time(date0);
            }
             }
             else{
                backNews="请输入留言:";
                ly.setBackNews(backNews);
            }
            con.close();
       }
       catch(Exception e){
           backNews="留言的标题和姓名都不能为空！";
           ly.setBackNews(backNews);
       }

       RequestDispatcher dispatcher=request.getRequestDispatcher("showLiuyan.jsp");
       dispatcher.forward(request,response);
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        doPost(request,response);
    }
}
