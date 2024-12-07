<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration Page</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background-color: #f0f8ff;
	font-family: 'Arial', sans-serif;
}

.registration-container {
	max-width: 400px;
	margin-top: 100px;
	border-radius: 10px;
	background-color: #ffffff;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	padding: 30px;
}

.registration-container h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #4c6ef5;
	font-weight: bold;
}

.registration-container .form-group {
	margin-bottom: 1.5rem;
}

.registration-container .form-control {
	border-radius: 0.25rem;
	box-shadow: none;
}

.btn-primary {
	background-color: #4c6ef5;
	border-color: #4c6ef5;
	font-size: 1.1rem;
	padding: 12px;
	transition: background-color 0.3s, transform 0.2s;
}

.btn-primary:hover {
	background-color: #3a5bb6;
	transform: translateY(-2px);
}

.btn-primary:focus {
	box-shadow: 0 0 0 0.2rem rgba(76, 110, 245, 0.5);
}

.registration-container p {
	text-align: center;
	font-size: 0.9rem;
}

.registration-container a {
	color: #4c6ef5;
	text-decoration: none;
}

.registration-container a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6 col-lg-4">

				<!-- Display Message -->
				<c:if test="${not empty msg}">
					<div id="alert-msg" class="alert alert-info text-center"
						role="alert">${msg}</div>
				</c:if>

				<div class="registration-container card shadow-sm">
					<div class="card-body">
						<h2>Register</h2>
						<form action="/register" method="post">
							<div class="form-group">
								<label for="username">Username</label> <input type="text"
									class="form-control" id="username" name="userName" required>
							</div>

							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									class="form-control" id="password" name="password" required>
							</div>

							<div class="form-group">
								<label for="role">Role</label> <select class="form-control"
									id="role" name="role" required>
									<option value="user">User</option>
									<option value="admin">Admin</option>
								</select>
							</div>

							<button type="submit" class="btn btn-primary btn-block">Register</button>
						</form>
						<br>
						<p class="text-center">
							Already have an account? <a href="/pages/login.jsp">Login
								here</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Auto-hide alert after 3 seconds -->
	<script>
		window.onload = function() {
			var alertMsg = document.getElementById('alert-msg');
			if (alertMsg) {

				setTimeout(function() {
					alertMsg.style.display = 'none';
				}, 3000); // 3000ms = 3 seconds
			}
		};
	</script>

</body>
</html>
