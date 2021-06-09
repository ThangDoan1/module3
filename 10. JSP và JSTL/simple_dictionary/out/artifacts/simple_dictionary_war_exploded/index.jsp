<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 06-Jun-21
  Time: 6:12 PM
  To change this template use File | Settings | File Templates.
--%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Simple Dictionary</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>Vietnamese Dictionary</h2>
<form  action="/dictionary.jsp" method="post">
  <input type="text" name="txtSearch" placeholder="Enter your word :"/>
  <input type="submit" id="submit" value="Search"/>
</form>
</body>
</html>
