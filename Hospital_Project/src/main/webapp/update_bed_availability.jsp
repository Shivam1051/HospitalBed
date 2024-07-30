<%@ page import="java.sql.*" %>

<%
    String hospitalId = request.getParameter("hospitalId");
    String newBedAvailability = request.getParameter("newBedAvailability");

    String url = "jdbc:mysql://localhost:3306/hms";
    String user = "root";
    String password = "hp@#05@#aec";
    Connection conn = null;
    Statement stmt = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);
        stmt = conn.createStatement();
        String updateQuery = "UPDATE admin SET bad_availability = " + newBedAvailability + " WHERE hospital_id = " + hospitalId;
        stmt.executeUpdate(updateQuery);
        out.println("Bed availability updated successfully.");
    } catch (Exception e) {
        e.printStackTrace();
        out.println("Error updating bed availability.");
    } finally {
        try {
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
