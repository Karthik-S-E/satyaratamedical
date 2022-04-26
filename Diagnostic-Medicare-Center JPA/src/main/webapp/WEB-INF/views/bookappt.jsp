<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-5 mx-auto mt-2">
				<div class="card shadow">
					<div class="card-header text-center">
						<h5>Book Appointment</h5>
					</div>
					<div class="card-body">
						<form method="post">
						<input type="hidden" name="patid" value="${sessionScope.userid }">
						<input type="hidden" name="patname" value="${sessionScope.uname }">
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
								<label class="col-sm-4 col-form-label">Doctor</label>
								<div class="col-sm-8">
									<select name="docid" required class="form-control">
										<option value=""> -- Select Doctor -- </option>
										<c:forEach var="d" items="${users }">	
											<option value="${d.docid }">Dr. ${d.fname } ${d.lname }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Date</label>
								<div class="col-sm-8">
									<input type="date" name="date" required class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Time</label>
								<div class="col-sm-8">
									<input type="time" name="time" required
										class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Remarks</label>
								<div class="col-sm-8">
									<input type="text" name="remarks" required
										class="form-control" />
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Medical Conditions</label>
								<div class="col-sm-8">
									<input type="text" name="conditions" required
										class="form-control" />
								</div>
							</div>
							<input type="submit" value="Book Appointment"
								class="btn btn-primary float-right px-4">
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>