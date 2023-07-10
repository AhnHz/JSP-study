<%--
  Created by IntelliJ IDEA.
  User: Ahn
  Date: 2023/07/10
  Time: 4:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>데이터 유효성 검사 완료</title>
</head>
<body>
    Home > 닉네임과 비밀번호 입력 성공
    <hr>
    <%
        request.setCharacterEncoding("utf-8");
        String sname=request.getParameter("sname");
        String passwd=request.getParameter("passwd");
    %>

    <p> 닉네임 : <%= sname%>
    <p> 비밀번호 : <%= passwd%>
</body>
</html>
