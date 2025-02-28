<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fitness Planner</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style1.css">
</head>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.SQLException" %>
<%! 
    public Connection getDBConnection() throws SQLException, ClassNotFoundException {
        String dbURL = "jdbc:mysql://127.0.0.1:3306/fitnessapp";
        String dbUser = "root";
        String dbPass = "Siva2207";
        
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(dbURL, dbUser, dbPass);
    }
%>
