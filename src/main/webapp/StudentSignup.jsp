<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student Signup</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 20px;
      background-color: #f1f1f1;
    }

    h1 {
      color: green;
      text-align: center;
      margin-top: 0;
    }

    form {
      max-width: 400px;
      margin: 0 auto;
      background-color: #fff;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    label {
      display: block;
      margin-bottom: 10px;
      font-weight: bold;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"],
    input[type="date"],
    input[type="file"] {
      width: 100%;
      padding: 8px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
      margin-bottom: 15px;
      font-size: 14px;
    }

    .gender-label {
      margin-bottom: 1px;
    }

    .gender-inputs {
      display: flex;
      align-items: center;
      gap: 5px;
      margin-bottom: 15px;
    }

    button {
      background-color: #4CAF50;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 14px;
    }

    button[type="reset"] {
      background-color: #f44336;
      margin-right: 10px;
    }

    button[type="submit"] {
      background-color: #4CAF50;
    }

    a {
      display: inline-block;
      margin-top: 10px;
      text-decoration: none;
      color: #333;
    }

    .back-button {
      display: inline-block;
      padding: 10px 20px;
      background-color: #ddd;
      border-radius: 4px;
      font-size: 14px;
    }

    .back-button:hover {
      background-color: #ccc;
    }
    
  </style>
</head>
<body>
<h1>Signup</h1>
  <h1 style="color: green">${success}</h1>
	<h1 style="color: red">${fail}</h1>

  <form action="/student/signup" method="post" enctype="multipart/form-data">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required>

    <label for="mobile">Mobile:</label>
    <input type="text" id="mobile" name="mobile" required>
    
   <div class="gender-label">Gender:</div>
    <div class="gender-inputs" id="a1">
      <input type="radio" id="male" name="gender" value="male" required>
      <label for="male"  style="padding-top: 14px;" >Male</label>
      <input type="radio" id="female" name="gender" value="female" required>
      <label for="female"   style="padding-top: 14px;">Female</label>
    </div>

    <label for="date">Date of Birth:</label>
    <input type="date" id="date" name="date" required>

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required>

    <label for="sslc">10th Percentage:</label>
    <input type="text" id="sslc" name="sslc" required>

    <label for="puc">PUC Percentage:</label>
    <input type="text" id="puc" name="puc" required>

    <label for="pic">Picture:</label>
    <input type="file" id="pic" name="pic" accept="image/png, image/gif, image/jpeg" required>

    <div>
      <button type="reset">Cancel</button>
      <button type="submit">Signup</button>
    </div>
  </form>

  <br>

  <a href="/StudentLogin.jsp" class="back-button">Back</a>
</body>
</html>