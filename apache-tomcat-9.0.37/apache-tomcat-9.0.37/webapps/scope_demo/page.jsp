<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: No Name VN
  Date: 8/29/2020
  Time: 5:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="name" scope="page" value="TrungDC-page"/>
<c:set var="name" scope="request" value="TrungDC-request"/>
<%--Page scope giới hạn bởi phạm vi và thời gian tồn tại của các thuộc tính trong cùng 1 page nơi mà nó được tạo.
Nó sẵn dùng trong một JSP page giống như một object ẩn.--%>
<%--Hien thi gia tri cua bien name trong scope page nay, do uu tien cao hon ca request--%>
<h1>${name}</h1>

<a href="display.jsp">New Request</a>
</body>
</html>
