<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: No Name VN
  Date: 8/29/2020
  Time: 5:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="name" scope="session" value="TrungDC-Session"/>
<h1>${name}</h1>
<a href="display.jsp">New request display session</a>
<a href="removeSession.jsp">New request to remove session</a>
</body>
</html>
