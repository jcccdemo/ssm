<%--
  Created by IntelliJ IDEA.
  User: ljc
  Date: 2020/7/15
  Time: 0:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加奶茶</title>
    <link rel="stylesheet" href="../web/css/viewCustomer.css">
    <link rel="stylesheet" href="../web/css/demo.css">

</head>
<body>
    <form name="addform" action="add" method="post">
        <table align="center">
           <h1 align="center"> 添加奶茶信息</h1>
            <tr>
                <td>
                    产品名称：</td>
                <td><input type="text" name="username" class="input" ></td>
            </tr>
            <tr>
                <td>产品价格：</td>
                <td><input type="text" name="jobs" class="input"></td>
            </tr>
            <tr>
                <td>下架日期：</td>
                <td><input type="text" name="phone" class="input"></td>
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
