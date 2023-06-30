<%@page import="org.jsp.jesa5.dto.Student"%>
<%@page import="java.util.Base64"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student ID</title>
<style>
body{
background-color: pink;
}

.container {
	margin: 0 auto;
	width: fit-content;
	height: fit-content;
	align-items: center;
	text-align: center;
	border: 2px solid black;
	padding: 5px;
	background-color: skyblue;
	border-radius: 12px;
	margin-top: 70px;
	font-size: 10px;
}

img {
	height: 65px;
	width: 65px;
}

.inner-container {
	text-align: center;
	align-items: center;
	align-content: center;
	
}

pre {
	text-align: center;
}
</style>
</head>
<body>
	<form action="studentIdcard">
	
	  <%
	if (session.getAttribute("student") != null) {
		// Retrieve student details from session
		Student student = (Student) session.getAttribute("student");
	%> 
	
	<div class="container">
		<h1>Student Identity Card</h1>
		<header><strong>SRA College Of Engineering</strong></header>
		<header><strong>New Delhi,546980</strong></header>
		<hr>
		

		<div class="image">
			 <img src="data:image/jpeg;base64,<%=Base64.getEncoder().encodeToString(student.getPicture())%>">
		</div>
		
		
		<div class="inner-container">
			<div>
				 <p>
					<strong>Name:</strong>
					<%= student.getName()%>
				</p>
			</div>
			
			
			
			<div>
				<p>
					<strong>DOB:</strong>
					<%=student.getDob()%>   
				</p>
			</div>
			
			
			
			<div>
				<p>
					<strong>Mobile Number:</strong>
					<%=student.getMobile()%>
				</p>
			</div>
		</div>
		

		<%
		} else {
		// Session does not contain student details
		%>
		
		<h1>No student details found.</h1>
		<%
		}
		%>
		<footer>
			<pre>choudayya circle road,
  Banahatti-587311
            </pre>

		</footer>

	</div>
	</form>
</body>
</html>