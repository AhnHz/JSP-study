<%--
  Created by IntelliJ IDEA.
  User: Ahn
  Date: 2023/07/12
  Time: 11:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<html>
<head>
    <title>param 액션 태그</title>
</head>
<body>
    <%
        Date nowTime = new Date();
    %>

    <jsp:forward page="param_process.jsp">
        <jsp:param name="date"
                   value="<%=nowTime.toLocaleString()%>"/>
    </jsp:forward>
</body>
</html>
