<%@ page import="java.sql.*" %>

<html>
<head>
    <title>Admin Login</title>
</head>
<body>
    <form action="admin_dashboard.jsp" method="post">
        <label for="adminId">Admin ID:</label>
        <input type="text" id="adminId" name="adminId" required>
        <br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <br>
        <input type="submit" value="Login">
    </form>
</body>
</html>
