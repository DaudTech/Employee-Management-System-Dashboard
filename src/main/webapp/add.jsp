
<link href="CSS/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
<link href="CSS/bootstrap.min.css" rel="stylesheet">
<html>
	<body>
	 <div class="dvv">
            <label class="lamsg">Add Employee Form</label>
            </div>
	<div class="container">
      <div class='card col-md-9 mx-auto'>
        <div class="card-body">
        <form action="save.jsp">
          <div class="row">
            <div class='form-group col-md-10'>
              <label for="eid">Enter Employee Id</label><span>*</span>
              <input type="text" id="eid" name="eid" class="form-control" required>
            </div>
         </div>
          <div class="row">
            <div class='form-group col-md-5'>
              <label for="firstname">Enter First Name</label><span>*</span>
              <input type="text" id="firstname" name="firstname" class="form-control" required>
            </div>
            <div class='form-group col-md-5'>
              <label for="lastname">Enter Last Name</label><span>*</span>
              <input type="text" id="lastname" name="lastname" class="form-control" required>
            </div>
         </div>
          <div class="row">
            <div class='form-group col-md-5'>
              <label for="phone">Enter Phone No</label><span>*</span>
              <input type="text" id="phone" name="phone" class="form-control" required>
            </div>
            <div class='form-group col-md-5'>
              <label for="email">Enter Email Id</label><span>*</span>
              <input type="text" id="email" name="email" class="form-control" required>
            </div>
         </div>
          <div class="row">
            <div class='form-group col-md-5'>
              <label for="dept">Enter Department</label><span>*</span>
              <input type="text" id="dept" name="dept" class="form-control" required>
            </div>
            <div class='form-group col-md-5'>
              <label for="sal">Enter Salary</label><span>*</span>
              <input type="text" id="sal" name="sal" class="form-control" required>
            </div>
         </div>
         <div class="row">
            <div class='form-group col-md-10'>
              <button class='btn btn-primary'>Save Record</button>
              <input type="button" class='btn btn-secondary' value="Cancel" onclick='history.back()'>
            </div> 
          </div>
        </form>
        </div>
      </div>
    </div>
    </body>
</html>