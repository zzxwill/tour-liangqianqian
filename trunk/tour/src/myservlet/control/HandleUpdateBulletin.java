package myservlet.control;
import mybean.data.*;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.*;
import java.lang.*;


public class HandleUpdateBulletin extends HttpServlet {
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
        Bulletin bulletin=new Bulletin();
        request.setAttribute("bulletin",bulletin);
        String bulletin_title=handleString(request.getParameter("bulletin_title").trim());
		String bulletin_context=handleString(request.getParameter("bulletin_context").trim());
		
//        System.out.print(tour_line_intro);

        if(bulletin_title==null)
        {
        	bulletin_title="";
        }
        if(bulletin_context==null)
        {
        	bulletin_context="";
        }
        boolean boo=bulletin_title.length()>0&&bulletin_context.length()>0;
        try
        {
            con=DriverManager.getConnection("jdbc:odbc:tour","","");
            String insertCondition="update bulletin_info set bulletin_context='"+bulletin_context+"' where bulletin_title='"+bulletin_title+"' ";
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
 //               	bulletin.setBulletin_title(bulletin_title);
                	bulletin.setBulletin_context(bulletin_context);
                 
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
        RequestDispatcher dispatcher=request.getRequestDispatcher("showBulletinUpdateMess.jsp");
        dispatcher.forward(request,response);
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        doPost(request,response);
    }
}
