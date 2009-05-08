package myservlet.control;
import mybean.data.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.*;
import java.lang.*;


public class HandleUpdateLine extends HttpServlet {
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
        Line line=new Line();
        request.setAttribute("line",line);
        String tour_line_name=handleString(request.getParameter("name").trim());
		String tour_line_intro=handleString(request.getParameter("intro").trim());
		String hot_tour_line=handleString(request.getParameter("hot").trim());
		
        System.out.print(tour_line_intro);

        if(tour_line_name==null)
        {
        	tour_line_name="";
        }
        if(tour_line_intro==null)
        {
        	tour_line_intro="";
        }
        if(hot_tour_line==null){hot_tour_line="";}
        boolean boo=tour_line_name.length()>0&&tour_line_intro.length()>0&&hot_tour_line.length()>0;
        try
        {
            con=DriverManager.getConnection("jdbc:odbc:tour","","");
            String insertCondition="update tour_line_info set tour_line_intro='"+tour_line_intro+"',hot_tour_line='"+hot_tour_line+"' where tour_line_name='"+tour_line_name+"' ";
            sql=con.prepareStatement(insertCondition);
            if(boo)
            {
//               sql.setString(1,handleString(tour_line_name));
 //               sql.setString(2,handleString(tour_line_intro));
  //              sql.setString(3,handleString(hot_tour_line));
           
                int m=sql.executeUpdate();
                if(m!=0)
                {
 //                   backNews="注册成功！";
  //                  reg.setBackNews(backNews);
 //                   line.setTour_line_name(handleString(tour_line_name));
//                    line.setTour_line_intro(handleString(tour_line_intro));
                	line.setTour_line_intro(tour_line_intro);
                    line.setHot_tour_line(hot_tour_line);
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
        RequestDispatcher dispatcher=request.getRequestDispatcher("showLineUpdateMess.jsp");
        dispatcher.forward(request,response);
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        doPost(request,response);
    }
}
