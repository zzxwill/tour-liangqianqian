<%@ page contentType="text/html;   charset=gb2312"   language="java" %>  
<%@ page pageEncoding="GB2312"%>
<% request.setCharacterEncoding("GB2312"); %> 
<%@page import="java.sql.*;"  %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<body>
<table width="760" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><jsp:include page="top.jsp"/></td>
  </tr>
  <tr>
   
  <table border="0" align="center" cellpadding="0" cellspacing="0" width="100%" height="100%">
   
   <%
   		request.setCharacterEncoding("GB2312");
        response.setCharacterEncoding("GB2312");
  //      PrintWriter out = response.getWriter();
		
		
        String tour_line_name=request.getParameter("tour_line_name");
//        String target="%"+tour_line_name+"%";
       
            
        Connection con;   
        try{
        	
            con=DriverManager.getConnection("jdbc:odbc:tour");
            Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
            		ResultSet.CONCUR_UPDATABLE);
//            if(boo=true){

 //           String insertCondition ="INSERT INTO board_info(board_title,board_context,board_name,board_time) VALUES(?,?,?,?)";
       String insertCondition ="select * from tour_line_info where tour_line_name like  '"+"%"+tour_line_name+"%"+"'";
   //         String insertCondition ="select * from tour_line_info ";
            
            
            ResultSet rs = st.executeQuery(insertCondition);
 //           if(rs.next()==false){
  //          	out.print("没有相应的路线。");
  //          }
            out.println("<table>");
            while (rs.next()){
     //       	String tour_line_name=(String)rs.getObject("tour_line_name");
  //          	out.println("<tr><td>"+rs.getObject("tour_line_name"));
            	out.println("<tr><td>");
            	%>
            	
            	
            	<a 	href="searchresult?tour_line_name=<%=rs.getObject(1) %>"><%=rs.getObject(1) %></a>
            	<%
 //          	out.println("</td><td>"+rs.getObject(2));
  //          	out.println("</td><td>"+""+rs.getObject(3)+"</td></tr>");  
            	out.println("</td></tr>");  
            }
            out.println("</table>");
        }catch(Exception e){
        	out.print("没有相应的路线。");
        	
        };
           
    //    
 // 		out.flush();
  //  	out.close();
    %>
   
  
            	
  </table>
  </tr>
</table>
<table width="760" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="760" height="27" align="center" bgcolor="#71AD23"><span class="style9"><font color="#FFFFFF">制作人：中华女子学院05级计算机系 梁倩倩</font></span></td>
  </tr>
</table>
</body>
</html>
