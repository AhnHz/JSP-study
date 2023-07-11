<%--
  Created by IntelliJ IDEA.
  User: Ahn
  Date: 2023/07/11
  Time: 10:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>다중 세션 삭제</title>
</head>
<body>
    Home > 다중 세션 삭제하기
    <hr>
    -- 다중 세션 삭제 전 -- <br>
    <%
      String u_id = (String) session.getAttribute("memberID");
      String u_pw = (String) session.getAttribute("memberPW");

      out.println("1. 아이디 세션 속성값 :" + u_id + "<br>");
      out.println("2. 비밀번호 세션 속성값 :" + u_pw + "<br><br>");

      if(request.isRequestedSessionIdValid()){
        out.println(" >> 유효한 세션입니다. <br><br>");
      }
      else{
        out.println(" >> 유효하지 않은 세션입니다. <br><br>");
      }

      session.invalidate();
    %>

    -- 다중 세션 삭제 전 -- <br>
    <%
      if(request.isRequestedSessionIdValid()){
        out.println(" >> 삭제 후에도 유효한 세션입니다. <br><br>");
      }
      else{
        out.println(" >> 삭제되어 유효하지 않은 세션입니다.");
      }
   %>
</body>
</html>
