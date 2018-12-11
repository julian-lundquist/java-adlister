<%--
  Created by IntelliJ IDEA.
  User: Retal
  Date: 12/10/18
  Time: 11:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <jsp:include page="partials/navbar.jsp">
        <jsp:param name="title" value="Main"/>
    </jsp:include>
</head>
<body>
<ul>
    <li><p><b>First Name:</b>
        <%= request.getParameter("username")%>
    </p></li>
    <li><p><b>Last  Name:</b>
        <%= request.getParameter("password")%>
    </p></li>
</ul>


    <style>
        body, html {
            background-color: aqua;
        }
    </style>
</body>
</html>
