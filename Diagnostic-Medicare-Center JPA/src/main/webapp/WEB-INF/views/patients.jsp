<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<div class="card shadow">
	<div class="card-body">
		<c:if test="${sessionScope.role =='Admin' }">
	<button data-target="#add" data-toggle="modal" class="btn btn-sm btn-primary float-right">Add New</button>
</c:if>
		<h4 class="p-2" style="border-bottom:2px solid green;">Patients List</h4>
		<c:if test="${msg ne null }">
		<div class="alert text-success font-weight-bold">${msg }</div>
		</c:if>
		<table class="table table-bordered table-sm">
			<thead>
				<c:if test="${sessionScope.role =='Admin' }">
					<tr>
						<th>Patient Id</th>
						<th>Patient Name</th>
						<th>Password</th> 
						<th>Date of Birth</th>
						<th>Address</th>
						<th>Gender</th>
						
					</tr>
	</c:if>
	<c:if test="${sessionScope.role =='Doctor' }">
		<tr>
			<th>Patient Id</th>
			<th>Patient Name</th>
			<th>Date of Birth</th>
			<th>Address</th>
			<th>Gender</th>
		</tr>
</c:if>
			
			</thead>
			<tbody>
				<c:forEach var="u" items="${users }">
					<tr>
						<td>${u.patid }</td>
						<td>${u.fname } ${u.lname }</td>
						<td>${u.pwd }</td> 
						<td>${u.dob }</td>
						<td>${u.address }</td>
						<td>${u.gender }</td>
					</tr>
					<c:if test="${sessionScope.role =='Doctor' }">
						<tr>
							<td>${u.patid }</td>
							<td>${u.fname } ${u.lname }</td>
							<td>${u.dob }</td>
							<td>${u.address }</td>
							<td>${u.gender }</td>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>	
	</div>
</div>
<div class="modal" id="add">
	<div class="modal-dialog">
		<div class="modal-content">
			<form method="post">
			<div class="modal-header">
				<h5>Patient Register</h5>
			</div>
			<div class="modal-body">
			<div class="form-row">
				<label class="col-sm-4 col-form-label">First Name</label>
				<div class="col-sm-8">
					<input type="text" name="fname" required class="form-control form-control-sm" />
				</div>
			</div>
			<div class="form-row">
				<label class="col-sm-4 col-form-label">Last Name</label>
				<div class="col-sm-8">
					<input type="text" name="lname" required class="form-control form-control-sm" />
				</div>
			</div>
			<div class="form-row">
				<label class="col-sm-4 col-form-label">Contact No</label>
				<div class="col-sm-8">
					<input type="text" name="phone" required maxlength="10" pattern="[6-9][0-9]{9,9}"
						class="form-control form-control-sm" />
				</div>
			</div>
			<div class="form-row">
				<label class="col-sm-4 col-form-label">Address</label>
				<div class="col-sm-8">
					<input type="text" name="address" required
						class="form-control form-control-sm" />
				</div>
			</div>
			<div class="form-row">
				<label class="col-sm-4 col-form-label">Date of Birth</label>
				<div class="col-sm-8">
					<input type="date" name="dob" required class="form-control form-control-sm" />
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
				<label class="col-sm-4 col-form-label">Patient ID</label>
				<div class="col-sm-8">
					<input type="text" name="patid" readonly="true" value="${patid }" class="form-control form-control-sm" />
				</div>
			</div>
			<div class="form-row">
				<label class="col-sm-4 col-form-label">Password</label>
				<div class="col-sm-8">
					<input type="password" name="pwd" required class="form-control form-control-sm" />
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