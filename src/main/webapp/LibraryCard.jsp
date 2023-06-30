<%@page import="java.util.Base64"%>
<%@page import="org.jsp.jesa5.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Library Card</title>
<style>

body{
background-color: orange;
}

.container {
  max-width: 200px;
  height:280px;
  margin: 0 auto;
  padding: 5px;
  border: 1px solid #ccc;
  background-color: gray;
  margin-top: 50px;
  border-radius: 15px;
  border: 2px solid black;
}

h1 {
  text-align: center;
  font-size: 25px;
  
}

header {
  text-align: center;
  margin-top: 5px;
  font-size: 12px;
}

.image {
  text-align: center;
  margin-top: 2px;
}

img {
  max-width: 60px;
  height: auto;
}

.inner-container {
  margin-top: 14px;
}

p {
  margin-bottom: 5px;
  text-align: center;
  font-size: 11px;
}

strong {
  font-weight: bold;
}
</style>
</head>
<body>
<form action="">

<% Student student=(Student)session.getAttribute("student"); %>
<div class="container">
	<h1>Library Card</h1>
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
				<strong>Email:</strong>
				<%=student.getEmail()%>   
			</p>
		</div>

		<div>
			<p>
				<strong>Mobile Number:</strong>
				<%=student.getMobile()%>
			</p>
		</div>
	</div>
</div>
</form>
</body>
</html>
