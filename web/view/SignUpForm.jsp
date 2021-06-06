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
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../css/Join.css" />
    <title>Join</title>
</head>
<body>
<<<<<<< HEAD
<div class="container">
    <form id="form" class="form" action="SignUpProcess.bo" method="post">
=======
<<<<<<< HEAD
<div class="container">
<<<<<<< HEAD
<<<<<<< HEAD
    <form id="form" class="form" method="post" action="SignUpProcess.bo" onsubmit="return false">
=======
    <form id="form" class="form" action="SignUpProcess.bo" method="post">
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
=======
    <form id="form" class="form" action="SignUpProcess.bo" method="post">
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
>>>>>>> 23a777e3c198c981baea1e02244c5f76a69c33ac
        <h2>Join With Us</h2>
        <div class="form-control">
            <label for="id">ID</label>
            <input name="id" type="text" id="id" placeholder="Enter id">
            <small>Error message</small>
        </div>
        <div class="form-control">
            <label for="password">Password</label>
            <input name="password" type="password" id="password" placeholder="Enter Password">
            <small>Error message</small>
        </div>
        <div class="form-control">
            <label for="nickname">Nickname</label>
            <input name="nickname" type="text" id="nickname" placeholder="Enter Nickname">
            <small>Error message</small>
        </div>
        <div class="btn">
            <button id="login" type="login" onclick="location.href='/Login.bo'">이전</button>
<<<<<<< HEAD
            <button onclick="submit()">등록</button>
<%--            <input type="submit" value="등록">--%>
=======
<<<<<<< HEAD
<<<<<<< HEAD
            <button id="join" type="join" onclick="(e) => join(e)">등록</button>
=======
            <button onclick="submit()">등록</button>
<%--            <input type="submit" value="등록">--%>
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
=======
            <button onclick="submit()">등록</button>
<%--            <input type="submit" value="등록">--%>
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
>>>>>>> 23a777e3c198c981baea1e02244c5f76a69c33ac
        </div>
    </form>
</div>

<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
<script src="../js/Join.js" defer>

    /*
    onclick="submit()
    function submit() {
        $('#form').submit();
    }*/
=======
=======
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
>>>>>>> 23a777e3c198c981baea1e02244c5f76a69c33ac
<script src="../js/Join.js">

    function submit() {
        $('#form').submit();
    }
<<<<<<< HEAD
</script>
=======
<<<<<<< HEAD
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
=======
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
</script>
=======
<h5><span>회원가입</span> 페이지입니다.</h5>
<hr />
<form action="SignUpProcess.bo" method="post">
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
                <label for = "nickname">닉네임 : </label>
            </td>
            <td>
                <input type="text" id="nickname" name="nickname">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="회원가입" class="join" />
            </td>
        </tr>
    </table>
</form>
>>>>>>> teayeong
>>>>>>> 23a777e3c198c981baea1e02244c5f76a69c33ac
</body>
</html>