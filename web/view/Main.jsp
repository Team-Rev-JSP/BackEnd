
<%@ page import="vo.CardVO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vo.PageInfo" %>
<%--
  Created by IntelliJ IDEA.
  User: gooda
  Date: 2021-05-24
  Time: 오후 10:20
  To change this template use File | Settings | File Templates.
--%>
<%
    ArrayList<CardVO> list = (ArrayList<CardVO>)request.getAttribute("lists");
    PageInfo pageInfo = (PageInfo) request.getAttribute("page_info");

    String id = (String)session.getAttribute("id");

%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CARDIS</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/bab20e0e73.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href=../css/Main.css />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
</head>
<body>
<div class="body__container">
    <header class="header">
        <div class="inner">
            ${id}님 반갑습니다.
        </div>
    </header>

    <section class="card_list">
        <div class="inner">
            <div class="content">
                <%for(int i = 0; i < list.size() ; i++){
                %>
                <a class="card" href="Detail.bo?idx=<%=list.get(i).getId()%>">
                    <div class="card_top">
                        <div class="left">
                            <div class="name">
                                <%=list.get(i).getName()%>
                            </div>
                            <div class="postion">
                                <%=list.get(i).getPosition()%>
                            </div>
                        </div>
                        <div class="right">
                            <div class="company">
                                <%=list.get(i).getCompany()%>
                            </div>
                            <div class="address">
                                <%=list.get(i).getAddress()%>
                            </div>
                        </div>
                    </div>
                    <div class="card_bottom">
                        <div class="fax">
                            Fax. <%=list.get(i).getFax()%>
                        </div>
                        <div class="mobile">
                            Mobile. <%=list.get(i).getPhone()%>
                        </div>
                        <div class="email">
                            Email. <%=list.get(i).getEmail()%>
                        </div>
                        <div class="url">
                            <%=list.get(i).getUrl()%>
                        </div>
                    </div>
                </a>
                <%}%>
            </div>
        </div>
    </section>
    <section class="pager">

    </section>
    <input id="create_card" type="button" value="생성" onclick="location.href='Create.bo'">
</div>
</body>
</html>
