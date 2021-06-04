<%--
  Created by IntelliJ IDEA.
  User: No Name VN
  Date: 3/11/2021
  Time: 9:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Student List</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/css/bootstrap.css">
</head>
<body>
    <jsp:include page="../index.jsp" />
    <div class="container">
        <h2>Student List</h2>

        <c:if test="${empty studentList}">
            <h3>Student List Empty</h3>
        </c:if>

        <c:if test="${not empty studentList}">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Point</th>
                    <th>Image</th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach items="${studentList}" var="student">
                        <tr>
                            <td scope="row">${student.id}</td>
                            <td>${student.name}</td>
                            <td>
                                <c:choose>
                                    <c:when test="${student.gender == 0}">Female</c:when>
                                    <c:when test="${student.gender == 1}">Male</c:when>
                                    <c:otherwise>LGBT</c:otherwise>
                                </c:choose>
                            </td>
                            <td>${student.point}</td>
                            <td>
                                <c:if test="${empty student.image}">
                                    <img src="/img/no_photo.jpg" width="50px" height="50px">
                                </c:if>
                                <c:if test="${not empty student.image}">
                                    <img src="/img/${student.image}" width="50px" height="50px">
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>

                </tbody>
            </table>
        </c:if>
    </div>

</body>
</html>
