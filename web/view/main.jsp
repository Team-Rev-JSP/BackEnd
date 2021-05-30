<%@ page import="vo.CardVO" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: gooda
  Date: 2021-05-24
  Time: 오후 10:20
  To change this template use File | Settings | File Templates.
--%>
<%
    ArrayList<CardVO> list = (ArrayList<CardVO>)request.getAttribute("lists");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main</title>
</head>
<body>
        메인페이지 입니다.
        각각 받아오는 정보는 <br>
        <%request.getAttribute("lists");%> <br>
        값은 이겁니다<%=list.get(0).getName()%>
        값은 이겁니다<%=list.get(0).getEmail()%>
        값은 이겁니다<%=list.get(0).getCompany()%>
        총 페이지는 <%=request.getAttribute("totalpage")%>
</body>
</html>
