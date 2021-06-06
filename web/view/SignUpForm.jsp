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
<div class="container">
<<<<<<< HEAD
    <form id="form" class="form" method="post" action="SignUpProcess.bo" onsubmit="return false">
=======
    <form id="form" class="form" action="SignUpProcess.bo" method="post">
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
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
            <button id="join" type="join" onclick="(e) => join(e)">등록</button>
=======
            <button onclick="submit()">등록</button>
<%--            <input type="submit" value="등록">--%>
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
        </div>
    </form>
</div>

<<<<<<< HEAD
<script src="../js/Join.js" defer>

    /*
    onclick="submit()
    function submit() {
        $('#form').submit();
    }*/
=======
<script src="../js/Join.js">

    function submit() {
        $('#form').submit();
    }
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
</script>
</body>
</html>