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
    Object ob = request.getAttribute("card");
    CardVO card = (CardVO)ob;
    String ids = request.getParameter("idx");
    int id = Integer.parseInt(ids);
%>

<html>
<head>
    <title>CARDIS</title>
    <link rel="stylesheet" href=../css/Modify.css />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
</head>
<body>
<div class="body__container">
    <form class="modify_form" action="ModifyProcess.bo?idx=<%=id%>" method="post">
        <div class="card" >
            <div class="card_top">
                <div class="left">
                    <div class="name">
                        <input type="text" placeholder="Name" autocomplete='off' name="name" value="<%=card.getName()%>" required />
                    </div>
                    <div class="postion">
                        <input type="text" placeholder="Position" autocomplete='off' name="position" value="<%=card.getPosition()%>" required />
                    </div>
                </div>
                <div class="right">
                    <div class="company">
                        <input type="text" placeholder="Company" autocomplete='off' name="company" value="<%=card.getCompany()%>" required />
                    </div>
                    <div class="address">
                        <input type="text" placeholder="Address" autocomplete='off' name="address" value="<%=card.getAddress()%>" required />
                    </div>
                </div>
            </div>
            <div class="card_bottom">
                <div class="fax">
                    Fax. <input type="text" placeholder="Fax" autocomplete='off' name="fax" value="<%=card.getFax()%>" required />
                </div>
                <div class="mobile">
                    Mobile. <input type="text" placeholder="Phone" autocomplete='off' name="phone" value="<%=card.getPhone()%>" required />
                </div>
                <div class="email">
                    Email. <input type="text" placeholder="Email" autocomplete='off' name="email" value="<%=card.getEmail()%>" required />
                </div>
                <div class="url">
                    <input type="text" placeholder="Url" autocomplete='off' name="url" value="<%=card.getUrl()%>" required />
                </div>
            </div>
        </div>
        <div class="section_btn">
            <input id="back" type="button" value="이전" onclick="history.go(-1)">
            <input id="modify" type="submit" value="수정">
        </div>
    </form>
</div>
</body>
</html>
