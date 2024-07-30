<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Portal</title>
</head>
<body>
<h2>User Portal</h2>
<form action="submit_request.jsp" method="post">
    User Name: <input type="text" name="user_name" required><br>
    Request: <input type="text" name="user_request" required><br>
    Total Bed Request: <input type="number" name="total_bed_request" required><br>
    <input type="submit" value="Submit Request">
</form>
<table border="1">
    <tr>
        <th>User ID</th>
        <th>User Name</th>
        <th>User Request</th>
        <th>Total Bed Request</th>
        <th>Status</th>
    </tr>
    <%
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms", "root", "hp@#05@#aec");
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM user");
        while (rs.next()) {
            out.print("<tr><td>" + rs.getInt("user_id") + "</td><td>" + rs.getString("user_name") + "</td><td>" + rs.getString("user_request") + "</td><td>" + rs.getInt("total_bed_request") + "</td><td>" + rs.getString("status") + "</td></tr>");
        }
        con.close();
    %>
</table>

</body>
</html>
