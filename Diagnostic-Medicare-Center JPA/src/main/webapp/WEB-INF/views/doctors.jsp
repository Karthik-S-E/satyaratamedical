<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<div class="card shadow">
	<div class="card-body">
	<button data-target="#add" data-toggle="modal" class="btn btn-sm btn-primary float-right">Add New</button>
		<h4 class="p-2" style="border-bottom:2px solid green;">Doctors List</h4>
		<c:if test="${msg ne null }">
			<div class="alert text-success font-weight-bold">${msg }</div>
		</c:if>
		<table class="table table-bordered table-sm">
			<thead>
				<tr>
					<th>Doctor Id</th>
					<th>Doctor Name</th>
					<th>Password</th>
					<th>Date of Birth</th>
					<th>Address</th>
					<th>Speciality</th>
					<th>Service</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="u" items="${users }">
					<tr>
						<td>${u.docid }</td>
						<td>${u.fname } ${u.lname }</td>
						<td>${u.pwd }</td>
						<td>${u.dob }</td>
						<td>${u.address }</td>
						<td>${u.speciality }</td>
						<td>${u.diagservice }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>	
	</div>
</div>

<div class="modal" id="add">
	<div class="modal-dialog">
		<div class="modal-content">
			<form method="post" action="registerdoc">
			<div class="modal-header">
			<h5>Doctor Register Screen</h5>
			</div>
			<div class="modal-body">
				<div class="form-row">
					<label class="col-sm-4 col-form-label">First Name</label>
					<div class="col-sm-8">
						<input type="text" required name="fname" class="form-control form-control-sm" />
					</div>
				</div>
				<div class="form-row">
					<label  class="col-sm-4 col-form-label">Last Name</label>
					<div class="col-sm-8">
						<input type="text" required name="lname" class="form-control form-control-sm" />
					</div>
				</div>
				<div class="form-row">
					<label class="col-sm-4 col-form-label">Contact No</label>
					<div class="col-sm-8">
						<input type="text" pattern="[0-9]{10,10}" required name="phone" maxlength="10"
							class="form-control form-control-sm" />
					</div>
				</div>
				<div class="form-row">
					<label class="col-sm-4 col-form-label">Address</label>
					<div class="col-sm-8">
						<input type="text" required name="address"
							class="form-control form-control-sm" />
					</div>
				</div>
				<div class="form-row">
					<label class="col-sm-4 col-form-label">Qualification</label>
					<div class="col-sm-8">
						<input type="text" required name="qualification"
							class="form-control form-control-sm" />
					</div>
				</div>
				<div class="form-row">
					<label class="col-sm-4 col-form-label">Speciality</label>
					<div class="col-sm-8">
						<input type="text" required name="speciality"
							class="form-control form-control-sm" />
					</div>
				</div>
				<div class="form-row">
					<label class="col-sm-4 col-form-label">Date of Birth</label>
					<div class="col-sm-8">
						<input type="date" required name="dob" class="form-control form-control-sm" />
					</div>
				</div>
				<div class="form-row">
					<label class="col-sm-4 col-form-label">Diagnostic Service</label>
					<div class="col-sm-8">
						<select name="diagservice" required class="form-control form-control-sm">
							<option value="">-- select Service --</option>
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
				<div class="form-row">
					<label class="col-sm-4 col-form-label">Gender</label>
					<div class="col-sm-8">
						<select name="gender" required class="form-control form-control-sm">
							<option value="">-- select Gender --</option>
							<option value="Male">Male</option>
							<option value="Female">Female</option>
						</select>
					</div>
				</div>
				
				<div class="form-row">
					<label class="col-sm-4 col-form-label">Doctor ID</label>
					<div class="col-sm-8">
						<input type="text" name="docid" readonly value="${docid }" class="form-control form-control-sm" />
					</div>
				</div>
				<div class="form-row">
					<label  class="col-sm-4 col-form-label">Password</label>
					<div class="col-sm-8">
						<input type="password" required name="pwd" class="form-control form-control-sm" />
					</div>
				</div>
							
							

			</div>
			<div class="modal-footer">
			<input type="submit" value="Register"
								class="btn btn-primary btn-sm float-right">
								</div>
						</form>
		</div>
	</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>