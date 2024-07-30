<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Request Processing</title>
</head>
<body>
<%
    String user_name = request.getParameter("user_name");
    String user_request = request.getParameter("user_request");
    int total_bed_request = Integer.parseInt(request.getParameter("total_bed_request"));

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms", "root", "hp@#05@#aec");
    PreparedStatement ps = con.prepareStatement("INSERT INTO user (user_name, user_request, total_bed_request) VALUES (?, ?, ?)");
    ps.setString(1, user_name);
    ps.setString(2, user_request);
    ps.setInt(3, total_bed_request);
    ps.executeUpdate();
    out.println("Request submitted successfully.");
    con.close();
    
%>
<a href="user_dashboard.jsp">dashBoard</a>

</body>
</html>
