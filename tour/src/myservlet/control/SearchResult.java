package myservlet.control;
import mybean.data.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.*;
import java.util.Date;
import java.text.*;

public class SearchResult extends HttpServlet {

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
        request.setCharacterEncoding("GB2312");
        response.setCharacterEncoding("GB2312");
        PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<%@ page contentType=\"text/html; charset=GB2312\" %>");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		
        String tour_line_name=handleString(request.getParameter("tour_line_name"));
//        String target="%"+tour_line_name+"%";
       
            
        Connection con;   
        try{
        	
            con=DriverManager.getConnection("jdbc:odbc:tour");
            Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
            		ResultSet.CONCUR_UPDATABLE);
//            if(boo=true){

 //           String insertCondition ="INSERT INTO board_info(board_title,board_context,board_name,board_time) VALUES(?,?,?,?)";
  //     String insertCondition ="select * from tour_line_info where tour_line_name like  '"+"%"+tour_line_name+"%"+"'";
            String insertCondition ="select * from tour_line_info where tour_line_name =  '"+tour_line_name+"'";
            
            //         String insertCondition ="select * from tour_line_info ";
            
            
            ResultSet rs = st.executeQuery(insertCondition);
 //           if(rs.next()==false){
  //          	out.print("没有相应的路线。");
  //          }
            out.println("<table>");
            out.println("<tr><td>线路名</td><td>介绍</td><td>是火爆路线？</td></tr>");
            while (rs.next()){
     //       	String tour_line_name=(String)rs.getObject("tour_line_name");
  //          	out.println("<tr><td>"+rs.getObject("tour_line_name"));
            	out.println("<tr><td>"+rs.getObject("tour_line_name"));
           	out.println("</td><td>"+rs.getObject(2));
            	out.println("</td><td>"+""+rs.getObject(3)+"</td></tr>");  
            	 
            }
            out.println("</table>");
        }catch(Exception e){
        	out.print("没有相应的路线。");
        	
        };
           
    //    
           	out.println("  </BODY>");
    		out.println("</HTML>");
    		out.flush();
    		out.close();
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        doPost(request,response);
    }
}
