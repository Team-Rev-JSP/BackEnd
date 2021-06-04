
<%@ page import="vo.CardVO" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: gooda
  Date: 2021-05-24
  Time: 오후 10:20
  To change this template use File | Settings | File Templates.
--%>
<%
    ArrayList<CardVO> list = (ArrayList<CardVO>)request.getAttribute("lists");
    String id = (String)session.getAttribute("id");

%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main</title>
</head>
<body>
    메인페이지 입니다.
    각각 받아오는 정보는 <br>
    <input type="button" value="등록" onclick="location.href='Create.bo'">
    ${id}
    <%for(int i = 0; i < list.size() ; i++){
    %>
        <a href="Detail.bo?idx=<%=list.get(i).getId()%>"><%=list.get(i).getId()%></a>
    <%}%>
</body>
</html>
