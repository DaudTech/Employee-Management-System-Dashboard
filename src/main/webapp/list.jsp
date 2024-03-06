<%@page import="java.sql.*"%>
<link href="CSS/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
<link href="CSS/bootstrap.min.css" rel="stylesheet">
<html>
       <body>
    <%
    


        	    Statement st=(Statement)application.getAttribute("list");
            	ResultSet rst=st.executeQuery("select * from employeedetails");
    %>
            <div class="dvv">
            <label class="lamsg">Employee Dashboard</label>
            </div>
	    	<div class="container">
	    	<a href="add.jsp" class='fa fa-user-plus'>Add Employee</a>
	    	 <div class="card">
	    	  <div class="card-body">
	    	   <div class="table">
	    	     <table class="table table-hover">
	    	     <thead>
	    	     <tr>
  	      	        <th>Employee id</th><th>First name</th><th>Last name</th>
  	      	        <th>Phone number</th><th>Email Id</th><th>Department</th><th>Salary</th>
  	      	        <th>Action</th>
  	            </tr>
	    	     </thead>
	    	     <tbody>
	    	      <%
	    	      while(rst.next())
	    	      {
	    	    	  String eid=rst.getString(1);
	    	    	  %>
	    	    	  <tr>
	    	    	  <td><%=eid%></td>
	    	    	  <td><%=rst.getString(2)%></td>
	    	    	  <td><%=rst.getString(3)%></td>
	    	    	  <td><%=rst.getString(4)%></td>
	    	    	  <td><%=rst.getString(5)%></td>
	    	    	  <td><%=rst.getString(6)%></td>
	    	    	  <td><%=rst.getString(7)%></td>
	    	    	  <td>
	    	    	  <a href="update.jsp?eid=<%=eid%>"><i class='fa fa-edit'>Edit|</i></a>
	    	    	  <a href="confirmdelete.jsp?eid=<%=eid%>" style='color:red' onclick="return confirm('Are you sure to delete')"><i class='fa fa-trash-alt'>Delete</i></a>
	    	    	  </td>
	    	    	  </tr>
	    	    	  <%
	    	      }
	    	      %>
	    	     </tbody>
	    	     </table>
	    	    </div>
	    	   </div>
	    	  </div>
	    	 </div>  
    </body>
</html>