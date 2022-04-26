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
						<form method="post">
						<div class="form-row">
							<div class="col-sm-5">
							<input type="hidden" name="docid" value="${sessionScope.userid }">
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Patient Id</label>
								<div class="col-sm-8">
									<input type="text" value="${ap.patient.patid }" readonly name="patid" class="form-control form-control-sm">
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Patient Name</label>
								<div class="col-sm-8">
									<input type="text" value="${ap.patient.fname } ${ap.patient.lname }" readonly class="form-control form-control-sm">
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Symptoms</label>
								<div class="col-sm-8">
									<input type="text" value="${t.symptoms }" name="symptoms" class="form-control form-control-sm">
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Diagnosis</label>
								<div class="col-sm-8">
									<input type="text" value="${t.diagnosis }" name="diagnosis" class="form-control form-control-sm">
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Recommendations</label>
								<div class="col-sm-8">
									<input type="text" value="${t.recommendations }" name="recommendations" class="form-control form-control-sm">
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Diet</label>
								<div class="col-sm-8">
									<input type="text" value="${t.diet }" name="diet" class="form-control form-control-sm">
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Tests Required</label>
								<div class="col-sm-8">
									<input type="text" value="${t.tests }" name="tests" class="form-control form-control-sm">
								</div>
							</div>
							</div>
							<div class="col-sm-7">
							<h5 class="p-2 border-bottom">Prescriptions</h5>
							<table class="table table-sm">
							<thead>
							<tr>
							<th>Medicine</th>
							<th style="width:100px;">Qty</th>
							<th>Units</th>
							<th style="width:120px;">Times/Day</th>
							<th>
							</tr>
							</thead>
							<tbody>
							<c:forEach begin="0" end="9" step="1" var="i">
							<tr>
								<td>
									<input type="text" list="medicines" name="pres[${i+1 }].mname" value="${pres[i].mname }" class="form-control form-control-sm">
								</td>
								<td>
									<input type="number" name="pres[${i+1 }].qty" value="${pres[i].qty eq null ? 0 : pres[i].qty  }" required class="form-control form-control-sm">
								</td>
								<td>
									<select name="pres[${i+1 }].unit" class="form-control form-control-sm">
										<option ${pres[i].unit eq 'Tablets' ? 'selected':'' }>Tablets</option>
										<option ${pres[i].unit eq 'Drops' ? 'selected':'' }>Drops</option>
										<option ${pres[i].unit eq 'ML' ? 'selected':'' }>ML</option>
									</select>
								</td>
								<td>
									<input type="text" name="pres[${i+1 }].times" value="${pres[i].times }" class="form-control form-control-sm">
								</td>
							</tr>
							</c:forEach>
							</table>
							</tbody>
							</div>
						</div>
							<datalist id="medicines">
								<option>Paracetamol</option>
								<option>Ceradon</option>
								<option>Vicks Action 500</option>
								<option>Glycodin Syrup</option>
								<option>Citrizine</option>
								<option>Ofloxacin 200mg</option>
								<option>DCold Total</option>
								<option>Refresh Tears Eye Drops</option>
								<option>Revital Tablets</option>
							</datalist>							
							<input type="submit" value="Update Request" class="btn btn-primary float-right px-4">
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>