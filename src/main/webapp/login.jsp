<%--
  Created by IntelliJ IDEA.
  User: Retal
  Date: 12/10/18
  Time: 11:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (username != null && password != null)
    if (username.equals("admin") && password.equals("password")) {
        response.sendRedirect("profile.jsp");
    }
%>

<html>
<head>
    <title>Login</title>
</head>
<body>

    <h1>Login</h1>

    <form action="login.jsp" method="post">
        <input class="user" type="text" name="username" id="username" placeholder="Username">
        <input class="pass" type="password" name="password" id="password" placeholder="Password">
        <button type="submit">Login</button>
    </form>

</body>
</html>
