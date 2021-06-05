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
                        <input id="create_card" type="button" value="이전" onclick="location.href='Main.bo'">
                        <input type="submit" value="저장" class="login"/>
                </div>

        </form>
</div>
</body>
</html>
