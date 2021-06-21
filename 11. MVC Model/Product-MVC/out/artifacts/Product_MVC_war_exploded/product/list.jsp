<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12-Jun-21
  Time: 5:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1 , shrink-to-fit=no">
</head>
<body>
<h1>Customers</h1>

<p>
    <a href="/products?action=create">Create new product</a>
</p>
<form method ="post" action="/products?action=search">
    <label>Search Product</label>
    <input type="text" name="find">
<input type="submit" value="Search" />
</form>

<table border="1" >
    <tr>
        <td>ID</td>
        <td>Name Product</td>
        <td>Price Product</td>
        <td>Description Product</td>
        <td>Producer</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td><a href="/products?action=view&id=${product.getId()}" >${product.getId()} </a> </td>
            <td>${product.getNameProduct()}</td>
            <td>${product.getPriceProduct()}</td>
            <td>${product.getDescriptionProduct()}</td>
            <td>${product.getProducer()}</td>
            <td><a href="/products?action=edit&id=${product.getId()}">edit</a> </td>
            <td><a href="/products?action=delete&id=${product.getId()}">delete</a> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>