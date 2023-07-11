<%--
  Created by IntelliJ IDEA.
  User: Ahn
  Date: 2023/07/11
  Time: 10:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>세션의 유효기간</title>
</head>
<body>
    Home > 세션의 유효기간 출력하기
    <hr>
    -- 세션 유효시간 변경 전 -- <br>
    <%
        int s_time = session.getMaxInactiveInterval() / 60;
        out.println("세션의 유효시간 : [ " + s_time + " 분 ] <br><br>");
    %>

    -- 세션 유효시간 변경 후 -- <br>
    <%
        session.setMaxInactiveInterval(60 * 5);
        s_time = session.getMaxInactiveInterval() / 60;
        out.println("세션의 유효시간 : [ " + s_time + " 분 ]");
    %>
</body>
</html>
