
<%@page import="java.sql.*"%>
<link href="CSS/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
<link href="CSS/bootstrap.min.css" rel="stylesheet">
	<html>
	<body>
	 <div class="dvv">
            <label class="lamsg">Edit Employee Form</label>
            </div>
    <%
        String eid=request.getParameter("eid");
        
        PreparedStatement ps=(PreparedStatement)application.getAttribute("psselect");
        ps.setString(1,eid);
        ResultSet rst=ps.executeQuery();
        rst.next();

	    	  %>
	   <div class="container">
      <div class='card col-md-9 mx-auto'>
        <div class="card-body">
        <form action="confirmedit.jsp">
          <div class="row">
            <div class='form-group col-md-10' color="red">
              <label for="eid">Employee Id</label><span>*</span>
              <input type="text" id="eid" name="neweid" value="<%=eid%>" class="form-control" readonly color="red">
            </div>
         </div>
          <div class="row">
            <div class='form-group col-md-5'>
              <label for="firstname">Edit First Name</label><span>*</span>
              <input type="text" value="<%=rst.getString(2)%>" id="firstname" name="newfirstname" class="form-control" required>
            </div>
            <div class='form-group col-md-5'>
              <label for="lastname">Edit Last Name</label><span>*</span>
              <input type="text" value="<%=rst.getString(3)%>" id="lastname" name="newlastname" class="form-control" required>
            </div>
         </div>
          <div class="row">
            <div class='form-group col-md-5'>
              <label for="phone">Edit Phone No</label><span>*</span>
              <input type="text" value="<%=rst.getString(4)%>" id="phone" name="newphone" class="form-control" required>
            </div>
            <div class='form-group col-md-5'>
              <label for="email">Edit Email Id</label><span>*</span>
              <input type="text" value="<%=rst.getString(5)%>" id="email" name="newemail" class="form-control" required>
            </div>
         </div>
          <div class="row">
            <div class='form-group col-md-5'>
              <label for="dept">Edit Department</label><span>*</span>
              <input type="text" value="<%=rst.getString(6)%>" id="dept" name="newdept" class="form-control" required>
            </div>
            <div class='form-group col-md-5'>
              <label for="sal">Edit Salary</label><span>*</span>
              <input type="text" value="<%=rst.getString(7)%>" id="sal" name="newsal" class="form-control" required>
            </div>
         </div>
         <div class="row">
            <div class='form-group col-md-10'>
              <button class='btn btn-primary'>Confirm Edit</button>
               <input type="button" class='btn btn-secondary' value="Cancel" onclick='history.back()'>
            </div> 
          </div> 
        </form>
        </div>
      </div>
    </div>				
	  
    </body>
	</body>
	</html>