<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Course</title>
<style>
	body {
		font-family: Arial, sans-serif;
		background-color: #f2f2f2;
	}
	
	.container {
		width: 400px;
		margin: 0 auto;
		margin-top: 40px;
		background-color: #fff;
		padding: 20px;
		border-radius: 5px;
		box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
		animation: fadeIn 1s ease-in-out;
	}
	
	h1 {
		text-align: center;
		color: green;
		margin-bottom: 30px;
	}
	
	form {
		display: flex;
		flex-direction: column;
	}
	
	input[type="text"],
	input[type="number"] {
		padding: 10px;
		margin-bottom: 15px;
		border: 1px solid #ccc;
		border-radius: 3px;
	}
	
	button {
		padding: 10px 20px;
		background-color: #4CAF50;
		border: none;
		color: #fff;
		font-weight: bold;
		cursor: pointer;
		margin-bottom: 10px;
	}
	
	button[type="reset"] {
		background-color: #ccc;
	}
	
	a {
		text-align: center;
		margin-top: 10px;
		text-decoration: none;
		color: #666;
		animation: slideIn 1s ease-in-out;
	}
	
	a:hover {
		color: #000;
	}
	
	.success-message {
		color: green;
		text-align: center;
		margin-bottom: 10px;
	}
	
	.error-message {
		color: red;
		text-align: center;
		margin-bottom: 10px;
	}
	
	@keyframes fadeIn {
		0% {
			opacity: 0;
		}
		100% {
			opacity: 1;
		}
	}
	
	@keyframes slideIn {
		0% {
			transform: translateY(-50px);
			opacity: 0;
		}
		100% {
			transform: translateY(0);
			opacity: 1;
		}
	}
</style>
</head>
<body>
	<div class="container">
		<h1>Add Course</h1>
		
		<div class="success-message">${success}</div>
		<div class="error-message">${fail}</div>
		
		<form action="/admin/course" method="post">
			Course Name: <input type="text" name="name">
			Course Fee: <input type="text" name="fee">
			Course Duration: <input type="number" name="duration">
			
			<button>Add</button>
			<button type="reset">Cancel</button>
			
		</form>
		
		<a href="/AdminHome.jsp"><button>Back</button></a>
	</div>
</body>
</html>
