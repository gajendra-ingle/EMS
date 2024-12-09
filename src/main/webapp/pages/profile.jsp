<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Profile</title>
<!-- Link to Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet">
</head>
<style>
.msg {
	text-align: center;
	color: green;
	font-size: 1.5em;
}
</style>
</head>
<body>
	<!-- Include Navigation Menu -->
	<jsp:include page="menu.jsp" />

	<!-- Display msg in center and green -->
	<div class="msg">${msg}</div>

	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<!-- Profile Form -->
				<div class="card">
					<div class="card-body text-center">
						<i class="fas fa-user profile-logo fa-5x"></i>
						<h3 class="mt-4 text-uppercase font-monospace text-info">User Profile</h3>

						<form action="/updateProfile" method="post">
							<div class="form-group">
								<label for="name">User Name</label>
								 <input type="text"
									class="form-control w-50 mx-auto" id="name" name="userName"
									value="${user.userName}" readonly="readonly">
							</div>

							<div class="form-group">
								<label for="password">Password</label>
								 <input type="password"
									class="form-control w-50 mx-auto" id="password" name="password"
									value="${user.password}" required>
							</div>

							<div class="form-group">
								<label for="role">Role</label> <select
									class="form-control w-50 mx-auto" id="role" name="role">
									<option value="admin" ${user.role == 'admin' ? 'selected' : ''}>Admin</option>
									<option value="user" ${user.role == 'user' ? 'selected' : ''}>User</option>
								</select>
							</div>

							<button type="submit" class="btn btn-primary">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
