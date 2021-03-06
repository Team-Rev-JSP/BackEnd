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
    String nickname = (String)session.getAttribute("nickname");
    String searchText = (String)request.getAttribute("search");
    if(searchText == null) searchText = "";
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
            <div>
                ${nickname}님 반갑습니다.
            </div>
            <div>
                <form action="Main.bo" method="get">
                    <label>
                        <input class="search" type="text" placeholder="Search..." autocomplete='off' name="search" required />
                    </label>
                    <input type="submit" value="검색" class="search_btn"/>
                </form>
            </div>
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
            <a class="prv" href="Main.bo?page=<%=(nowPage/10-1)*10%>&search=<%=searchText%>">이전</a>
            <%}%>

            <%  int start = nowPage/10*10+1;
                for(int i = start ; i < start+10 ; i++){%>
            <%if(i > totalPage) break;%>
            <a href="Main.bo?page=<%=i-1%>&search=<%=searchText%>"><%=i%></a>
            <%}%>

            <%if( !(nowPage / 10 == totalPage / 10) && nowPage < totalPage){%>
            <a class="next" href="Main.bo?page=<%=(nowPage/10+1)*10%>&search=<%=searchText%>">다음</a>
            <%}%>
        </div>
        <%--        NOW PAGE : <%=nowPage%><br/>--%>
        <%--        TOTAL PAGE : <%=totalPage%><br/>--%>
    </section>
    <input id="create_card" type="button" value="생성" onclick="location.href='Create.bo'">
    <input id="logout_card" type="button" value="로그아웃" onclick="location.href='Logout.bo'">
</div>
</body>
</html>