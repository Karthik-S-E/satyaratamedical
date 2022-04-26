<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-5 mx-auto mt-2">
				<div class="card shadow">
					<div class="card-header text-center">
						<h5>Add Diagnostic Service</h5>
					</div>
					<div class="card-body">
						<form method="post">
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Diagnostic Service</label>
								<div class="col-sm-8">
									<select name="servicename" required class="form-control">
										<option value="">-- Select Service --</option>
										<option>Clinical diagnosis</option>
										<option>Laboratory diagnosis</option>
										<option>Radiology diagnosis</option>
										<option>Tissue diagnosis</option>
										<option>Principal diagnosis</option>
										<option>Admitting diagnosis</option>
										<option>Differential diagnosis</option>
										<option>Diagnostic criteria</option>
										<option>Prenatal diagnosis</option>
										<option>Dual diagnosis</option>
										<option>Remote diagnosis</option>
										<option>Nursing diagnosis</option>
										<option>Computer-aided diagnosis</option>
										<option>Retrospective diagnosis</option>
										<option>Diagnosis of exclusion</option>
										<option>Diagnosis work done before birth</option>
									</select>
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Diagnostic Center</label>
								<div class="col-sm-8">
									<input type="text" name="centername" required maxlength="10"
										class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Facilities Available</label>
								<div class="col-sm-8">
									<input type="text" name="facilities" required
										class="form-control" />
								</div>
							</div>
							
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Address Line 1</label>
								<div class="col-sm-8">
									<input type="text" name="addline1" required
										class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Address Line 2</label>
								<div class="col-sm-8">
									<input type="text" name="addline2" required
										class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">City</label>
								<div class="col-sm-8">
									<input type="text" name="city" required
										class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">State</label>
								<div class="col-sm-8">
									<input type="text" name="state" required class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Zip</label>
								<div class="col-sm-8">
									<input type="text" name="zip" required
										class="form-control" />
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
								<label class="col-sm-4 col-form-label">Email Id</label>
								<div class="col-sm-8">
									<input type="email" name="email" required
										class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Website</label>
								<div class="col-sm-8">
									<input type="text" name="website" required
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