<%@page import="java.sql.*"%>
<link href="CSS/style.css" rel="stylesheet">

<html>
<body>
      <%
                  String eid=request.getParameter("eid");
                  String fname=request.getParameter("firstname");
                  String lname=request.getParameter("lastname");
                  String phoneno=request.getParameter("phone");
                  String emailid=request.getParameter("email");
                  String department=request.getParameter("dept");
                  String salary=request.getParameter("sal");
                
                       
            	    	PreparedStatement ps1=(PreparedStatement)application.getAttribute("select");
            	    	ps1.setString(1,eid);
            	    	ResultSet rst=ps1.executeQuery();
            	    	if(rst.next())
            	    	{
      %>
	    		  <%@ include file="add.jsp" %>
	              <div class="dvv">
	              <label style='color:red'>Employee Id <%=eid%> is already exist</label>
	               </div>
	    		<% 
	    	}
	    	else
	    	{
	    		PreparedStatement ps=(PreparedStatement)application.getAttribute("insert");
		    	ps.setString(1,eid);  
		    	ps.setString(2,fname);  
		    	ps.setString(3,lname);  
		    	ps.setString(4,phoneno);  
		    	ps.setString(5,emailid);  
		    	ps.setString(6,department);  
		    	ps.setString(7,salary);
		    	ps.executeUpdate();
		    	response.sendRedirect("list.jsp");
	    	}
             %>
       
</body>
</html>        