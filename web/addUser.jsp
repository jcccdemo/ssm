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
    <title>添加用户</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/web/css/viewCustomer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/web/css/demo.css">
</head>
<body>
    <form name="addform2" action="add2" method="post">
        <table align="center">
           <h1 align="center"> 添加管理员</h1>
            <tr>
                <td>
                    管理员id
                </td>
                <td><input type="text" name="uid" class="input" ></td>
            </tr>
            <tr>
                <td>管理员名字</td>
                <td><input type="text" name="uname" class="input"></td>
            </tr>
            <tr>
                <td>管理员密码</td>
                <td><input type="text" name="upwd" class="input"></td>
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
