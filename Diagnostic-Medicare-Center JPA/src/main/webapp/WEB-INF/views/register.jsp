<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Screen</title>
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/jquery-3.4.1.js"></script>
</head>
<body>
	<div class="jumbotron text-center p-3 mb-0 bg-danger text-white rounded-0">
		<h5>Diagnostic Medicare Center</h5>
		<h6>Register Screen</h6>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-5 mx-auto mt-2">
				<div class="card shadow">
					<div class="card-header text-center bg-success text-white">
						<h5>Patient Register Screen</h5>
					</div>
					<div class="card-body">					
						<form method="post" action="registerpat">
							<div class="form-row">
								<label class="col-sm-4 col-form-label">First Name</label>
								<div class="col-sm-8">
									<input type="text" name="fname" required class="form-control form-control-sm" />
								</div>
							</div>
							<div class="form-row">
								<label class="col-sm-4 col-form-label">Last Name</label>
								<div class="col-sm-8">
									<input type="text" name="lname" required class="form-control form-control-sm" />
								</div>
							</div>
							<div class="form-row">
								<label class="col-sm-4 col-form-label">Contact No</label>
								<div class="col-sm-8">
									<input type="text" name="phone" required maxlength="10"
										class="form-control form-control-sm" />
								</div>
							</div>
							<div class="form-row">
								<label class="col-sm-4 col-form-label">Address</label>
								<div class="col-sm-8">
									<input type="text" name="address" required
										class="form-control form-control-sm" />
								</div>
							</div>
							<div class="form-row">
								<label class="col-sm-4 col-form-label">Date of Birth</label>
								<div class="col-sm-8">
									<input type="date" name="dob" required class="form-control form-control-sm" />
								</div>
							</div>
							<div class="form-row">
								<label class="col-sm-4 col-form-label">Patient ID</label>
								<div class="col-sm-8">
									<input type="text" name="patid" readonly="true" value="${patid }" class="form-control form-control-sm" />
								</div>
							</div>
							<div class="form-row">
								<label class="col-sm-4 col-form-label">Password</label>
								<div class="col-sm-8">
									<input type="password" name="pwd" required class="form-control form-control-sm" />
								</div>
							</div>
							<div class="form-row">
								<label class="col-sm-4 col-form-label">Role</label>
								<div class="col-sm-8">
									<select name="gender" required class="form-control form-control-sm">
										<option value="">-- select Gender --</option>
										<option value="Male">Male</option>
										<option value="Female">Female</option>
									</select>
								</div>
							</div>
							<input type="submit" value="Register"
								class="btn btn-primary btn-sm float-right px-4">
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>