<%@ page import="vo.CardVO" %><%--
  Created by IntelliJ IDEA.
  User: gooda
  Date: 2021-05-31
  Time: 오후 2:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detail 화면</title>
</head>
<body>
    <% CardVO list = (CardVO)request.getAttribute("detailList"); %>
    <% System.out.println(list); %>
    이름<%=list.getName()%> <br>
    이메일<%=list.getEmail()%>
</body>
</html>
