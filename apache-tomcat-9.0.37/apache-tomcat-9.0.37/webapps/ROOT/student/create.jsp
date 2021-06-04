<%--
  Created by IntelliJ IDEA.
  User: No Name VN
  Date: 3/15/2021
  Time: 10:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="/student">
    <div>
        <span>Name:</span>
        <input type="text" name="name" style="display: inline">
    </div>
    <div>
        <span>Gender:</span>
        <input type="number" name="gender" style="display: inline">
    </div>
    <div>
        <span>Point:</span>
        <input type="number" name="point" style="display: inline">
    </div>
    <div>
        <span>Image:</span>
        <input type="text" name="image" style="display: inline">
    </div>

    <input type="hidden" name="action" value="create">
    <button type="submit" >Create</button>
</form>
</body>
</html>
