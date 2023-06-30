<%@page import="org.jsp.jesa5.dto.Course"%>
<%@page import="java.util.List"%>
<%@page import="org.jsp.jesa5.dao.CourseDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style>
    body {
        background-image: url("https://nmcauditingcollege.com/wp-content/uploads/2019/04/Kiki-PixTeller-1024x512.jpg");
        background-size: cover;
        background-repeat: no-repeat;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
        animation: fadeIn 1s ease;
    }

    @keyframes fadeIn {
        0% {
            opacity: 0;
        }
        100% {
            opacity: 1;
        }
    }

    h1 {
        color: #fff;
        text-align: center;
        margin-bottom: 20px;
        animation: slideInUp 1s ease;
    }

    @keyframes slideInUp {
        0% {
            transform: translateY(100px);
            opacity: 0;
        }
        100% {
            transform: translateY(0);
            opacity: 1;
        }
    }

    .button-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        margin-top: 20px;
        animation: fadeIn 1s ease;
    }

    .button-container a {
        text-decoration: none;
        margin: 10px;
        position: relative;
        background-color: orange;
        color: #333;
        border: none;
        border-radius: 5px;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        animation: buttonFadeIn 1s ease;
        background-image: url("path_to_button_image.jpg");
        background-size: cover;
        background-repeat: no-repeat;
    }

    @keyframes buttonFadeIn {
        0% {
            opacity: 0;
        }
        100% {
            opacity: 1;
        }
    }

    .button-container a:before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: rgba(0, 0, 0, 0.3);
        border-radius: 5px;
        opacity: 0;
        transition: opacity 0.3s ease;
    }

    .button-container a:hover {
        background-color: #f1f1f1;
    }

    .button-container a:hover:before {
        opacity: 1;
    }
</style>
</head>
<body>
    <div class="container">
        <h1 style="color: green">${success}</h1>
        <h1 style="color: red">${fail}</h1>
        <h1>Welcome to the Home page</h1>
        <div class="button-container">
            <a href="/AdminLogin.jsp" class="button">Click here to Login as Admin</a>
            <a href="/StudentLogin.jsp" class="button">Click here to Login as Student</a>
            <a href="/FacultyLogin.jsp" class="button">Click here to Login as Faculty</a>
            <a href="/StaffLogin.jsp" class="button">Click here to Login as Staff</a>
        </div>
    </div>
</body>
</html>
