<%@page import="org.jsp.jesa5.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Home</title>
<style>
	body {
		font-family: Arial, sans-serif;
		background-color: #f2f2f2;
	}
	
	.container {
		width: 400px;
		margin: 0 auto;
		margin-top: 50px;
		background-color: #fff;
		padding: 20px;
		border-radius: 5px;
		box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
		animation: fadeIn 1s ease-in-out;
	}
	
	h1 {
		text-align: center;
		margin-bottom: 30px;
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
	
	button {
		display: block;
		margin: 10px auto;
		padding: 10px 20px;
		background-color: orange;
		border: none;
		color: #fff;
		font-weight: bold;
		cursor: pointer;
	}
	
	a {
		display: block;
		margin: 10px auto;
		text-align: center;
		text-decoration: none;
		color: #666;
		animation: slideIn 1s ease-in-out;
	}
	
	button:hover {
		color: #000;
		background-color: gray;
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
		<h1 style="color: green">${success}</h1>
		<h1 style="color: red">${fail}</h1>
		
		<%
		Student student=(Student)session.getAttribute("student");
		if(student==null) {
			request.setAttribute("fail", "Invalid Session Login Again");
			request.getRequestDispatcher("StudentLogin.jsp").forward(request,response);
		}
		else {
			if(!student.isStatus()) {
		%>
				<a href="/student/course"><button>Enroll for Course</button></a>
		<%
			}
			else {
				if(student.getDoj() == null) {
		%>
					<a href="/PrintChallan.jsp"><button>Print Challan</button></a>
		<%
				}
			}
		%>
		<a href="/IdCard.jsp"><button>View ID Card</button></a>
		<a href="/LibraryCard.jsp"><button>View Library Card</button></a>
		<a href="/logout"><button>Logout</button></a>
		<%
		}
		%>
	</div>
</body>
</html>
