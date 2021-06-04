<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: No Name VN
  Date: 8/29/2020
  Time: 3:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%
        Integer count = (Integer) application.getAttribute("accessNumber");
        if(count == null || count == 0){
            count = 1;
        } else {
            count ++;
        }
        application.setAttribute("accessNumber", count);
    %>
    <%--Application scope hay context scope bắt đầu từ khi ứng dụng web được chạy cho tới khi shutdown.
    Các tham số, giá trị (Parameters/attributes) bên trong application scope sẵn dùng với tất cả các request và session.--%>

</head>
<body>

<h1>Access Number: <%= count%></h1>
<h1>Now: <%= new Date().toLocaleString()%></h1>

<c:set var="name" scope="application" value="TrungDC-application" />
<h1>${applicationScope.name}</h1>
<a href="display.jsp">Display</a>

</body>
</html>
