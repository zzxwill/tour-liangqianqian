package myservlet.control;
import mybean.data.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.*;

public class HandleExit extends HttpServlet {
    public void init(ServletConfig config) throws ServletException {
         super.init(config);
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
        HttpSession session=request.getSession(true);
        ManagerLogin login=(ManagerLogin)session.getAttribute("login");
        boolean ok=true;
        if(login==null)
        {
            ok=false;
            response.sendRedirect("manager_login.jsp");
        }
        else if(ok==true)
        {
            continueDoPost(request,response);
        }
    }
    public void continueDoPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
    {
        HttpSession session=request.getSession(true);
        session.invalidate();
        response.sendRedirect("index.jsp");
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
           doPost(request,response);
    }
}
