package myservlet.control;
import mybean.data.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.*;
import java.lang.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.*;
import java.util.Date;
import java.text.*;


public class HandleUpdateLine2 extends HttpServlet {
    public void init(ServletConfig config) throws ServletException {
        super.init(config);

        try {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");}
        catch(ClassNotFoundException e){}

    }

    public String handleString(String s)
    {
        try{
            byte bb[]=s.getBytes("iso-8859-1");
            s=new String(bb);
        }catch(Exception ee){}
        return s;
    }
    //Process the HTTP Post request
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        Connection con;
        PreparedStatement sql;
//        Register reg=new Register();
        LiuYan liuyan=new LiuYan();
        request.setAttribute("liuyan",liuyan);
        
        response.setCharacterEncoding("GB2312");
		PrintWriter out = response.getWriter();
//		out.print("<%@ page contentType=\"text/html; charset=gb2312\" %>");
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
        
        String board_title=handleString(request.getParameter("name").trim());
        //title
	//	String tour_line_intro=handleString(request.getParameter("intro").trim());
		String response_context=handleString(request.getParameter("hot").trim());
		//回复内容
		
		
		
		
		
        
		
     //   System.out.print(tour_line_intro);
        
        Date time=new Date();
        SimpleDateFormat fmt= new SimpleDateFormat("yyyy-MM-dd");
        String date0=(String)fmt.format(time) ;
        
        
        System.out.println(board_title);
		System.out.println(response_context);
		System.out.println(date0);
		
        

        if(board_title==null)
        {
        	board_title="";
        }
     
        
        
        
/*        if(response_context==null){response_context="";}
        boolean boo=board_title.length()>0&&response_context.length()>0;
        try
        {
            con=DriverManager.getConnection("jdbc:odbc:tour","","");
          //  String insertCondition="update tour_line_info set tour_line_intro='"+tour_line_intro+"',response_context='"+response_context+"' where board_title='"+board_title+"' ";
            String insertCondition ="update board_info set response_context='"+response_context+"',response_time='"+date0+"' " +
            "where board_title='"+handleString(board_title)+"'";
            sql=con.prepareStatement(insertCondition);
            if(boo)
            {
//               sql.setString(1,handleString(board_title));
 //               sql.setString(2,handleString(tour_line_intro));
  //              sql.setString(3,handleString(response_context));
           
                int m=sql.executeUpdate();
                if(m!=0)
                {
 //                   backNews="注册成功！";
  //                  reg.setBackNews(backNews);
                   liuyan.setBoard_title(handleString(board_title));
//                    line.setTour_line_intro(handleString(tour_line_intro));
                //	line.setTour_line_intro(tour_line_intro);
                    liuyan.setResponse_context(response_context);
                    liuyan.setResponse_time(date0);
 //                   reg.setEmail(email);
                }
            }
            else
            {
  //              backNews="信息填写不完整或名字中有非法字符！";
  //              reg.setBackNews(backNews);
            }
            con.close();
        }
        catch(SQLException exp)
        {
    //        backNews="该会员名已被使用，请您更换名字"+exp;
    //        reg.setBackNews(backNews);
        }
        */
        
        
        
//        Connection con;   
        try{
        	
            con=DriverManager.getConnection("jdbc:odbc:tour");
            Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
            		ResultSet.CONCUR_UPDATABLE);
//            if(boo=true){

 //           String insertCondition ="INSERT INTO board_info(board_title,board_context,board_name,board_time) VALUES(?,?,?,?)";
            String insertCondition ="update board_info set response_context='"+response_context+"'" +
            "where board_title='"+board_title+"'";
   //         String insertCondition ="select * from tour_line_info ";
            
            
            int m = st.executeUpdate(insertCondition);
            if(m==1){
            	out.println("留言成功！");
            	System.out.println("Good!");
            	
            }
            	
 //           if(rs.next()==false){
  //          	out.print("没有相应的路线。");
  //          }
     //       out.println("<table>");
           // while (rs.next()){
     //       	String tour_line_name=(String)rs.getObject("tour_line_name");
  //          	out.println("<tr><td>"+rs.getObject("tour_line_name"));
            //	out.println("<tr><td>");
         //   	%>
           // 	System.out.println(rs.getObject("board_title"));
            	
          //  	<a 	href="searchresult?tour_line_name=<%=rs.getObject(1) %>"><%=rs.getObject(1) %></a>
           // 	<%
 //          	out.println("</td><td>"+rs.getObject(2));
  //          	out.println("</td><td>"+""+rs.getObject(3)+"</td></tr>");  
            	//out.println("</td></tr>");  
        //    }
         //   out.println("</table>");
        }catch(Exception e){
        	//out.print("没有相应的路线。");
        	
      };
      out.println("<a href=\"response.jsp\">返回</a>");
      out.println("</body></html>");
        
     //   RequestDispatcher dispatcher=request.getRequestDispatcher("showLineUpdateMess2.jsp");
     //   dispatcher.forward(request,response);
   }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        doPost(request,response);
    }
}
