<%--
  Created by IntelliJ IDEA.
  User: Ahn
  Date: 2023/07/11
  Time: 10:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Enumeration" %>

<html>
<head>
    <title>모든 세션 정보</title>
</head>
<body>
  Home > 모든 세션 정보 확인하기
  <hr>
  <%
    String name = "";
    String value = "";

    Enumeration en = session.getAttributeNames();

    int count = 0;
    while(en.hasMoreElements()){
      count++;
      name = en.nextElement().toString();
      value = session.getAttribute(name).toString();

      out.println(count + ". 세션의 속성 이름 : [" + name + "] <br>");
      out.println(count + ". 세션의 속성값 : [" + value + "] <br>");

    }
  %>
</body>
</html>
