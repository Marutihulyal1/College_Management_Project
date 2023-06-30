<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff Signup</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
    }

    .container {
        display: flex;
        justify-content: center;
        align-items: flex-start; /* Updated to align items to the top */
        height: 100vh;
    }

    .form {
        background-color: #ffffff;
        border: 1px solid #ccc;
        border-radius: 5px;
        padding: 20px;
        width: 300px;
        margin: auto;
    }

    .form h1 {
        color: #333;
        margin-bottom: 10px;
        text-align: center;
    }

    .form input[type="text"],
    .form input[type="email"],
    .form input[type="password"],
    .form input[type="date"] {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
    }

    .form input[type="radio"] {
        margin-bottom: 10px;
    }

    .form button[type="reset"],
    .form button[type="submit"] {
        background-color: pink;
        border: none;
        border-radius: 5px;
        color: gray;
        padding: 8px 16px;
        margin-right: 10px;
        cursor: pointer;
    }

    .form button[type="reset"]:hover,
    .form button[type="submit"]:hover {
        background-color: chocolate;
        color: white;
    }

    a {
        display: inline-block;
        margin-bottom: 10px;
        text-decoration: none;
        color: #333;
        position: absolute;
        bottom: -160px;
        left: 160px;
        padding: 10px 20px;
        background-color: #ddd;
        border-radius: 4px;
        font-size: 14px;
    }

    a:hover {
        background-color: #ccc;
    }
</style>
</head>
<body>
    <div class="container">
        <form class="form" action="/staff/signup" method="post">
            <h1>Signup</h1>
            <h1 style="color: green">${success}</h1>
            <h1 style="color: red">${fail}</h1>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required><br>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br>
            <label for="mobile">Mobile:</label>
            <input type="text" id="mobile" name="mobile" required><br>
            <label for="gender">Gender:</label>
            <input type="radio" id="male" name="gender" value="male">
            <label for="male">Male</label>
            <input type="radio" id="female" name="gender" value="female">
            <label for="female">Female</label><br>
            <label for="date">Date of Birth:</label>
            <input type="date" id="date" name="date" required><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>
            <label for="designation">Designation:</label>
            <input type="text" id="designation" name="designation" required><br>
            <button type="reset">Cancel</button>
            <button type="submit">Signup</button>
        </form>
        <a href="/StaffLogin.jsp">Back</a>
    </div>
</body>
</html>
