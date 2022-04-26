<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<div class="card shadow">
	<div class="card-body">
		<h4 class="p-2" style="border-bottom:2px solid green;">Treatment History</h4>
		<c:if test="${msg ne null }">
		<div class="alert text-success font-weight-bold">${msg }</div>
		</c:if>
		<table class="table table-bordered table-sm">
			<thead>
				<tr>
					<c:if test="${sessionScope.role =='Admin' || sessionScope.role =='Doctor' }">
					<th>Treatment Id</th>
					<th>Appointment Id</th>
					<th>Patient Name</th>
					<th>Doctor Name</th>
					<th>Symptoms</th>
					<th>Diagnosis</th>
					<th>Diet</th>
					<th>View</th>
				</c:if>
				<c:if test="${sessionScope.role =='Doctor' }">
					<th>Treatment Id</th>
					<th>Appointment Id</th>
					<th>Patient Name</th>
					<th>Symptoms</th>
					<th>Diagnosis</th>
					<th>Diet</th>
					<th>View</th>
				</c:if>
				<c:if test="${sessionScope.role =='Patient'}">
					<th>Treatment Id</th>
					<th>Appointment Id</th>
					<th>Doctor Name</th>
					<th>Symptoms</th>
					<th>Diagnosis</th>
					<th>Diet</th>
					<th>View</th>
				</c:if>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="u" items="${list }">
					<tr>
						<td>${u.id }</td>
						<td>${u.appointment.apptid }</td>
						<td>${u.patient.fname } ${u.patient.lname }</td>
						<td>${u.doctor.fname } ${u.doctor.lname }</td>
						<td>${u.symptoms }</td>
						<td>${u.diagnosis }</td>
						<td>${u.diet }</td>
						<td>
						<a href="/treatdetails/${u.appointment.apptid }" class="btn btn-primary btn-sm">View Details</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>	
	</div>
</div>


<jsp:include page="footer.jsp"></jsp:include>