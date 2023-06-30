<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Student Login</title>
  <style>
    h1 {
      text-align: center;
    }

    body {
      font-family: Arial, sans-serif;
    }

    form {
      border: 1px solid #ccc;
      padding: 20px;
      width: 300px;
      margin: 0 auto;
      animation: formAnimation 0.5s ease-in-out;
    }

    @keyframes formAnimation {
      0% {
        opacity: 0;
        transform: translateY(-20px);
      }
      100% {
        opacity: 1;
        transform: translateY(0);
      }
    }

    .form-group {
      display: flex;
      flex-direction: column;
      margin-bottom: 10px;
    }

    .form-group label {
      font-weight: bold;
      margin-bottom: 5px;
    }

    input[type="text"],
    input[type="password"],
    button {
      display: block;
      margin: 10px auto;
      padding: 10px;
      width: 200px;
      font-size: 16px;
    }

    button {
      cursor: pointer;
    }

    button[type="reset"] {
      background-color: #e74c3c;
      color: white;
      border: none;
    }

    button[type="reset"]:hover {
      background-color: #c0392b;
    }

    .login-btn {
      background-color: #2ecc71;
      color: white;
      border: none;
    }

    .login-btn:hover {
      background-color: #27ae60;
    }

    a {
      display: block;
      text-align: center;
      margin-top: 20px;
    }

    a.button-link {
      padding: 5px 10px;
    }
  </style>
</head>
<body>
  <h1 style="color:green">${success}</h1>
  <h1 style="color:red">${fail}</h1>
  <h1>Login</h1>
  <form action="/student/login" method="post">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="text" id="email" name="email" placeholder="Enter email" required="required">
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" id="password" name="password" placeholder="Enter password" required="required">
    </div>
    <button class="login-btn">Login</button>
    <button type="reset">Cancel</button>
     <a href="/StudentSignup.jsp" class="button-link">Click here to Create an Account</a>
  </form>
 
  <a href="/" style="text-decoration: none"><button>Home</button></a>
</body>
</html>
