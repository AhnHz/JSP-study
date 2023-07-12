<%--
  Created by IntelliJ IDEA.
  User: Ahn
  Date: 2023/07/12
  Time: 11:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<html>
<head>
    <title>inluce 액션 태그</title>
</head>
<body>
    Home > include_process.jsp 파일에서 수행한 명령
    <hr>
    <%
        Date nowTime = new Date();
    %>

    현재 날짜와 시각 : <%=nowTime.toLocaleString()%>
</body>
</html>
