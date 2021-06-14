<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12-Jun-21
  Time: 4:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new customer</title>
    <style>
        .message {
            color: springgreen;
        }
    </style>
</head>
<body>
<h1> Create new product</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message"${requestScope["message"]}></span>
    </c:if>
</p>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Id :</td>
                <td><input type="text" name="id" id="id"></td>
            </tr>
            <tr>
                <td>Name Product :</td>
                <td><input type="text" name="nameProduct" id="name"></td>
            </tr>
            <tr>
                <td>Price Prodcut :</td>
                <td><input type="text" name="priceProduct" id="price"></td>
            </tr>
            <tr>
                <td>Description Product:</td>
                <td><input type="text" name="descriptionProduct" id="description"></td>
            </tr>
            <tr>
                <td>Producer:</td>
                <td><input type="text" name="producer" id="producer"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
