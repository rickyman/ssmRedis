<%--
  Created by IntelliJ IDEA.
  User: ruiqizhang
  Date: 1/19/16
  Time: 7:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<form action="/user/add" method="post"> <%--指定跳转的地址--%>
  username:
  <input name="username" />
  <br>

  password:
  <input name="password" type="password" />
  <br>
  <input type="submit" value="login" />
</form>
</body>
</html>
