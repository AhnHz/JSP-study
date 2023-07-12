<%--
  Created by IntelliJ IDEA.
  User: Ahn
  Date: 2023/07/12
  Time: 11:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> use Bean 액션 태그</title>
</head>
<body>
    Home > useBean 액션 태그로 오늘의 날짜와 시각 출력
    <hr>
    <jsp:useBean id="nowTime" class="java.util.Date"/>
    <%=nowTime.toLocaleString()%>
</body>
</html>
