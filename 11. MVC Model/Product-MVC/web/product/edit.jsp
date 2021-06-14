<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10-Jun-21
  Time: 10:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit customer</title>
</head>
<body>
<h1>Edit customer</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
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
                <td>Name Product :</td>
                <td><input type="text" name="nameProduct" id="name" value="${requestScope["product"].getNameProduct()}"></td>
            </tr>
            <tr>
                <td>Price Product :</td>
                <td><input type="text" name="priceProduct" id="price" value="${requestScope["product"].getPriceProduct()}"></td>
            </tr>
            <tr>
                <td>Description Product:</td>
                <td><input type="text" name="descriptionProduct" id="description" value="${requestScope["product"].getDescriptionProduct()}"></td>
            </tr>
            <tr>
                <td>Producer:</td>
                 <td><input type="text" name="producer" id="producer" value="${requestScope["product"].getProducer()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update customer"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
