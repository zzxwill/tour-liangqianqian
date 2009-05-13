<%@ page contentType="text/html; charset=GB2312" %>
<%@page import="java.sql.*;"  %>
<html>
<body>
<%
//	String user=request.getParameter("");
 %>
<table width="760" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td colspan="3"><jsp:include page="top.jsp"/></td>
  </tr>
  <tr>
    <td width="207"><jsp:include page="left_1.jsp"/></td>
    <td height="116" colspan="2" >
    <form action="handlebookline" method="post">
    <table width="553" height="183" border="0" cellpadding="0" cellspacing="0" background="images/bg6.jpg">
      
      
    
      
    <%
   request.setCharacterEncoding("gb2312"); 
   response.setCharacterEncoding("gb2312"); 
   
   String tour_line_name=request.getParameter("name");
   byte bb[]=tour_line_name.getBytes("iso-8859-1");
            tour_line_name=new String(bb);
   		Connection con;   
        try{
        	
            con=DriverManager.getConnection("jdbc:odbc:tour");
            Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
            		ResultSet.CONCUR_UPDATABLE);
//            if(boo=true){

 //           String insertCondition ="INSERT INTO board_info(board_title,board_context,board_name,board_time) VALUES(?,?,?,?)";
            String insertCondition ="select * from tour_line_info where tour_line_name='"+tour_line_name+"'";

//            ResultSet rs = st.executeQuery("select * from StuScore");

            
//            sql = con.prepareStatement(insertCondition);
            
            ResultSet rs = st.executeQuery(insertCondition);
            %>
             <tr>
            <td>旅游线路</td><td>人气很高</td><td>线路介绍</td></tr>
            <%
            while (rs.next()){
 //           	out.println(rs.getObject("tour_line_name"));
//           	String tour_line_name=String.valueOf(rs.getObject("tour_line_name"));
 //          	String tour_line_intro=String.valueOf();
 //          	String hot_tour_line=String.valueOf();
            out.println("<tr><td>"+rs.getObject("tour_line_name")+"</td>");
            out.println("<td>"+rs.getObject("hot_tour_line")+"</td><td>");
            out.println(rs.getObject("tour_line_intro")+"</td></tr>");
            		
			}
            con.close();
       }
       catch(Exception e){
    	   out.println("Error!");
       } 
       
     %>
	 
    </table> </form>
    
    <table border="0" align="center" cellpadding="0" cellspacing="0" width="100%" >
   
  </table>
    
    
    
    
    
    
    </table>
    
    
    
    
    
    
    
    
    
    
	<table width="760" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="760" height="27" align="center" bgcolor="#71AD23"><span class="style9"><font color="#FFFFFF">制作人：中华女子学院05级计算机系 梁倩倩</font></span></td>
  </tr>
</table>
</body>
</html>
