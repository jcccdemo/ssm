<%--
  Created by IntelliJ IDEA.
  User: ljc
  Date: 2020/7/14
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>在售奶茶列表</title>
    <link rel="stylesheet" href="../web/css/viewCustomer.css">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../web/css/style.css" />
    <script type="text/javascript">
        function confirmRemove(id) {
            var flag = confirm("确定要删除该记录吗？")
            if (flag) {
                window.location.href = "delete?id=" + id;
            }
        }
    </script>
    <script>
        function xiugai(){
            window.open("preModify?id=")
        }
    </script>

    <style>
        /* Border styles */
        #table-4 thead, #table-4 tr {
            border-top-width: 1px;
            border-top-style: solid;
            border-top-color: rgb(211, 202, 221);
        }
        #table-4 {
            border-bottom-width: 1px;
            border-bottom-style: solid;
            border-bottom-color: rgb(211, 202, 221);
        }

        /* Padding and font style */
        #table-4 td, #table-4 th {
            padding: 5px 10px;
            font-size: 12px;
            font-family: Verdana;
            color: rgb(95, 74, 121);
        }

        /* Alternating background colors */
        #table-4 tr:nth-child(even) {
            background: rgb(223, 216, 232)
        }
        #table-4 tr:nth-child(odd) {
            background: #FFF
        }
    </style>
</head>
<body>
<h1 align="center">上架奶茶数据</h1>

<div align="center" style="width: auto;height: auto;font-size: 16px ;font-weight: bold;letter-spacing: 2pt;">
    管理员：${USER_SESSION.uname}

    <span class="label label-danger" style="font-size: 17px">
				<a href="${pageContext.request.contextPath }/logout" style="color: #EBBBA7;">
					退出系统
                </a>
    </span>
    <div style="width: auto;height: 20px">

    </div>
</div>

<form name="findform" action="viewByCondition" method="post">
    <table align="center" style=" width: 800px; font-size:16px;">
        <tr>
            <td style="letter-spacing: 3pt; font-weight: bold;" width="90">产品名称:</td>
            <td>
                <input type="text" class="form-control" placeholder="查询产品名称" name="username" size="10">
            </td>

            <td style="letter-spacing: 3pt; font-weight: bold;" width="60"> 价格：</td>
            <td>
                <input type="text" class="form-control" placeholder="查询产品价格" name="jobs" size="10">
            </td>

            <td colspan="2" align="center"><input type="submit" value="查询" class="btn btn-default"></td>
            <td>
                <a href="toAdd" title="添加">
                    <svg t="1595337758828" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg"
                         p-id="7250" width="32" height="32">
                        <path d="M128 64a64 64 0 0 0-64 64v768a64 64 0 0 0 64 64h768a64 64 0 0 0 64-64V128a64 64 0 0 0-64-64H128z m0-64h768a128 128 0 0 1 128 128v768a128 128 0 0 1-128 128H128a128 128 0 0 1-128-128V128a128 128 0 0 1 128-128z"
                              fill="#000000" p-id="7251"></path>
                        <path d="M704 480a32 32 0 1 1 0 64H320a32 32 0 0 1 0-64h384z" fill="#000000" p-id="7252"></path>
                        <path d="M544 704a32 32 0 1 1-64 0V320a32 32 0 0 1 64 0v384z" fill="#000000" p-id="7253"></path>
                    </svg>

                </a>
            </td>

        </tr>

    </table>

</form>

<table align="center" id="table-4">
    <tr align="center">
        <td width="250" style=font-size:17px;>产品编号</td>
        <td width="250" style=font-size:17px;>产品名称</td>
        <td width="250" style=font-size:17px;>价格</td>
        <td width="250" style=font-size:17px;>下架日期</td>
        <td width="250" style=font-size:17px;>操作</td>
    </tr>
    <c:forEach items="${customerList}" var="customer" >
        <tr align="center">
            <td style=font-size:17px;>${customer.id}</td>
            <td style=font-size:17px;>${customer.username}</td>
            <td style=font-size:17px;>${customer.jobs}</td>
            <td style=font-size:17px;>${customer.phone}</td>
            <td>
<%--                <a href="javascript:xiugai(${customer.id})" title="修改">--%>
                <a href="preModify?id=${customer.id}" title="修改">
                    <svg width="3em" height="2em" t="1595335331098" class="icon" viewBox="50 0 900 900" xmlns="http://www.w3.org/2000/svg"
                         p-id="1295">
                        <path d="M275.6 782c-8.5 0-16.6-3.4-22.6-9.4l-138-138c-12.5-12.5-12.5-32.8 0-45.3l398.6-398.6c8.9-8.9 33.5-29.5 71.2-29.5 26.9 0 52.2 10.5 71.2 29.5l40.9 40.9c39.2 39.2 39.2 103.1 0 142.4L654 417C538.2 532.7 418.5 652.3 298.2 772.6c-6 6-14.1 9.4-22.6 9.4z m-92.7-170l92.7 92.7c112.7-112.7 224.7-224.6 333.2-333l42.9-42.9c14.3-14.3 14.3-37.7 0-51.9L610.8 236c-6.9-6.9-16.1-10.7-26-10.7-14.5 0-24.2 8.9-26 10.7L182.9 612z"
                              p-id="1296" fill="#1296db"></path>
                        <path d="M96.7 822.9c-8.4 0-16.6-3.3-22.6-9.4-8.1-8.1-11.2-19.9-8.3-30.9l47.6-177.5c3-11 11.6-19.7 22.6-22.6 11-3 22.8 0.2 30.9 8.3l130 129.9c8.1 8.1 11.2 19.9 8.3 30.9-3 11-11.6 19.7-22.6 22.6L105 821.8c-2.8 0.7-5.5 1.1-8.3 1.1z m64.2-147.7L142 745.6l70.5-18.9-51.6-51.5zM607.2 419.2c-8.3 0-16.6-3.2-22.8-9.6L463.1 286.1c-12.4-12.6-12.2-32.9 0.4-45.3 12.6-12.4 32.9-12.2 45.3 0.4L630 364.8c12.4 12.6 12.2 32.9-0.4 45.3-6.2 6-14.3 9.1-22.4 9.1zM922.9 813.3H402.1c-17.7 0-32-14.3-32-32s14.3-32 32-32h520.8c17.7 0 32 14.3 32 32s-14.3 32-32 32z"
                              p-id="1297" fill="#1296db"></path>
                        <path d="M922.9 677.3H599.6c-17.7 0-32-14.3-32-32s14.3-32 32-32h323.3c17.7 0 32 14.3 32 32s-14.3 32-32 32z"
                              p-id="1298" fill="#1296db"></path>
                        <path d="M921.9 543.8H725.6c-17.7 0-32-14.3-32-32s14.3-32 32-32h196.3c17.7 0 32 14.3 32 32s-14.3 32-32 32z"
                              p-id="1299" fill="#1296db">
                            <!-- 修改 -->
                        </path>
                    </svg>
                </a>

                <a href="javascript:confirmRemove(${customer.id})" title="删除">
                    <svg width="3em" height="2em" viewBox="0 0 15 15" class="bi bi-trash" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z" />
                        <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4L4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z" />
                        <!-- 	删除	 -->
                    </svg>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
<div align="center" style="font-weight: bold; width: auto; height: 50px;font-size: 20px">
    <!--  分页导航	 -->
    共 ${page.totalPage} 页 &nbsp;&nbsp;第${page.currPage} 页 &nbsp;&nbsp;
    <!-- 首页超链： -->
    <a href="?start=0">首页</a>&nbsp;&nbsp;
    <c:if test="${page.start >= page.count}">
        <!-- 上一页超链： -->
        <a href="?start=${page.start-page.count}">上一页</a>&nbsp;&nbsp;
    </c:if>

    <c:if test="${(page.start + page.count) < (page.last + page.count)}">
        <!-- 下一页超链： -->
        <a href="?start=${page.start+page.count}">下一页</a>&nbsp;&nbsp;
    </c:if>
    <!-- 尾页超链： -->
    <a href="?start=${page.last}">尾页</a>
    <table>
        <tr>
            <td>
                <div class="col-md-3 col-sm-3 col-xs-6">
                    <form name="fanhui" action="/ssm/customer/viewAll" method="post" >
                        <input type="submit" value="显示全部信息" class="btn btn-sm animated-button thar-one">
                    </form>
                </div>
            </td>
            <td>
                    <form name="findform" action="viewByPage?start=0" method="post">
                        <input type="submit" value="分页显示信息" class="btn btn-sm animated-button thar-one">
                    </form>

            </td>
        </tr>
</table>


</div>

</body>
</html>
