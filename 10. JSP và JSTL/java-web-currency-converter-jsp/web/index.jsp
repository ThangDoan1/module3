<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 04-Jun-21
  Time: 9:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <style>
    input[type=text] {
      width: 300px;
      font-size: 16px;
      border: 2px solid #ccc;
      border-radius: 4px;
      padding: 12px 10px 12px 10px;
    }
    #submit {
      border-radius: 2px;
      padding: 10px 32px;
      font-size: 16px;
    }
  </style>
  <title>Currency Converter</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>Currency Converter</h2>
<form action="converter.jsp" method="post">
  <label>Rate: </label><br/>
  <input type="text" name="rate" placeholder="RATE" value="22000"/><br/>
  <label>USD: </label><br/>
  <input type="text" name="usd" placeholder="USD" value="0"/><br/>
  <input type = "submit" id = "submit" value = "Converter"/>
</form>
</body>
</html>
