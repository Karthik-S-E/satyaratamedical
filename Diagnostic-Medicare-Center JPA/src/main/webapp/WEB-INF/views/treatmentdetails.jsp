<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12 mx-auto mt-2">
				<div class="card shadow">
					<div class="card-header text-center">
						<h5>Treatment Details</h5>
					</div>
					<div class="card-body">
						<div class="form-row">
							<div class="col-sm-5">
							<div class="form-row">
								<label class="col-sm-4">Treatment Date</label>
								<div class="col-sm-8">
									${t.tdate }
								</div>
							</div>
							<div class="form-row">
								<label class="col-sm-4">Doctor Name</label>
								<div class="col-sm-8">
									${t.doctor.fname } ${t.doctor.lname }
								</div>
							</div>
							<div class="form-row">
								<label class="col-sm-4">Symptoms</label>
								<div class="col-sm-8">
									${t.symptoms }
								</div>
							</div>
							<div class="form-row">
								<label class="col-sm-4">Diagnosis</label>
								<div class="col-sm-8">
									${t.diagnosis }
								</div>
							</div>
							<div class="form-row">
								<label class="col-sm-4">Recommendations</label>
								<div class="col-sm-8">
									${t.recommendations }
								</div>
							</div>
							<div class="form-row">
								<label class="col-sm-4">Diet</label>
								<div class="col-sm-8">
									${t.diet }
								</div>
							</div>
							<div class="form-row">
								<label class="col-sm-4">Tests Required</label>
								<div class="col-sm-8">
									${t.tests }
								</div>
							</div>
							</div>
							<div class="col-sm-5">
							<h5 class="p-2 border-bottom">Prescriptions</h5>
							<table class="table table-sm">
							<thead>
							<tr>
							<th>Medicine</th>
							<th style="width:100px;">Qty</th>
							<th style="width:120px;">Times/Day</th>
							<th>
							</tr>
							</thead>
							<tbody>
							<c:forEach var="p" items="${plist }">
							<tr>
								<td>
									${p.mname }
								</td>
								<td>
									${p.qty }
									${p.unit }
								</td>
								<td>
									${p.times }
								</td>
							</tr>
							</c:forEach>
							</table>
							</tbody>
							</div>
						</div>
														

					</div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>