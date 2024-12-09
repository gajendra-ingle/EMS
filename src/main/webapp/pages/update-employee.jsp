<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Search and Update Employee</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #f8f9fa;
}

.form-container {
	max-width: 600px;
	margin: 50px auto;
	padding: 20px;
	border: 1px solid #dee2e6;
	border-radius: 10px;
	background-color: #ffffff;
	box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
}

.form-header {
	text-align: center;
	margin-bottom: 20px;
	color: #343a40;
}
</style>
</head>
<body>
	<!-- Include Navigation Menu -->
	<jsp:include page="menu.jsp" />

	<!-- Display Message (Error or Success) -->
	<c:if test="${not empty msg}">
		<div id="alert-msg" class="alert text-center" role="alert">${msg}</div>
	</c:if>

	<div class="form-container">
		<h2 class="form-header">Search and Update Employee</h2>
		<form action="/search-or-update-employee" method="get">
			<!-- Employee ID Search -->
			<div class="mb-3">
				<label for="employeeId" class="form-label">Employee ID</label>
				<input type="text" class="form-control" id="employeeId" name="employeeId" value="${employee != null ? employee.employeeId : ''}" required>
			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-primary">Search Employee</button>
			</div>
		</form>

		<!-- If Employee is Found, Show Update Form -->
		<c:if test="${not empty employee}">
			<form action="/update-employee" method="post">
				<input type="hidden" name="employeeId" value="${employee.employeeId}"/>

				<div class="mb-3">
					<label for="employeeName" class="form-label">Employee Name</label>
					<input type="text" class="form-control" id="employeeName" name="employeeName" value="${employee.employeeName}" required>
				</div>
				
				<div class="mb-3">
					<label for="department" class="form-label">Department</label>
					<input type="text" class="form-control" id="department" name="department" value="${employee.department}" required>
				</div>
				
				<div class="mb-3">
					<label for="salary" class="form-label">Salary</label>
					<input type="number" class="form-control" id="salary" name="salary" value="${employee.salary}" required>
				</div>
				
				<div class="text-center">
					<button type="submit" class="btn btn-success">Update Employee</button>
				</div>
			</form>
		</c:if>
	</div>

	<!-- Bootstrap JS -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Auto-hide alert after 3 seconds -->
	<script>
		window.onload = function() {
			var alertMsg = document.getElementById('alert-msg');
			if (alertMsg) {
				setTimeout(function() {
					alertMsg.style.display = 'none';
				}, 2000);
			}
		};
	</script>
</body>
</html>
