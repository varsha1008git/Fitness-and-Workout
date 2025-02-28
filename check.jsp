<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet, java.sql.SQLException" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String dbURL = "jdbc:mysql://127.0.0.1:3306/fitness";
    String dbUser = "root";
    String dbPass = "Siva2207";

    Connection conn = null;

    try {
        // Load the JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");
        System.out.println("Driver loaded successfully.");

        // Establish the connection
        conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
        System.out.println("Database connected successfully.");

        // Perform database operations here (like querying for user login)
    } catch (ClassNotFoundException e) {
        System.out.println("MySQL JDBC Driver not found.");
        e.printStackTrace();
    } catch (SQLException e) {
        System.out.println("Database connection error.");
        e.printStackTrace();
    } finally {
        try {
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
