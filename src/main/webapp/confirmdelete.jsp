<%@page import="java.sql.*"%>
<html>
<body>
    <%
       String eid=request.getParameter("eid");
        
    	PreparedStatement ps=(PreparedStatement)application.getAttribute("delete");
    	ps.setString(1,eid);
        ps.executeUpdate();
    	response.sendRedirect("list.jsp");
    	%>
       </body>
       </html>