<%--
  Created by IntelliJ IDEA.
  User: SongYu
  Date: 2020/1/17
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>首页</title>
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.css">
    <script src="node_modules/jquery/dist/jquery.js"></script>
    <script src="node_modules/bootstrap/dist/js/bootstrap.js"></script>
</head>
<body>
<div align="center" style="margin-top: 100px;">
    <div align="center" style="font-size: 20px;">${user.name}，欢迎您</div>
    <a href="${pageContext.request.contextPath}/findUserByPageServlet" style="text-decoration: none; font-size: 33px;">查询所有用户信息</a>
</div>
</body>
</html>