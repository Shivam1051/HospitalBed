<%@ page import="java.sql.*" %>

<html>
<head>
    <title>User DashBoard</title>
</head>
<body>
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
    
</body>
</html>
