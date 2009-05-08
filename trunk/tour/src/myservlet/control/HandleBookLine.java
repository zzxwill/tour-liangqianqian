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
        PrintWriter out = response.getWriter();
        out.println("<%@ page language=\"java\" contentType=\"text/html charset=gb2312\" %> ");
	//	out.println("<%@ page pageEncoding=\"gb2312\"%>");
        out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		
        Connection con;               
        String tour_line_name=request.getParameter("tour_line_name");
        String user_name=request.getParameter("user_name");
       String book_time=null;
        
        
        
        /*
         * 将当前时间格式化
         */
        Date time=new Date();
        SimpleDateFormat fmt= new SimpleDateFormat("yyyy-MM-dd HH:MM:SS");
        book_time=(String)fmt.format(time) ;
        
       System.out.println(tour_line_name);
       System.out.println(user_name);
       System.out.println(book_time);
        
       

        try{
            con=DriverManager.getConnection("jdbc:odbc:tour");
            Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
            		ResultSet.CONCUR_UPDATABLE);
            
            String insertCondition =" INSERT INTO tour_line_book VALUES('"+tour_line_name+"','"+user_name+"','"+book_time+"')";
            int number = st.executeUpdate(insertCondition);
            
            if(number==1){
        		  out.println("Successful! 恭喜您，新任务添加成功！<br>");
        		  out.println("<a href='/tour/bookline.jsp'>返回</a>");
        	  }
        	  else{
        		  out.println("Sorry!对不起，新任务添加失败，请返回继续操作！");
        		   out.println("<a href='/tour/bookline.jsp'>返回</a>");
        	  }
              con.close();
              out.println("  </BODY></html>");
         }
       catch(Exception e){
    	   System.out.println("插入有误！");
       //    backNews="留言的标题和姓名都不能为空！";
   //        ly.setBackNews(backNews);
       }

    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        doPost(request,response);
    }
}
