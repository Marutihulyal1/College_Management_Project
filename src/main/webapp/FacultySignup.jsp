<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Faculty Signup</title>
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
    }
    
    h1 {
        text-align: center;
        margin-bottom: 30px;
        color: green;
    }
    
    .error-message {
        color: red;
        text-align: center;
        margin-bottom: 10px;
    }
    
    form {
        display: flex;
        flex-direction: column;
    }
    
    label {
        margin-bottom: 5px;
    }
    
    input[type="text"],
    input[type="email"],
    input[type="password"],
    input[type="date"] {
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
    }
    
    .gender-label {
        display: flex;
        align-items: center;
        margin-bottom: 5px;
        padding-top: 5px;
        padding-bottom: 12px;
    }
    
    input[type="radio"] {
        margin-right: 5px;
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
        display: block;
        margin-top: 10px;
        text-align: center;
        text-decoration: none;
        color: #666;
    }
    
    a:hover {
        color: #000;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>${success}</h1>
        <h1 class="error-message">${fail}</h1>
        <h1>Signup</h1>
        <form action="/faculty/signup" method="post">
            <label for="name">Name:</label>
            <input type="text" name="name" id="name">
            <label for="email">Email:</label>
            <input type="email" name="email" id="email">
            <label for="mobile">Mobile:</label>
            <input type="text" name="mobile" id="mobile">
            <div class="gender-label">
                <label>Gender:</label>
                <div>
                    <input type="radio" name="gender" value="male" id="male">
                    <label for="male">Male</label>
                    <input type="radio" name="gender" value="female" id="female">
                    <label for="female">Female</label>
                </div>
            </div>
            <label for="date">Date of Birth:</label>
            <input type="date" name="date" id="date">
            <label for="password">Password:</label>
            <input type="password" name="password" id="password">
            <label for="experience">Experience:</label>
            <input type="text" name="experience" id="experience">
            <label for="subject">Subject:</label>
            <input type="text" name="subject" id="subject">
            <label for="education">Education:</label>
            <input type="text" name="education" id="education">
            <button>Signup</button>
            <button type="reset">Cancel</button>
            
        </form>
        <a href="/FacultyLogin.jsp"><button>Back</button></a>
    </div>
</body>
</html>
