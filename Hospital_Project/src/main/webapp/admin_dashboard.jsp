<%@ page import="java.sql.*" %>

<html>
<head>
    <title>Admin Dashboard</title>
</head>
<body>
<center>
    <h1>Admin Dashboard</h1>
    <table border="1">
        <tr>
            <th>Hospital ID</th>
            <th>Hospital Name</th>
            <th>Hospital Address</th>
            <th>Bed Availability</th>
        </tr>
        <%
            String url = "jdbc:mysql://localhost:3306/hms";
            String user = "root";
            String password = "hp@#05@#aec";
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(url, user, password);
                stmt = conn.createStatement();
                rs = stmt.executeQuery("SELECT * FROM admin");
                while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt("hospital_id") %></td>
            <td><%= rs.getString("hospital_name") %></td>
            <td><%= rs.getString("address") %></td>
            <td><%= rs.getInt("bad_availability") %></td>
        </tr>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                try {
                    if (rs != null) rs.close();
                    if (stmt != null) stmt.close();
                    if (conn != null) conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        %>
    </table>
    <form action="update_bed_availability.jsp" method="post">
        <label for="hospitalId">Hospital ID:</label>
        <input type="text" id="hospitalId" name="hospitalId" required>
        <br>
        <label for="newBedAvailability">New Bed Availability:</label>
        <input type="text" id="newBedAvailability" name="newBedAvailability" required>
        <br>
        <input type="submit" value="Update">
    </form>
    
    <h1>User DashBoard</h1>
    <table border="1">
        <tr>
            <th>User ID</th>
            <th>user Name</th>
            <th>user Request</th>
            <th>Total Bed availability</th>
            <th>status</th>
        </tr>
       
        <%
            
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(url, user, password);
                stmt = conn.createStatement();
                rs = stmt.executeQuery("SELECT * FROM user");
                while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt("user_id") %></td>
            <td><%= rs.getString("user_name") %></td>
            <td><%= rs.getString("user_request") %></td>
            <td><%= rs.getInt("total_bed_request") %></td>
            <td><%= rs.getString("status") %></td>
        </tr>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                try {
                    if (rs != null) rs.close();
                    if (stmt != null) stmt.close();
                    if (conn != null) conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        %>
        
    </table>
    </center>
</body>
</html>
