<%--
  Created by IntelliJ IDEA.
  User: Ahn
  Date: 2023/07/12
  Time: 4:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> 회원 탈퇴 </title>
</head>
<body>
    Home > Withdraw the Membership
    <hr>
    <form action="withdraw_process.jsp" name="user_info" method="post">
      <fieldset style="width: 200px">
        <legend> 회원 탈퇴 </legend><p>

        아이디 : <br>
        <input type="text" name="userID"><br>

        <div align="center">
          <input type="submit" value=" 탈퇴하기 "> &nbsp;&nbsp;
        </div><br>
      </fieldset>
    </form>
</body>
</html>
