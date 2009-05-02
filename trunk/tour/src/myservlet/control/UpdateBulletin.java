package myservlet.control;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateBulletin extends HttpServlet {

	public UpdateBulletin() {
		super();
	}
	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
	
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
	
    
	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		resp.setContentType("text/html;charset=GB2312;characterEncoding=GB2312");
		PrintWriter out = resp.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		
//		String tour_line_name=String.valueOf(req.getParameter("tour_line_name"));
		String bulletin_title=req.getParameter("bulletin_title");
		String bulletin_context=req.getParameter(" bulletin_context");
		String bulletin_time=req.getParameter("bulletin_timet");
		
		
		
//		resp.sendRedirect("/tour/updateLineDetail.jsp?name=<%=tour_line_name%>&intro=<%=tour_line_intro%>");
		req.setAttribute("bulletin_title", bulletin_title  ); 
		req.setAttribute("bulletin_context", bulletin_context  );
		req.setAttribute("bulletin_time", bulletin_time );
		

        getServletContext().getRequestDispatcher("/updateBulletinDetail.jsp").forward(req,   resp);

		 

		  out.println("</body></html>");

        
            

	}

	
}

	