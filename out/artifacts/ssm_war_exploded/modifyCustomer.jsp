<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: ljc
  Date: 2020/7/15
  Time: 18:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改</title>
    <link rel="stylesheet" href="../web/css/viewCustomer.css">
    <link rel="stylesheet" href="../web/css/demo.css">


</head>
<body>
<form name="modifyform" action="modify" method="post">
    <table align="center">
        <h1 align="center">修改奶茶信息</h1>
        <input type="hidden" name="id" value="${customer.id}" class="input">
        <tr>
            <td>产品名称：</td>
            <td>
                <input type="text" name="username" value="${customer.username}" class="input"></td>
        </tr>
        <tr>
            <td>产品价格：</td>
            <td><input type="text" name="jobs" value="${customer.jobs}" class="input"></td>
        </tr>
        <tr>
            <td>下架日期：</td>
            <td><input type="text" name="phone" value="${customer.phone}" class="input"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="保存">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
