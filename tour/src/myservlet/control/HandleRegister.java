package myservlet.control;
import mybean.data.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.*;
import java.lang.*;


public class HandleRegister extends HttpServlet {
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
        Register reg=new Register();
        request.setAttribute("register",reg);
        String user_name=request.getParameter("user_name").trim();
        String user_key=request.getParameter("user_key").trim();
        String sex=request.getParameter("sex").trim();
        String email=request.getParameter("email").trim();

        if(user_name==null)
        {
            user_name="";
        }
        if(user_key==null)
        {
            user_key="";
        }
        if(sex==null){sex="";}
        boolean boo=user_name.length()>0&&user_key.length()>0;
        String backNews="";
        try
        {
            con=DriverManager.getConnection("jdbc:odbc:tour","","");
            String insertCondition="insert into user_info values(?,?,?,?)";
            sql=con.prepareStatement(insertCondition);
            if(boo)
            {
                sql.setString(1,handleString(user_name));
                sql.setString(2,handleString(user_key));
                sql.setString(3,handleString(sex));
                sql.setString(4,email);
                int m=sql.executeUpdate();
                if(m!=0)
                {
                    backNews="注册成功！";
                    reg.setBackNews(backNews);
                    reg.setUser_name(handleString(user_name));
                    reg.setUser_key(handleString(user_key));
                    reg.setSex(sex);
                    reg.setEmail(email);
                }
            }
            else
            {
                backNews="信息填写不完整或名字中有非法字符！";
                reg.setBackNews(backNews);
            }
            con.close();
        }
        catch(SQLException exp)
        {
            backNews="该会员名已被使用，请您更换名字"+exp;
            reg.setBackNews(backNews);
        }
        RequestDispatcher dispatcher=request.getRequestDispatcher("showRegisterMess.jsp");
        dispatcher.forward(request,response);
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        doPost(request,response);
    }
}
