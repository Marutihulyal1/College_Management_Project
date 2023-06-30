<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<style>
	body {
		font-family: Arial, sans-serif;
		background-color: #f2f2f2;
		margin: 0;
		padding: 0;
	}

	.container {
		max-width: 800px;
		margin: 0 auto;
		padding: 20px;
	}

	h1 {
		color: #333;
	}

	.success {
		color: green;
	}

	.fail {
		color: red;
	}

	button {
		padding: 10px 20px;
		border: none;
		border-radius: 4px;
		background-color: #4285F4;
		color: white;
		font-size: 16px;
		cursor: pointer;
		margin-bottom: 10px;
	}

	button:hover {
		background-color: #2F70ED;
	}

	button:active {
		background-color: #1A47B9;
	}

	.button-container {
		margin-bottom: 20px;
	}

	.button-container::after {
		content: "";
		display: table;
		clear: both;
	}

	.button-container a {
		text-decoration: none;
	}

	.logout-button {
		float: right;
		color: red;
		background-color: orange;
	}

</style>
</head>
<body>
	<div class="container">
		<h1 style="color: green">${success}</h1>
		<h1 style="color: red">${fail}</h1>
		<h1>Admin Home Page</h1>
		<div class="button-container">
			<a href="/AddCourse.jsp"><button>Add Course</button></a>
			<a href="/admin/stream"><button>Add Stream</button></a>
			<a href="/admin/admission"><button>Approve Admission</button></a>
			<a href="/logout"><button class="logout-button">Logout</button></a>
		</div>
	</div>
</body>
</html>
