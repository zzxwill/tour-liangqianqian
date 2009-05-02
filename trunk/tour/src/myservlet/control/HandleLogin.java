package myservlet.control;
import mybean.data.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.*;
import java.lang.*;

public class HandleLogin extends HttpServlet {
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        try {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");}
        catch(ClassNotFoundException e){}

    }

    //Process the HTTP Get request
    public String handleString(String s)
    {
        try{
            byte bb[]=s.getBytes("iso-8859-1");
            s=new String(bb);
        }
        catch(Exception ee){}
        return s;
    }

 //Process the HTTP Post request
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        Connection con;
        PreparedStatement sql;
        Login loginBean=null;
        String backNews="";
        HttpSession session=request.getSession(true);
        try{
            loginBean=(Login)session.getAttribute("login");
            if(loginBean==null)
            {
                loginBean=new Login();
                session.setAttribute("login",loginBean);
            }
        }
        catch(Exception ee)
        {
            loginBean=new Login();
            session.setAttribute("login",loginBean);
        }
        String user_name=request.getParameter("user_name").trim(),
               user_key=request.getParameter("user_key").trim();
               boolean ok=loginBean.getSuccess();
               user_name=handleString(user_name);
               user_key=handleString(user_key);
               if(ok==true&&user_name.equals(loginBean.getUser_name()))
               {

                   backNews=user_name+"已经登录了";
                   loginBean.setBackNews(backNews);
                   
                   
                   
               }
               else{
                  String uri="jdbc:odbc:tour";
                  boolean boo=(user_name.length()>0)&&(user_key.length()>0);
                  try{
                      con=DriverManager.getConnection(uri,"","");
                      String condition="select * from user_info where user_name=? and user_key=?";

                      sql=con.prepareStatement(condition);
                      if(boo)
                      {
                          sql.setString(1,user_name);
                          sql.setString(2,user_key);
                          ResultSet rs=sql.executeQuery();
                          boolean m=rs.next();
                          if(m==true)
                          {
                              backNews="登录成功";
                              loginBean.setBackNews(backNews);
                              loginBean.setSuccess(true);
                              loginBean.setUser_name(user_name);
                              
                              
                              
                          }
                          else
                          {
                              backNews="您输入的用户名不存在或密码不匹配!";
                              loginBean.setBackNews(backNews);
                              loginBean.setSuccess(false);
                              loginBean.setUser_name(user_name);
                              loginBean.setUser_key(user_key);
                          }
                      }
                      else{
                          backNews="用户名或密码不能为空!";
                          loginBean.setBackNews(backNews);
                          loginBean.setSuccess(false);
                          loginBean.setUser_name(user_name);
                          loginBean.setUser_key(user_key);
                      }
                      con.close();
                  }
                  catch(SQLException exp)
                  {
                      backNews="";
                      loginBean.setBackNews(backNews);
                      loginBean.setSuccess(false);
                  }
               }

              RequestDispatcher dispatcher=request.getRequestDispatcher
                                            ("showLoginMess.jsp");
              dispatcher.forward(request, response);
}


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        doPost(request,response);
    }
}
