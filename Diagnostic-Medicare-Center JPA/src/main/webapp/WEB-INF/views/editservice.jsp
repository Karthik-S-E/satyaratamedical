<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-5 mx-auto mt-2">
				<div class="card shadow">
					<div class="card-header text-center">
						<h5>Update Diagnostic Service</h5>
					</div>
					<div class="card-body">
						<form method="post" action="addservice">
							<input type="hidden" value="${ds.dsid }" name="dsid">
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Diagnostic Service</label>
								<div class="col-sm-8">
									<select name="servicename" required class="form-control">
										<option value="">-- Select Service --</option>
										<option ${ds.servicename=='Clinical diagnosis' ? 'selected':'' }>Clinical diagnosis</option>
										<option ${ds.servicename=='Laboratory diagnosis' ? 'selected':'' }>Laboratory diagnosis</option>
										<option ${ds.servicename=='Radiology diagnosis' ? 'selected':'' }>Radiology diagnosis</option>
										<option ${ds.servicename=='Tissue diagnosis' ? 'selected':'' }>Tissue diagnosis</option>
										<option ${ds.servicename=='Principal diagnosis' ? 'selected':'' }>Principal diagnosis</option>
										<option ${ds.servicename=='Admitting diagnosis' ? 'selected':'' }>Admitting diagnosis</option>
										<option ${ds.servicename=='Differential diagnosis' ? 'selected':'' }>Differential diagnosis</option>
										<option ${ds.servicename=='Diagnostic criteria' ? 'selected':'' }>Diagnostic criteria</option>
										<option ${ds.servicename=='Prenatal diagnosis' ? 'selected':'' }>Prenatal diagnosis</option>
										<option ${ds.servicename=='Dual diagnosis' ? 'selected':'' }>Dual diagnosis</option>
										<option ${ds.servicename=='Remote diagnosis' ? 'selected':'' }>Remote diagnosis</option>
										<option ${ds.servicename=='Nursing diagnosis' ? 'selected':'' }>Nursing diagnosis</option>
										<option ${ds.servicename=='Computer-aided diagnosis' ? 'selected':'' }>Computer-aided diagnosis</option>
										<option ${ds.servicename=='Retrospective diagnosis' ? 'selected':'' }>Retrospective diagnosis</option>
										<option ${ds.servicename=='Diagnosis of exclusion' ? 'selected':'' }>Diagnosis of exclusion</option>
										<option ${ds.servicename=='Diagnosis work done before birth' ? 'selected':'' }>Diagnosis work done before birth</option>
									</select>
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Diagnostic Center</label>
								<div class="col-sm-8">
									<input type="text" name="centername" required maxlength="10" value="${ds.centername }"
										class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Facilities Available</label>
								<div class="col-sm-8">
									<input type="text" name="facilities" value="${ds.facilities }" required
										class="form-control" />
								</div>
							</div>
							
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Address Line 1</label>
								<div class="col-sm-8">
									<input type="text" name="addline1" value="${ds.addline1 }" required
										class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Address Line 2</label>
								<div class="col-sm-8">
									<input type="text" name="addline2" value="${ds.addline2 }" required
										class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">City</label>
								<div class="col-sm-8">
									<input type="text" name="city" required value="${ds.city }" 
										class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">State</label>
								<div class="col-sm-8">
									<input type="text" name="state" value="${ds.state }" required class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Zip</label>
								<div class="col-sm-8">
									<input type="text" name="zip" value="${ds.zip }" required
										class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Contact No</label>
								<div class="col-sm-8">
									<input type="text" name="phone" value="${ds.phone }" required maxlength="10"
										class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Email Id</label>
								<div class="col-sm-8">
									<input type="email" name="email" value="${ds.email }" required
										class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Website</label>
								<div class="col-sm-8">
									<input type="text" name="website" value="${ds.website }" required
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