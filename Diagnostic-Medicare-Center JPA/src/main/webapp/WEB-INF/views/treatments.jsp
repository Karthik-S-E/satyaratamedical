<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<div class="card shadow">
	<div class="card-body">
		<h4 class="p-2" style="border-bottom:2px solid green;">Treatments</h4>
		<c:if test="${msg ne null }">
		<div class="alert text-success font-weight-bold">${msg }</div>
		</c:if>
		<table class="table table-bordered table-sm">
			<thead>
				<tr>
					<th>Appointment Id</th>
					<th>Appointment Date</th>
					<th>Patient Id</th>
					<th>Patient Name</th>
					<th>Date of Birth</th>
					<th>Address</th>
					<th>Gender</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="u" items="${list }">
					<tr>
						<td>${u.apptid }</td>
						<td>${u.date } ${u.time }</td>
						<td>${u.patient.patid }</td>
						<td>${u.patient.fname } ${u.patient.lname }</td>
						<td>${u.patient.dob }</td>
						<td>${u.patient.address }</td>
						<td>${u.patient.gender }</td>
						<td><a href="tdetails/${u.apptid}" class="btn btn-primary btn-sm">Treatment Details</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>	
	</div>
</div>


<jsp:include page="footer.jsp"></jsp:include>