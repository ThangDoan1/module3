<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: No Name VN
  Date: 8/29/2020
  Time: 3:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:set var="name" scope="request" value="TrungDC-request"/>
    <c:set var="pass" scope="request" value="123456789"/>
    <h1>${name}</h1>
    <h1>${pass}</h1>
    <a href="display.jsp">New request</a>
    <%--Request scope bắt đầu ngay khi một HTTP request được gửi tới server và kết thúc khi server trả về một HTTP response
    Như vi du trên, khi click "display" - tạo request HTTP mới, thì giá trị của "name" sẽ bị mất--%>
    <br />
    <%-- Tạo request mơi nhung co param tren URL--%>
    <a href="display.jsp?name=TrungDC-param">New request have param URL</a>
</body>
</html>
