<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .message{
            color:green;
        }
    </style>
</head>
<body>
<h1>create new customer</h1>
<p>
    <c:if test='${requestScope["message"]!=null}'>
        <span class="message">${requestScope['message']}</span>
    </c:if>
</p>
<p>
    <a href="/customers">back to customer list</a>
</p>
<form method="post" action="/customers?action=create" >
    <fieldset>
        <legend>
            customer information
        </legend>
        <table>
            <tr>
                <th>Name</th>
                <th><input type="text" name="name" id="name"></th>
            </tr>
            <tr>
                <th>email</th>
                <th><input type="text" name="email" id="email"></th>
            </tr>
            <tr>
                <th>address</th>
                <th><input type="text" name="address" id="address" ></th>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create customer"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
