<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 02-Jun-21
  Time: 4:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Product Discount Calculator</title>
  </head>
  <body>
<h2>Product Discount Calculator</h2>
  <form action="/display-discount" method="post">
    <label>Product Description: </label><br/>
    <input type="text" name="text" placeholder=" Mô tả của sản phẩm"/><br/>
    <label>List Price:  </label><br/>
    <input type="text" name="listPrice" placeholder="Giá niêm yết của sản phẩm $"/><br/>
    <label>Discount Percent  </label><br/>
    <input type="text" name="percent" placeholder="Tỷ lệ chiết khấu (phần trăm)"/><br/>
    <input type = "submit" id = "submit" value = "Converter"/>
  </form>
  </body>
</html>
