<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        h1 {
            text-align: center;
            color: green;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            margin: 0;
            padding: 0;
        }

        header {
            padding: 5px;
            width: 100%;
            margin-bottom: 5px;
        }

        .container {
            display: flex;
            flex-direction: column;
            width: 300px;
            padding: 25px;
            border: 1px solid skyblue;
            border-radius: 5px;
        }
        input {
            margin: 5px 0px;
            height: 35px;
            padding: 7px;
        }

        button {
            height: 35px;
            margin: 5px 0px;
            background-color: pink;
            border: none;
            border-radius: 5px;
            color: gray;
            margin-bottom: 8px;
        }

        button:hover {
            background-color: chocolate;
            color: white;
        }

        a {
            margin-left: 120px;
        }
    </style>
</head>
<body>
    <header>
        <h1 style="color: green">${success}</h1>
        <h1 style="color: red">${fail}</h1>
        <h1>Login</h1>
    </header>

    <form action="/staff/login" method="post">
        <div class="container">
            Email: <input type="text" name="email" placeholder="Enter email" required="required">
            Password: <input type="text" name="password" placeholder="Enter password" required="required">
            <button>Login</button>
            <button type="reset">Cancel</button>
            <a href="/StaffSignup.jsp">New? Click here to Create an Account</a>
        </div>
    </form>
    <a href="/"><button>Home</button></a>
</body>
</html>
