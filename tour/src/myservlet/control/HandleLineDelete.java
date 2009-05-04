package myservlet.control;
import mybean.data.*;
import javax.servlet.*;
import javax.servlet.http.*;

import java.io.*;
import java.util.*;
import java.sql.*;
import java.util.Date;
import java.text.*;

public class HandleLineDelete extends HttpServlet {
	
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
protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
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
	
	request.setCharacterEncoding("gb2312");
	String tour_line_name=request.getParameter("tour_line_name");
    String user_name=request.getParameter("user_name");
    
    /*
     * 将当前时间格式化
     */
   
    
    
    	out.print(tour_line_name);
    	out.print(tour_line_name);
    	
    try{
    	
        con=DriverManager.getConnection("jdbc:odbc:tour");
        Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
        		ResultSet.CONCUR_UPDATABLE);
//        if(boo=true){

//           String insertCondition ="INSERT INTO board_info(board_title,board_context,board_name,board_time) VALUES(?,?,?,?)";
 //  String insertCondition ="update board_info set response_context='"+response_context+"',response_time='"+date0+"' where board_title='"+board_title+"'";
 //       String insertCondition ="insert into board_info(response_context,response_time) values('"+board_title+"','"+date0+"')";
   //     tour_line_name
     //   String insertCondition ="update board_info set response_context='"+response_context+"',response_time='"+date0+"' where board_title='"+board_title+"'";

        String insertCondition ="delete from tour_line_book where tour_line_name='"+tour_line_name+"' and user_name='"+user_name+"'";
        
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
	   out.println("Error!");
   } 
}
    
	
    
    
   
}
