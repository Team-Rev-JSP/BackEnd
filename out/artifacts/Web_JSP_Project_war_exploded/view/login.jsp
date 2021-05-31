<%--
  Created by IntelliJ IDEA.
  User: gooda
  Date: 2021-05-25
  Time: 오후 1:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<html>
<head>
    <title>Login</title>
</head>
<body>
<h5><span>로그인</span> 페이지입니다.</h5>
<hr />
<form action="login.bo" method="post">
    <input type="text" placeholder="id" name="id" required style="height:30px; width: 380px" /><br />
    <input type="text" placeholder="password" name="password" required style="height:30px; width: 380px" /><br />
    <input type="submit" value="로그인" class="login" />
    <button onclick="location.href='home.do';" class="login" >HOME</button>
</form>
</body>
</html>
