<%@page import="java.sql.*"%>
<link href="CSS/style.css" rel="stylesheet">
	<html>
	<body>
    <%
        String eid=request.getParameter("neweid");
        String first=request.getParameter("newfirstname");
        String last=request.getParameter("newlastname");
        String phone=request.getParameter("newphone");
        String email=request.getParameter("newemail");
        String dept=request.getParameter("newdept");
        String sal=request.getParameter("newsal");
        
    	PreparedStatement ps=(PreparedStatement)application.getAttribute("edit");
    	ps.setString(1,first);  
    	ps.setString(2,last);  
    	ps.setString(3,phone);  
    	ps.setString(4,email);  
    	ps.setString(5,dept);  
    	ps.setString(6,sal);  
    	ps.setString(7,eid);
    	ps.executeUpdate();
        response.sendRedirect("list.jsp");
    %>
    
	</body>
	</html>