<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Admin Login</title>
  <style>
    h1 {
      text-align: center;
      color: green;
    }

    form {
      border: 1px solid #ccc;
      padding: 5px;
      width: 300px;
      margin: 0 auto;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    label {
      display: flex;
      flex-direction: column;
      align-items: flex-start;
      margin-bottom: 5px;
    }

    input[type="text"],
    input[type="password"],
    button {
      display: block;
      margin: 5px auto;
      padding: 5px;
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
      text-decoration: none;
    }

    a button {
      padding: 5px 10px;
    }
  </style>
</head>
<body>
  <h1 style="color:green">${success}</h1>
  <h1 style="color:red">${fail}</h1>
  <h1>Login</h1>
  <form action="/admin/login" method="post">
    <label>
      Email:
      <input type="text" name="email" placeholder="Enter email" required="required">
    </label>
    <label>
      Password:
      <input type="password" name="password" placeholder="Enter password" required="required">
    </label>
    <button class="login-btn">Login</button>
    <button type="reset">Cancel</button>
  </form>
  <a href="/">
    <button>Home</button>
  </a>
</body>
</html>
