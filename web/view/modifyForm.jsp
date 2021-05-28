<%@ page import="java.util.ArrayList" %>
<%@ page import="vo.CardVO" %><%--
  Created by IntelliJ IDEA.
  User: gooda
  Date: 2021-05-27
  Time: 오전 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Object ob = request.getAttribute("modList");
    CardVO set = (CardVO)ob;
%>

<html>
<head>
    <title>Modify</title>
</head>
<body>
    <h1>수정할 수 있는 페이지다!!!</h1>
    이름은<%=set.getName()%>
    이메일은<%=set.getEmail()%>
</body>
</html>
