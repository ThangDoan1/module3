<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: No Name VN
  Date: 8/29/2020
  Time: 5:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Before Remove Value: <c:out value = "${sessionScope.name}"/></h1>
<c:remove var = "name" scope="session"/>
<h1>After Remove Value: <c:out value = "${sessionScope.name}"/></h1>
<a href="display.jsp">New request</a>
</body>
</html>
