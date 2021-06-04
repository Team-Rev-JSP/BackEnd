<%@ page import="vo.CardVO" %><%--
  Created by IntelliJ IDEA.
  User: gooda
  Date: 2021-05-31
  Time: 오후 2:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% CardVO card = (CardVO)request.getAttribute("card");
    System.out.println(card.toString());
%>
<html>
<head>
    <title>Detail 화면</title>
</head>
<body>
    <div>아이디<%=card.getId()%></div>
</body>
</html>
