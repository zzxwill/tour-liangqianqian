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
      <tr align="center">
        <td width="404" height="31" align="center"><font color="#FF6600">可预订线路名称</font></td>
        <td width="149"><font color="#FF6600">预订</font></td>
      </tr>
      
      
      
    <%
   request.setCharacterEncoding("gb2312"); 
    %>		
   
   <%
   		Connection con;   
        try{
        	
            con=DriverManager.getConnection("jdbc:odbc:tour");
            Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
            		ResultSet.CONCUR_UPDATABLE);
//            if(boo=true){

 //           String insertCondition ="INSERT INTO board_info(board_title,board_context,board_name,board_time) VALUES(?,?,?,?)";
            String insertCondition ="select * from tour_line_info";

//            ResultSet rs = st.executeQuery("select * from StuScore");

            
//            sql = con.prepareStatement(insertCondition);
            
            ResultSet rs = st.executeQuery(insertCondition);
            while (rs.next()){
            %>
             <tr>
        <td height="27"><font color="#006600">
        <a href="checkLine.jsp?name=<%=rs.getObject("tour_line_name") %>"><%=rs.getObject("tour_line_name") %></a>
        　　　</font>
        
        </td>
        <td align="center"><input type="radio" name="tour_line_name" value=<%=rs.getObject("tour_line_name") %>></td>
      </tr>
            <%
            
       //     	out.println(rs.getObject("tour_line_name"));
           	String tour_line_name=String.valueOf(rs.getObject("tour_line_name"));
           	String tour_line_intro=String.valueOf(rs.getObject("tour_line_intro"));
           	String hot_tour_line=String.valueOf(rs.getObject("hot_tour_line"));
//            	out.println(rs.getObject("tour_line_id"));
//            	out.println(rs.getObject("tour_line_intro"));
         //  	out.println(rs.getObject("hot_tour_line"));
 //           	out.println("<a href=\"/labmanagement/jsp/groupAdmin.jsp\">返回</a>");
 		
 		%>
 
            	<br>
	<%
		}
            con.close();
       }
       catch(Exception e){
    	   out.println("Error!");
       } 
       
     %>
	   <tr>
    <td width="404" height="30" align="center"><a href="showBookLine.jsp?action=<%=request.getSession().getAttribute("name")%>">已预订线路查看与修改</a></td>
    <td><input type="text" name="user_name" value=<%=request.getSession().getAttribute("name")%> > 	</td>
    <td width="149" align="center"><input type="submit" name="Submit" value="我要预订"></td>
  </tr>
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
