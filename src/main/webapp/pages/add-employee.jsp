<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Employee</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #f8f9fa; /* Light background */
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

	<!-- Display Message -->
	<c:if test="${not empty msg}">
		<div id="alert-msg" class="alert alert-info text-center" role="alert">
			${msg}</div>
	</c:if>

	<!-- Add Employee Form -->
	<div class="form-container">
		<h2 class="form-header">Add Employee</h2>
		<form action="/add-employee" method="post">
			<!-- Employee Name -->
			<div class="mb-3">
				<label for="employeeName" class="form-label">Employee Name</label> <input
					type="text" class="form-control" id="employeeName"
					name="employeeName" required>
			</div>
			<!-- Department -->
			<div class="mb-3">
				<label for="department" class="form-label">Department</label> <input
					type="text" class="form-control" id="department" name="department"
					required>
			</div>
			<!-- Salary -->
			<div class="mb-3">
				<label for="salary" class="form-label">Salary</label> <input
					type="number" class="form-control" id="salary" name="salary"
					step="0.01" required>
			</div>
			<!-- Submit Button -->
			<div class="text-center">
				<button type="submit" class="btn btn-primary">Add Employee</button>
			</div>
		</form>
	</div>

	<!-- Bootstrap JS and dependencies -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Auto-hide alert after 3 seconds -->
	<script>
		window.onload = function() {
			var alertMsg = document.getElementById('alert-msg');
			if (alertMsg) {
				setTimeout(function() {
					alertMsg.style.display = 'none';
				}, 4000);
			}
		};
	</script>
</body>
</html>
