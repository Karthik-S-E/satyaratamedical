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
							<input type="hidden" name="patid" value="${t.patient.patid }">
							<input type="hidden" name="id" value="${t.id }">
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Test Name</label>
								<div class="col-sm-8">
									<input type="text" readonly value="${t.testname }" class="form-control">
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Result</label>
								<div class="col-sm-8">
									<input type="text" value="${t.result }" name="result" class="form-control">
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Remarks</label>
								<div class="col-sm-8">
									<input type="text" value="${t.remarks }" name="remarks" class="form-control">
								</div>
							</div>
							
							<input type="submit" value="Update Request" class="btn btn-primary float-right px-4">
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>