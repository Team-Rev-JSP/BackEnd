<%--
  Created by IntelliJ IDEA.
  User: gooda
  Date: 2021-05-25
  Time: 오후 1:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h5><span>회원가입</span> 페이지입니다.</h5>
<hr />
<form action="join.bo" method="post">
    <table border=1>
        <tr>
            <td>
                <label for = "id">아이디 : </label>
            </td>
            <td>
                <input type="text" id="id" name="id">
            </td>
        </tr>
        <tr>
            <td>
                <label for = "pass">비밀번호 : </label>
            </td>
            <td>
                <input type="password" id="pass" name="password">
            </td>
        </tr>
        <tr>
            <td>
                <label for = "auth1">권한 : </label>
            </td>
            <td>
                <input type="radio" name="auth" value="user" checked id = "auth1"/> USER
                <input type="radio" name="auth" value="user" checked id = "auth2"/> ADMIN
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="회원가입" class="join" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>
