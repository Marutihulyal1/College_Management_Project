<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Faculty Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        
        .container {
            width: 300px;
            margin: 0 auto;
            margin-top: 100px;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
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
        input[type="password"] {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        
        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            margin-bottom: 10px;
            border: none;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
        }
        
        button[type="reset"] {
            background-color: #ccc;
        }
        
        a {
            text-align: center;
            margin-top: 15px;
            color: #666;
            margin-bottom: 10px;
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
        
        .container {
            animation: fadeIn 1s ease-in-out;
        }
        
        button, a {
            animation: slideIn 1s ease-in-out;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Faculty Login</h1>
        
        <div class="success-message">${success}</div>
        <div class="error-message">${fail}</div>
        
        <form action="/faculty/login" method="post">
            Email: <input type="text" name="email" placeholder="Enter email" required="required">
            Password: <input type="password" name="password" placeholder="Enter password" required="required">
            
            <button>Login</button>
            <button type="reset">Cancel</button>
        </form>
        
        <a href="/FacultySignup.jsp">New? Click here to Create an Account</a>
        <a href="/"><button>Home</button></a>
    </div>
</body>
</html>
