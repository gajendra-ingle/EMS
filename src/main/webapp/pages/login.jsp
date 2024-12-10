<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background-color: #f0f8ff;
	font-family: 'Arial', sans-serif;
}

.login-container {
	max-width: 400px;
	margin-top: 100px;
	border-radius: 10px;
	background-color: #ffffff;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	padding: 30px;
}

.login-container h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #4c6ef5;
	font-weight: bold;
}

.login-container .form-group {
	margin-bottom: 1.5rem;
}

.login-container .form-control {
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

.login-container p {
	text-align: center;
	font-size: 0.9rem;
}

.login-container a {
	color: #4c6ef5;
	text-decoration: none;
}

.login-container a:hover {
	text-decoration: underline;
}

</style>
</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6 col-lg-4">
				<div class="login-container card shadow-sm">
					<div class="card-body">
						<h2>Login</h2>
						<c:if test="${msg != null}">
							<script>
								alert("${msg}");
							</script>
						</c:if>
						<form action="/login" method="post">
							<div class="form-group">
								<label for="username">Username</label> <input type="text"
									class="form-control" id="username" name="username" required>
							</div>
							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									class="form-control" id="password" name="password" required>
							</div>
							<button type="submit" class="btn btn-primary btn-block">Login</button>
						</form>
						<br>
						<p class="text-center">
							Don't have an account? <a href="/pages/register.jsp">Register
								here</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>