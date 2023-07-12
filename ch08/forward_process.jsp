<%--
  Created by IntelliJ IDEA.
  User: Ahn
  Date: 2023/07/12
  Time: 11:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<html>
<head>
    <title>forward 액션 태그</title>
</head>
<body>
    Home > forward.jsp 로부터 요청받음
    <hr>
    <%
        Date nowTime = new Date();
    %>

    현재 날짜와 시각 : <%= nowTime.toLocaleString() %>
</body>
</html>
