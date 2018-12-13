<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="../partials/navbar.jsp" />

    <div class="container">
        <h1>Viewing your profile.</h1>
        <c:if test="${sessionScope.isAdmin}">
            <h3>Hello, ${person}, you are an Admin.</h3>
        </c:if>
        <c:if test="${sessionScope.isUser}">
            <h3>Hello, ${person}, you are an User.</h3>
        </c:if>
    </div>

</body>
</html>
