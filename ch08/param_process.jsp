<%--
  Created by IntelliJ IDEA.
  User: Ahn
  Date: 2023/07/12
  Time: 11:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>현재 위치 : param_process.jsp</title>
</head>
<body>
    Home > param.jsp 로부터 정보를 전달받음
    <hr>
    현재 날짜와 시각 :
    <%=request.getParameter("date")%>
</body>
</html>
