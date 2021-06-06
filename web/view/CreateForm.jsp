<%--
  Created by IntelliJ IDEA.
  User: gooda
  Date: 2021-06-04
  Time: 오후 4:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<<<<<<< HEAD
    <title>Title</title>
</head>
<body>
<form action="CreateProcess.bo" method="post">
        <input type="text" placeholder="name" name="name" required style="height:30px; width: 380px" /><br />
        <input type="text" placeholder="phone" name="phone" required style="height:30px; width: 380px" /><br />
        <input type="text" placeholder="email" name="email" required style="height:30px; width: 380px" /><br />
        <input type="text" placeholder="position" name="position" required style="height:30px; width: 380px" /><br />
<<<<<<< HEAD
        <input type="text" placeholder="password" name="address" required style="height:30px; width: 380px" /><br />
        <input type="text" placeholder="id" name="fax" required style="height:30px; width: 380px" /><br />
        <input type="text" placeholder="password" name="url" required style="height:30px; width: 380px" /><br />
        <input type="text" placeholder="id" name="company" required style="height:30px; width: 380px" /><br />
=======
        <input type="text" placeholder="address" name="address" required style="height:30px; width: 380px" /><br />
        <input type="text" placeholder="fax" name="fax" required style="height:30px; width: 380px" /><br />
        <input type="text" placeholder="url" name="url" required style="height:30px; width: 380px" /><br />
        <input type="text" placeholder="company" name="company" required style="height:30px; width: 380px" /><br />
>>>>>>> 23a777e3c198c981baea1e02244c5f76a69c33ac
        <input type="submit" value="로그인" class="login" />
</form>
=======
    <title>CARDIS</title>
    <link rel="stylesheet" href="../css/Create.css"/>
</head>
<body>
<div class="body__container">
        <form class="create_form" action="CreateProcess.bo" method="post">
                <div class="card">
                        <div class="card_top">
                                <div class="top_left">
                                        <input class="name" type="text" placeholder="name" autocomplete='off' name="name" required />
                                        <input class="position" type="text" placeholder="position" autocomplete='off' name="position" required />
                                </div>
                                <div class="top_right">
                                        <input type="text" placeholder="company" autocomplete='off' name="company" required />
                                        <input type="text" placeholder="address" autocomplete='off' name="address" required />
                                        <input type="text" placeholder="url" autocomplete='off' name="url" required  />
                                </div>
                        </div>
                        <div class="card_bottom">
                                <input type="text" placeholder="phone" autocomplete='off' name="phone" required />
                                <input type="text" placeholder="fax" autocomplete='off' name="fax" required />
                                <input type="text" placeholder="email" autocomplete='off' name="email" required />
                        </div>
                </div>
                <!-- <input type="text" placeholder="password" name="photo_path" required style="height:30px; width: 380px" /><br /> -->
                <div class="btn_box">
                        <input id="create_card" type="button" value="이전" onclick="history.go(-1)">
                        <input type="submit" value="저장" class="login"/>
                </div>

        </form>
</div>
>>>>>>> teayeong
</body>
</html>
