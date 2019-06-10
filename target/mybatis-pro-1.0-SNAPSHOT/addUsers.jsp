<%--
  Created by IntelliJ IDEA.
  User: ymkj
  Date: 2019/5/16
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <div class="col-md-8 col-md-offset-2">
            <form class="form-horizontal" action="${pageContext.request.contextPath}/addusers">
                <div class="form-group">
                    <label for="username" class="col-sm-2 control-label">用户账号</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="username" name="username" placeholder="用户账号">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-2 control-label">登录密码</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="password" name="password" placeholder="登录密码">
                    </div>
                </div>
                <div class="form-group">
                    <label for="nickname" class="col-sm-2 control-label">昵称</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nickname" name="nickname" placeholder="昵称">
                    </div>
                </div>
                <div class="form-group">
                    <label for="age" class="col-sm-2 control-label">年龄</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="age" name="age" placeholder="年龄">
                    </div>
                </div>
                <div class="form-group">
                    <label for="sex" class="col-sm-2 control-label">性别</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="sex" name="sex" placeholder="性别">
                    </div>
                </div>
                <div class="form-group">
                    <label for="phone" class="col-sm-2 control-label">联系方式</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="phone" name="phone" placeholder="联系方式">
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-2 control-label">邮箱</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="email" name="email" placeholder="邮箱">
                    </div>
                </div>
                <div class="form-group">
                    <input type="submit" value="新增" class="btn btn-primary">
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
