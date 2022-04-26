<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<div class="card shadow">
	<div class="card-body">
		<c:if test="${sessionScope.role =='Admin' }">
		<a href="/addservice" class="btn btn-primary btn-sm float-right mt-1">Create Diagnostic Service</a>
		</c:if>
		<h4 class="p-2" style="border-bottom:2px solid green;">Diagnostic Services</h4>
		<c:if test="${msg ne null }">
		<div class="alert text-success font-weight-bold">${msg }</div>
		</c:if>
		<table class="table table-bordered table-sm">
			<thead>
				<tr>
					<th>Id</th>
					<th>Service Name</th>
					<th>Center Name</th>
					<th>Facilities</th>
					<th>City</th>
					<th>State</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="s" items="${services }">
					<tr>
					<td>${s.dsid }</td>
					<td>${s.servicename }</td>
					<td>${s.centername }</td>
					<td>${s.facilities }</td>
					<td>${s.city }</td>
					<td>${s.state }</td>
					<td>
					<c:if test="${sessionScope.role =='Admin' }">
					<a href="editds?dsid=${s.dsid }" class="btn btn-primary btn-sm">Edit</a>
					</c:if>
					<c:if test="${sessionScope.role =='Patient' }">
					<a href="detailds?dsid=${s.dsid }" class="btn btn-primary btn-sm">Details</a>
					</c:if>
					</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>	
	</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>