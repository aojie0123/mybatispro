<%--
  Created by IntelliJ IDEA.
  User: ymkj
  Date: 2019/5/15
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/"+ request.getContextPath() +"/";
%>
<html>
<head>
    <title>慕课网用户管理中心</title>
<%--    <link rel="stylesheet" href="lib/bootstrap-4.3.1-dist/css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="<%=basePath%>lib/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="<%=basePath%>lib/3.3.1/jQuery_v3_3_1.js"></script>
    <script src="<%=basePath%>lib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<%--    <script src="lib/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>--%>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="page-header">
            <h1>慕课网后台管理系统 <small>用户数据管理中心</small></h1>
        </div>
    </div>
    <div class="row">
        <div class="jumbotron">
            <h1>MyBatis基础入门课程!</h1>
            <p>通过一个项目来完成基础部分的学习</p>
            <p><a href="#" class="btn btn-primary btn-lg" role="button">查看更多，请上慕课网</a></p>
        </div>
    </div>
    <div class="row">
        <table>
            <tr>
                <th>用户编号</th>
                <th>登录账号</th>
                <th>用户昵称</th>
                <th>用户年龄</th>
                <th>用户性别</th>
                <th>邮箱</th>
                <th>联系方式</th>
                <th>账号创建时间</th>
                <th>最后修改时间</th>
                <th>最后登录时间</th>
                <th>用户状态</th>
                <th>操作</th>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>
