
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
    int totalPage =  (int)request.getAttribute("totalPage");
    int nowPage =  (int)request.getAttribute("page");

    String id = (String)session.getAttribute("id");
    String nickname = (String)session.getAttribute("nickname");

%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<<<<<<< HEAD
    <title>Main</title>
</head>
<body>
    메인페이지 입니다.
    각각 받아오는 정보는 <br>
    <input type="button" value="등록" onclick="location.href='Create.bo'">
    ${nickname}
    ${id}
    <input type="button" value="로그아웃" onclick="location.href='/Logout.bo';">
    <%for(int i = 0; i < list.size() ; i++){
    %>
        <a href="Detail.bo?idx=<%=list.get(i).getId()%>"><%=list.get(i).getId()%></a>
    <%}%>
=======
<<<<<<< HEAD
    <title>Main</title>
</head>
<body>
    메인페이지 입니다.
    각각 받아오는 정보는 <br>
    <input type="button" value="등록" onclick="location.href='Create.bo'">
    ${nickname}
    ${id}
    <input type="button" value="로그아웃" onclick="location.href='/Logout.bo';">
    <%for(int i = 0; i < list.size() ; i++){
    %>
        <a href="Detail.bo?idx=<%=list.get(i).getId()%>"><%=list.get(i).getId()%></a>
    <%}%>
=======
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
                <a class="card" href="Detail.bo?idx=<%=list.get(i).getId()%>&page=<%=nowPage%>">
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
    <section class="pager_section">
        <div class="page_container">
            <%if(nowPage >= 10){%>
                <a class="prv" href="Main.bo?page=<%=(nowPage/10-1)*10%>">이전</a>
            <%}%>

            <%  int start = nowPage/10*10+1;
                for(int i = start ; i < start+10 ; i++){%>
                <%if(i > totalPage) break;%>
                <a href="Main.bo?page=<%=i-1%>"><%=i%></a>
            <%}%>

            <%if( !(nowPage / 10 == totalPage / 10) && nowPage < totalPage){%>
                <a class="next" href="Main.bo?page=<%=(nowPage/10+1)*10%>">다음</a>
            <%}%>
        </div>
<%--        NOW PAGE : <%=nowPage%><br/>--%>
<%--        TOTAL PAGE : <%=totalPage%><br/>--%>
    </section>
    <input id="create_card" type="button" value="생성" onclick="location.href='Create.bo'">
</div>
>>>>>>> teayeong
>>>>>>> 23a777e3c198c981baea1e02244c5f76a69c33ac
</body>
</html>
