<%--
  Created by IntelliJ IDEA.
  User: SongYu
  Date: 2020/1/20
  Time: 13:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>修改用户</title>
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.css">
    <script src="node_modules/jquery/dist/jquery.js"></script>
    <script src="node_modules/bootstrap/dist/js/bootstrap.js"></script>
</head>
<body>
<div class="container" style="width: 400px;">
    <h3 style="text-align: center;">修改联系人</h3>
    <form action="${pageContext.request.contextPath}/updateUserServlet" method="post">
        <!--  隐藏域 提交id  -->
        <input type="hidden" name="id" value="${user.id}">

        <div class="form-group">
            <label for="name">姓名：</label>
            <input type="text" class="form-control" id="name" name="name" value="${user.name}" readonly="readonly" placeholder="请输入姓名">
        </div>

        <div class="form-group">
            <label>性别：</label>
            <c:if test="${user.gender == '男'}">
                <input type="radio" name="gender" value="男" checked>男
                <input type="radio" name="gender" value="女">女
            </c:if>

            <c:if test="${user.gender == '女'}">
                <input type="radio" name="gender" value="男">男
                <input type="radio" name="gender" value="女" checked>女
            </c:if>
        </div>

        <div class="form-group">
            <label for="age">年龄：</label>
            <input type="text" class="form-control" value="${user.age}" id="age" name="age" placeholder="请输入年龄">
        </div>

        <div class="form-group">
            <label for="address">籍贯：</label>
            <select name="address" id="address" class="form-control">
                <c:if test="${user.address == '陕西'}">
                    <option value="陕西" selected>陕西</option>
                    <option value="北京">北京</option>
                    <option value="上海">上海</option>
                </c:if>

                <c:if test="${user.address == '北京'}">
                    <option value="陕西">陕西</option>
                    <option value="北京" selected>北京</option>
                    <option value="上海">上海</option>
                </c:if>

                <c:if test="${user.address == '上海'}">
                    <option value="陕西">陕西</option>
                    <option value="北京">北京</option>
                    <option value="上海" selected>上海</option>
                </c:if>
            </select>
        </div>

        <div class="form-group">
            <label for="qq">QQ：</label>
            <input type="text" id="qq" class="form-control" value="${user.qq}" name="qq" placeholder="请输入QQ号码">
        </div>

        <div class="form-group">
            <label for="email">Email：</label>
            <input type="text" id="email" class="form-control" value="${user.email}" name="email" placeholder="请输入邮箱地址">
        </div>

        <div class="form-group">
            <label for="username">用户名：</label>
            <input type="text" id="username" class="form-control" value="${user.username}" name="username" placeholder="请输入用户名">
        </div>

        <div class="form-group">
            <label for="password">密码：</label>
            <input type="password" id="password" class="form-control" value="${user.password}" name="password" placeholder="请输入用户密码">
        </div>

        <div class="form-group" style="text-align: center">
            <input class="btn btn-primary" type="submit" value="提交">
            <input class="btn btn-default" type="reset" value="重置">
            <input class="btn btn-default" type="button" value="返回" onclick="javascript:history.back(-1);">
        </div>
    </form>
</div>
</body>
</html>