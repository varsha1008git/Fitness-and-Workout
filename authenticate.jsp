<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fitness Planner</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style1.css">
</head>
<%@ page import="java.sql.*" %>
<%@ include file="db.jsp" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    Connection conn = null;
    PreparedStatement pst = null;
    ResultSet rs = null;

    try {
        conn = getDBConnection();

        String sql = "SELECT * FROM users WHERE username=? AND password=?";
        pst = conn.prepareStatement(sql);
        pst.setString(1, username);
        pst.setString(2, password);
        rs = pst.executeQuery();

        if (rs.next()) {
            response.sendRedirect("welcome.html"); // Redirect to welcome page
        } else {
            out.println("<h3>Invalid username or password!</h3>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<p>Error: " + e.getMessage() + "</p>");
    } finally {
        if (rs != null) rs.close();
        if (pst != null) pst.close();
        if (conn != null) conn.close();
    }
%>
