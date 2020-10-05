<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: ljc
  Date: 2020/7/7
  Time: 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="web/css/login.css">
    <link rel="stylesheet" href="web/font-awesome-4.7.0/css/font-awesome.css">

    <title>
        登录界面
    </title>

    <script type="text/javascript">
        //判断登录账号和密码是否为空
        function check() {
            if (
                document.loginform.uname.value == "" ||
                document.loginform.uname.upwd == ""
            ) {
                alert("用户名或密码 不能为空!");
                return false;
            }
        }
    </script>
</head>

<body>

<div id="login-box">
    <h1 style="color: #ffffff;padding-top: 40px ;">欢迎登录你的奶茶管理系统</h1>

    <!-- 提示信息，获取UserAction类login方法保存在model中的 msg信息-->
    <font color="red" style="font-size: 20px;">
        <span id="message">${msg}</span>
    </font>
    <form
            name="loginform"
            action="login"
            method="post"
            onsubmit=" return check()"
    >
        <div class="input_box">
            <!-- 用户名 ↓ ↓ ↓ -->
            <div class="int">
                <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                <input type="text" name="uname" placeholder="Username" />
            </div>

            <!-- 密码 ↓ ↓ ↓ -->
            <div class="int">
                <i class="fa fa-key" aria-hidden="true"></i>
                <input type="password" name="upwd" placeholder="Password" />
            </div>
            <div class="denglu">

                <button type="submit">Login</button>
            </div>
            <!-- 登录按钮 -->
            <div class="denglu" style="float: right;">
                <a href=" /ssm/toAdd2">注册</a>
            </div>
        </div>
    </form>
</div>
</body>
</html>
