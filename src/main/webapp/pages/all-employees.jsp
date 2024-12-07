<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
<title>All Employees</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	margin-top: 50px;
}

.menu-gap {
	margin-bottom: 50px;
}

table {
	margin: auto;
}

tr, th, td {
	text-align: center;
}
</style>
</head>

<body>
	<!-- Include Navigation Menu -->
	<div class="menu-gap">
		<jsp:include page="menu.jsp" />
	</div>

	<h2 class="text-center mb-5">All Employees</h2>
	<table class="table table-bordered table-striped" style="width: 80%;">
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
			<c:forEach items="${employees}" var="employee">
				<tr>
					<td>${employee.employeeId}</td>
					<td>${employee.employeeName}</td>
					<td>${employee.department}</td>
					<td>${employee.salary}</td>
					<td>${employee.joiningDate}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
