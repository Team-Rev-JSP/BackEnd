<%@ page import="vo.CardVO" %><%--
  Created by IntelliJ IDEA.
  User: gooda
  Date: 2021-05-31
  Time: 오후 2:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% CardVO card = (CardVO)request.getAttribute("card");
    int prvPage = (int)request.getAttribute("page");
    System.out.println(card.toString());
%>
<html>
<head>
    <title>CARDIS</title>
    <link rel="stylesheet" href=../css/Detail.css />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
</head>
<body>
<div class="body__container">
    <div class="card" >
        <div class="card_top">
            <div class="left">
                <div class="name">
                    <%=card.getName()%>
                </div>
                <div class="postion">
                    <%=card.getPosition()%>
                </div>
            </div>
            <div class="right">
                <div class="company">
                    <%=card.getCompany()%>
                </div>
                <div class="address">
                    <%=card.getAddress()%>
                </div>
            </div>
        </div>
        <div class="card_bottom">
            <div class="fax">
                Fax. <%=card.getFax()%>
            </div>
            <div class="mobile">
                Mobile. <%=card.getPhone()%>
            </div>
            <div class="email">
                Email. <%=card.getEmail()%>
            </div>
            <div class="url">
                <%=card.getUrl()%>
            </div>
        </div>
    </div>
    <div class="section_btn">
        <input id="back" type="button" value="이전" onclick="location.href='/Main.bo?page=<%=prvPage%>'">
        <input id="delete" type="button" value="삭제" onclick="location.href='/DeleteProcess.bo?idx=<%=card.getId()%>'">
        <input id="modify" type="button" value="수정" onclick="location.href='/Modify.bo?idx=<%=card.getId()%>&page=<%=prvPage%>'">
    </div>
</div>
</body>
</html>
