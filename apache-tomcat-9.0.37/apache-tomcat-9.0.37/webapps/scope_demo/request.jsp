<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: No Name VN
  Date: 8/29/2020
  Time: 5:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:set var="name" scope="request" value="TrungDC-request"/>
    <c:set var="name" scope="page" value="TrungDC-page"/>
    <%--Request scope bắt đầu ngay khi một HTTP request được gửi tới server và kết thúc khi server trả về một HTTP response
    EX: khi ngươi dung access vao trang jsp nay, thi se duoc forward toi trang jsp khac (xu ly trong cung 1 request)--%>

    <%
        request.getRequestDispatcher("display.jsp").forward(request, response);
    %>
</body>
</html>
