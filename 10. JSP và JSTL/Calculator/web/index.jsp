<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 06-Jun-21
  Time: 10:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
</head>
<tbody>
<h1>Calculator</h1>
<form method="post" action="/calculator">
    <fieldset>
        <legend>
            Calculator
        </legend>
        <table>
            <tr>
                <td>First operand :</td>
                <td><input name="first-operand" type="text"></td>
            </tr>
            <tr>
                <td>Operator :</td>
                <td>
                    <select name="operator">
                        <option value='+'>Addition</option>
                        <option value='-'>Subtraction</option>
                        <option value='*'>Multiplication</option>
                        <option value='/'>Division</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Second operand :</td>
                <td><input name="second-operand" type="text"></td>
            </tr>
            <tr></tr>
            <td><input type="submit" value="Calculator"></td>
            </tr>
        </table>
    </fieldset>
</form>
</tbody>
</body>
</html>
