<%@ page import="java.sql.*" %>
<%@ include file="db.jsp" %>

<%
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");
    String place = request.getParameter("place");
    String password = request.getParameter("password");

    Connection conn = null;
    PreparedStatement pst = null;

    try {
        conn = getDBConnection();
        
        String sql = "INSERT INTO users (username, email, phone, address, place, password) VALUES (?, ?, ?, ?, ?, ?)";
        pst = conn.prepareStatement(sql);
        pst.setString(1, username);
        pst.setString(2, email);
        pst.setString(3, phone);
        pst.setString(4, address);
        pst.setString(5, place);
        pst.setString(6, password);
        
        int result = pst.executeUpdate();
        
        if (result > 0) {
            response.sendRedirect("login.jsp"); // Redirect to login page after successful registration
        } else {
            out.println("<h3>Registration Failed!</h3>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<p>Error: " + e.getMessage() + "</p>");
    } finally {
        if (pst != null) pst.close();
        if (conn != null) conn.close();
    }
%>
