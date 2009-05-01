package myservlet.control;
import mybean.data.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.*;
import java.lang.*;

public class HandleManagerLogin extends HttpServlet {
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
        ManagerLogin loginBean=null;
        String backNews="";
        HttpSession session=request.getSession(true);
        try{
            loginBean=(ManagerLogin)session.getAttribute("login");
            if(loginBean==null)
            {
                loginBean=new ManagerLogin();
                session.setAttribute("login",loginBean);
            }
        }
        catch(Exception ee)
        {
            loginBean=new ManagerLogin();
            session.setAttribute("login",loginBean);
        }
        String manager_name=request.getParameter("manager_name").trim(),
               manager_key=request.getParameter("manager_key").trim();
               boolean ok=loginBean.getSuccess();
               manager_name=handleString(manager_name);
               manager_key=handleString(manager_key);
               if(ok==true&&manager_name.equals(loginBean.getManager_name()))
               {

                   backNews=manager_name+"已经登录了";
                   loginBean.setBackNews(backNews);
               }
               else{
                  String uri="jdbc:odbc:tour";
                  boolean boo=(manager_name.length()>0)&&(manager_key.length()>0);
                  try{
                      con=DriverManager.getConnection(uri,"","");
                      String condition="select * from manager_info where manager_name=? and manager_key=?";
                      sql=con.prepareStatement(condition);
                      if(boo)
                      {
                          sql.setString(1,manager_name);
                          sql.setString(2,manager_key);
                          ResultSet rs=sql.executeQuery();
                          boolean m=rs.next();
                          if(m==true)
                          {
                              backNews="登录成功";
                              loginBean.setBackNews(backNews);
                              loginBean.setSuccess(true);
                              loginBean.setManager_name(manager_name);
                          }
                          else
                          {
                              backNews="您输入的用户名不存在或密码不匹配!";
                              loginBean.setBackNews(backNews);
                              loginBean.setSuccess(false);
                              loginBean.setManager_name(manager_name);
                              loginBean.setManager_key(manager_key);
                          }
                      }
                      else{
                          backNews="用户名或密码不能为空!";
                          loginBean.setBackNews(backNews);
                          loginBean.setSuccess(false);
                          loginBean.setManager_name(manager_name);
                          loginBean.setManager_key(manager_key);
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
                                            ("showManagerLogin.jsp");
              dispatcher.forward(request, response);
}


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        doPost(request,response);
    }
}
