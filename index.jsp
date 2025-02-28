<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
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
    <h2>User Registration</h2>
    <form action="register.jsp" method="post">
        <input type="text" name="username" placeholder="Enter Username" required>
        <input type="email" name="email" placeholder="Enter Email" required>
        <input type="text" name="phone" placeholder="Enter Phone Number" required>
        <input type="text" name="address" placeholder="Enter Address" required>
        <input type="text" name="place" placeholder="Enter Place" required>
        <input type="password" name="password" placeholder="Enter Password" required>
        <button type="submit">Register</button>
    </form>

    <p>Already have an account? <a href="login.jsp">Login here</a></p>
</body>
</html>
