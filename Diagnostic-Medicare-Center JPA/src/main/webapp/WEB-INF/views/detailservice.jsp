<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-5 mx-auto mt-2">
				<div class="card shadow">
					<div class="card-header text-center">
						<h5>Diagnostic Service</h5>
					</div>
					<div class="card-body">
							<div class="form-group form-row">
								<label class="col-sm-4">Diagnostic Service</label>
								<div class="col-sm-8">
									${ ds.servicename }
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4">Diagnostic Center</label>
								<div class="col-sm-8">
									${ds.centername }
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4">Facilities Available</label>
								<div class="col-sm-8">
									${ds.facilities }
								</div>
							</div>
							
							<div class="form-group form-row">
								<label class="col-sm-4">Address</label>
								<div class="col-sm-8">
									${ds.addline1 } ${ds.addline2 }
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4">City</label>
								<div class="col-sm-8">
									${ds.city }
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4">State</label>
								<div class="col-sm-8">
									${ds.state }
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4">Zip</label>
								<div class="col-sm-8">
									${ds.zip }
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4">Contact No</label>
								<div class="col-sm-8">
									${ds.phone }
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4">Email Id</label>
								<div class="col-sm-8">
									${ds.email }
								</div>
							</div>
							<div class="form-group form-row">
								<label class="col-sm-4">Website</label>
								<div class="col-sm-8">
									${ds.website }
								</div>
							</div>
							<a href="/viewdocs?dsname=${ds.servicename }" class="btn btn-primary">View Doctors</a>

					</div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>