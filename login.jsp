<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
        }
        form {
            background: white;
            padding: 20px;
            width: 300px;
            margin: auto;
            margin-top: 50px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px gray;
        }
        input, button {
            display: block;
            width: 90%;
            padding: 10px;
            margin: 10px auto;
        }
    </style>
    <link rel="stylesheet" href="style1.css">
    
</head>
<body>
    <h2>Login</h2>
    <form action="authenticate.jsp" method="post">
        <input type="text" name="username" placeholder="Enter Username" required>
        <input type="password" name="password" placeholder="Enter Password" required>
        <button type="submit">Login</button>
    </form>
</body>
</html>
