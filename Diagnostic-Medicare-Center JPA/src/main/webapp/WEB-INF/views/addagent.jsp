<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-5 mx-auto mt-2">
				<div class="card shadow">
					<div class="card-header text-center">
						<h5>Create Agent</h5>
					</div>
					<div class="card-body">
						<form method="post">
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Agent Name</label>
								<div class="col-sm-8">
									<input type="text" name="name" required class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Contact No</label>
								<div class="col-sm-8">
									<input type="text" name="phone" required maxlength="10"
										class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Gender</label>
								<div class="col-sm-8">
									<select name="gender" required class="form-control">
										<option value="">-- select Gender --</option>
										<option value="Male">Male</option>
										<option value="Female">Female</option>
									</select>
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Address</label>
								<div class="col-sm-8">
									<input type="text" name="address" required
										class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Date of Birth</label>
								<div class="col-sm-8">
									<input type="date" name="dob" required class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Agent ID</label>
								<div class="col-sm-8">
									<input type="text" name="agentid" readonly="true" value="${agentid }" class="form-control" />
								</div>
							</div>
							
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Password</label>
								<div class="col-sm-8">
									<input type="password" name="pwd" required class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Email Id</label>
								<div class="col-sm-8">
									<input type="email" name="email" required
										class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Bank Name</label>
								<div class="col-sm-8">
									<input type="text" name="bank" required
										class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Account No</label>
								<div class="col-sm-8">
									<input type="text" name="accno" required
										class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">IFSC Code</label>
								<div class="col-sm-8">
									<input type="text" name="ifsc" required
										class="form-control" />
								</div>
							</div>
							
							<input type="submit" value="Submit"
								class="btn btn-primary float-right px-4">
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>