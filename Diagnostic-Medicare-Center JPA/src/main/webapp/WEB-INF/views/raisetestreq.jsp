<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-5 mx-auto mt-2">
				<div class="card shadow">
					<div class="card-header text-center">
						<h5>Test Request</h5>
					</div>
					<div class="card-body">
						<form method="post">
						<input type="hidden" name="patid" value="${sessionScope.userid }">
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Test Name</label>
								<div class="col-sm-8">
									<select name="testname" required class="form-control">
										<option value="">-- Select Test --</option>
										<option>Blood test</option>
										<option>Eye test</option>
										<option>Ultra Sound</option>
										<option>X-ray</option>
										<option>Blood Pressure</option>
										<option>Sugar Level</option>
									</select>
								</div>
							</div>
							<input type="submit" value="Raise Request"
								class="btn btn-primary float-right px-4">
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>