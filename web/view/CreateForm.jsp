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
    <title>Title</title>
</head>
<body>
<form action="CreateProcess.bo" method="post">
        <input type="text" placeholder="name" name="name" required style="height:30px; width: 380px" /><br />
        <input type="text" placeholder="phone" name="phone" required style="height:30px; width: 380px" /><br />
        <input type="text" placeholder="email" name="email" required style="height:30px; width: 380px" /><br />
        <input type="text" placeholder="position" name="position" required style="height:30px; width: 380px" /><br />
        <input type="text" placeholder="address" name="address" required style="height:30px; width: 380px" /><br />
        <input type="text" placeholder="fax" name="fax" required style="height:30px; width: 380px" /><br />
        <input type="text" placeholder="url" name="url" required style="height:30px; width: 380px" /><br />
        <input type="text" placeholder="company" name="company" required style="height:30px; width: 380px" /><br />
        <input type="submit" value="로그인" class="login" />
</form>
</body>
</html>
