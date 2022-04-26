<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Diagnostic Medicare System</title>
<link rel="stylesheet" href="/css/bootstrap.css">
<script src="/js/jquery-3.4.1.js"></script>
<script src="/js/bootstrap.js"></script>
</head>
<body>
<div class="jumbotron p-3 bg-danger text-white text-center mb-0 rounded-0 border-bottom">
	<h5>Welcome to Diagnostic Medicare System Portal</h5>
</div>
<div class="container-fluid">
<div class="row">
	<div class="col-sm-2 p-0">
		<div class="list-group">
		<c:if test="${sessionScope.role =='Admin' }">
		  <a href="/patients" class="list-group-item list-group-item-action">Patients</a>
		  <a href="/doctors" class="list-group-item list-group-item-action">Doctors</a>
		  <a href="/diagservices" class="list-group-item list-group-item-action">Diagnostic Service</a>
		  <a href="/tests" class="list-group-item list-group-item-action">Update Test Result</a>
	    </c:if>
	    <c:if test="${sessionScope.role =='Doctor' }">
		  <a href="/patients" class="list-group-item list-group-item-action">Patients</a>
		  <a href="/appointments" class="list-group-item list-group-item-action">Appointments</a>
		  <a href="/treatments" class="list-group-item list-group-item-action">Treatments</a>
		  <a href="/tests" class="list-group-item list-group-item-action">Tests</a>
	    </c:if>
	    <c:if test="${sessionScope.role =='Patient' }">
		  <a href="/diagservices" class="list-group-item list-group-item-action">Diagnostic Service</a>
		  <a href="/bookapt" class="list-group-item list-group-item-action">Book Appointment</a>
		  <a href="/myapts" class="list-group-item list-group-item-action">My Appointments</a>
		  <a href="/testrequest" class="list-group-item list-group-item-action">Test Request</a>
		  <a href="/mytests" class="list-group-item list-group-item-action">My Tests</a>
		  <a href="/pathistory" class="list-group-item list-group-item-action">Treatment History</a>
	    </c:if>
		  <a href="/logout" class="list-group-item list-group-item-action">Logout</a>
		</div>
	</div>
	<div class="col-sm-10">