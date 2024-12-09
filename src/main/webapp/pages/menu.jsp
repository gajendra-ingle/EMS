<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        
        .nav-div a {
            color: white !important;
            padding: 10px 15px;
            text-decoration: none;
        }
        .nav-div a:hover {
        	border-radius: 5px;
            background-color: #0d6efd; 
            color: #f8f9fa;
        }
       
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <div class="nav-div d-flex justify-content-center align-items-center py-2 bg-dark text-white ">
        <a href="/add-employee" class="mx-2">Add Employee</a>
        <a href="/search-employee" class="mx-2">Search Employee</a>
        <a href="/delete-employee" class="mx-2">Delete Employee</a>
        <a href="/all-employees" class="mx-2">All Employee</a>
        <a href="/search-or-update-employee" class="mx-2">Update Employee</a>
        <a href="/profile/${user.userName}" class="mx-2">Profile</a>
        <a href="/logout" class="mx-2">Logout</a>
    </div>
</body>
</html>
