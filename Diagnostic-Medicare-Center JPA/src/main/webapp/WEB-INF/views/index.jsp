<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Screen</title>
<link rel="stylesheet" href="css/bootstrap.css">
<style>
	body{
		background-image: url("../views//images/patient.jpg");
		background-repeat: no-repeat;
		background-size: cover;
	}
</style>
</head>
<body>
<div class="jumbotron text-center p-3 bg-danger text-white rounded-0">
	<h5>Diagnostic Medicare Center</h5>
	<h6>Login Screen</h6>
</div>
<div class="container-fluid">
	<div class="row">
		<div class="col-sm-3 mx-auto mt-3">
			<div class="card shadow">
				<div class="card-header text-center bg-danger text-white">
					<h5>Login Screen</h5>
				</div>
				<div class="card-body">
					<form method="post" action="validate">
						<div class="form-group">
						<label>User ID</label>
						<input type="text" name="userid" required class="form-control">
						</div>
						<div class="form-group">
						<label>Password</label>
						<input type="password" name="pwd" required class="form-control">
						</div>						
						<a href="register" class="float-left">Not registered</a>
						<input type="submit" value="Log In" class="btn btn-primary float-right px-4">
					</form>
					<div class="clearfix"></div>
					<c:if test="${msg ne null }">
						<div class="alert text-success font-weight-bold">${msg }</div>
					</c:if>
					<c:if test="${error ne null }">
						<div class="alert text-danger font-weight-bold">${error }</div>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>