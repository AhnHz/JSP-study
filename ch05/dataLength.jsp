<%--
  Created by IntelliJ IDEA.
  User: Ahn
  Date: 2023/07/10
  Time: 3:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>입력 데이터의 길이 체크</title>
    <script type="text/javascript">
        function checkFun()
        {
            var f = document.loginForm;
            if(f.id.value.length < 4 || f.id.value.length > 16){
                alert("아이디는 4~16자 이내로 입력해야 합니다.");
                f.id.focus();
                return false;
            }
            else if(f.passwd.value.length < 8){
                alert("비밀번호는 8자 이상으로 입력해야 합니다.");
                f.passwd.focus();
                return false;
            }
            else return true;
        }

    </script>
</head>
<body>
    Home > 아이디와 비밀번호 입력
    <hr>
    <form name="loginForm" action="dataLength_success.jsp"
        method="post" onsubmit="return checkFun()">
        아이디 : <br>
        <input type="text" name="id"><br><br>
        비밀번호 : <br>
        <input type="password" name="passwd"><br><br>
        <input type="submit" value=" 로그인 ">

    </form>
</body>
</html>
