<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Success</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.welcome-text {
	margin-top: 30px;
	text-align: center;
	font-size: 1.2rem;
}

.custom {
	margin-top: 200px;
}
</style>
</head>
<body>
	<!-- Include Navigation Menu -->
	<jsp:include page="menu.jsp" />

	<!-- Content Section -->
	<div
		class="container d-flex align-items-center justify-content-center flex-column custom">
		<h1 class="text-center" style="color: #007bff;">
			Welcome to the <br> Employee Management
		</h1>
		<p class="welcome-text" style="color: #343a40;">
			This platform empowers you to manage employee details efficiently and
			effortlessly. <br> Explore the various features through the
			navigation menu above.
		</p>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
