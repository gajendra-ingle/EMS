<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Welcome Page</title>
<style>
body {
	background: linear-gradient(135deg, #662d91, #f37d71);
	font-family: 'Arial', sans-serif;
	margin: 0;
	padding: 0;
	height: 100vh;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	color: white;
	text-align: center;
}

h1 {
	font-size: 3em;
	margin: 0 0 20px 0;
	font-weight: bold;
}

.btn {
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 20px;
	margin-top: 30px;
}

button {
	padding: 12px 25px;
	font-size: 1.1em;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 8px;
	cursor: pointer;
	transition: background-color 0.3s, transform 0.2s ease-in-out;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
}

button:hover {
	background-color: #45a049;
	transform: translateY(-2px);
}

button:active {
	transform: translateY(0);
}

.btn-register {
	background-color: #008CBA;
}

.btn-register:hover {
	background-color: #0077b3;
}

.btn-login {
	background-color: #f44336;
}

.btn-login:hover {
	background-color: #e63946;
}
</style>
</head>

<body>

	<div class="welcome-container">
		<h1>
			Welcome to <br> Employee Management System
		</h1>
	</div>

	<div class="btn">
		<button class="btn-register" type="button"
			onclick="location.href='/pages/register.jsp'">Register</button>
		<button class="btn-login" type="button"
			onclick="location.href='/pages/login.jsp'">Login</button>
	</div>

</body>

</html>
