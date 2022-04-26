<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<div class="card shadow">
	<div class="card-body">
		<c:if test="${sessionScope.role =='Patient' }">
		<h4  style="border-bottom:2px solid green;" >Welcome ${uname} (Patient) </h4>
		<div class="dashboardmsg mt-4" style="color: rgb(26, 69, 148); text-align: center;"><h2>Book Your Free Appointment today!</h2>
			<button type="button" class="  mt-5 glow-on-hover" style="background: #4E9CAF;"><a href="/bookapt" style="color: white; text-decoration: none;">Book now</a></button>	
			
		</div>	
		
	</c:if>
	<div class="card-body">
		<c:if test="${sessionScope.role =='Doctor' }">
		<h4 style="border-bottom:2px solid green;">Welcome ${uname} (Doctor) </h4>	
	</c:if>
	<div class="card-body">
		<c:if test="${sessionScope.role =='Admin' }">
		<h4 style="border-bottom:2px solid green;">Welcome  Admin Dashboard</h4>	
	</c:if>
	</div>
</div>


<jsp:include page="footer.jsp"></jsp:include>