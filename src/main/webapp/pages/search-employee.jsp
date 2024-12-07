<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Include Navigation Menu -->
<jsp:include page="menu.jsp" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Search Employee</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Google Fonts: Roboto -->
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap"
	rel="stylesheet">
<style>
/* Custom font */
body {
	font-family: 'Roboto', sans-serif;
}

.container {
	max-width: 800px;
}

h1 {
	font-weight: 500;
	color: #2c3e50;
}

.form-control {
	border-radius: 0.375rem; /* Rounded corners for input */
}

.btn-primary {
	background-color: #3498db;
	border-color: #3498db;
}

.btn-primary:hover {
	background-color: #2980b9;
	border-color: #2980b9;
}

.table {
	border-radius: 0.375rem; /* Rounded corners for table */
}

.table th, .table td {
	text-align: center;
}

.alert {
	font-size: 1.1rem;
}

.search-form {
	background-color: #f9f9f9;
	padding: 2rem;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}
</style>
</head>
<body>

	<div class="container mt-5">
		<!-- Center the heading and form using flexbox -->
		<div class="text-center mb-4">
			<h1>Search Employee</h1>
		</div>

		<form action="/search-employee" method="get"
			class="d-flex flex-column align-items-center mb-4 search-form">
			<div class="mb-3 w-75">
				<label for="employeeName" class="form-label">Employee Name</label> <input
					type="text" id="employeeName" name="employeeName"
					class="form-control" placeholder="Enter employee name">
			</div>
			<button type="submit" class="btn btn-primary w-50">Search</button>
		</form>

		<!-- Display Search Results -->
		<h2 class="text-center">Search Results:</h2>
		<table class="table table-bordered table-striped mx-auto"
			style="width: 100%;">
			<thead class="table-dark">
				<tr>
					<th>Employee ID</th>
					<th>Employee Name</th>
					<th>Department</th>
					<th>Salary</th>
					<th>Joining Date</th>
				</tr>
			</thead>
			<tbody>


				<tr>
					<td>${employee.employeeId}</td>
					<td>${employee.employeeName}</td>
					<td>${employee.department}</td>
					<td>${employee.salary}</td>
					<td>${employee.joiningDate}</td>
				</tr>

			</tbody>
		</table>

	</div>

</body>
</html>
