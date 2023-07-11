<%@ page import="com.sun.org.apache.xalan.internal.res.XSLTErrorResources_es" %><%--
  Created by IntelliJ IDEA.
  User: Ahn
  Date: 2023/07/11
  Time: 10:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>단일 세션 정보</title>
</head>
<body>
    Home > 단일 세션 정보 확인하기
    <hr>
    <%
        String u_id = (String) session.getAttribute("memberID");
        String u_pw = (String) session.getAttribute("memberPW");

        out.println("1. 아이디 세션 속성값 :" + u_id + "<br>");
        out.println("2. 비밀번호 세션 속성값 :" + u_pw + "<br>");

    %>
</body>
</html>
