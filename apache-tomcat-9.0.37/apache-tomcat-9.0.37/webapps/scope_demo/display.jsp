<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: No Name VN
  Date: 8/29/2020
  Time: 3:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
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


<%--Lấy giá trị trong phạm vi của applicationScope--%>
<h1>Access number: <c:out value="${applicationScope.accessNumber}" /></h1>
<h1><a href="application.jsp">applicationScope - name: </a><c:out value="${applicationScope.name}" /></h1>

<%--Lấy giá trị session scope--%>
<h1><a href="session.jsp">sessionScope - name: </a><c:out value="${sessionScope.name}" /></h1>

<%--Lấy giá trị Attribute cua request: Nguyen Van B--%>
<h1><a href="request.jsp">requestScope - name: </a><c:out value="${requestScope.name}" /></h1>

<%--Lấy giá trị matching voi param tren URL--%>
<h1><a href="param.jsp">param - name: </a><c:out value="${param.name}" /></h1>

<%--Lấy giá trị page scope: hien tai page nay khong co nen se rong--%>
<h1><a href="page.jsp">pageScope - name: </a><c:out value="${pageScope.name}" /></h1>


</body>
</html>
