
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
                    <span>
                        <%=list.get(i).getName()%>
                    </span>
                    <span>
                        <%=list.get(i).getPosition()%>
                    </span>
                    <span>
                        <%=list.get(i).getCompany()%>
                    </span>

                    <span>
                        <%=list.get(i).getAddress()%>
                    </span>
                    <span>
                        <%=list.get(i).getUrl()%>
                    </span>
                    <span>
                        <%=list.get(i).getPhone()%>
                    </span>
                    <span>
                        <%=list.get(i).getFax()%>
                    </span>
                    <span>
                        <%=list.get(i).getEmail()%>
                    </span>
                </a>
                <%}%>
            </div>
        </div>
    </section>
<<<<<<< Updated upstream
=======
    <input id="create_card" type="button" value="생성" onclick="location.href='Create.bo'">
>>>>>>> Stashed changes
</div>
</body>
</html>
