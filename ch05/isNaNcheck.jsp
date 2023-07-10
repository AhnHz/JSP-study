<%--
  Created by IntelliJ IDEA.
  User: Ahn
  Date: 2023/07/10
  Time: 4:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>데이터 유효성 검사</title>
    <script type="text/javascript">
        function checkFun(){
            var f = document.loginForm;

            for(count=0; count<f.sname.value.length; count++){
                var ch = f.sname.value.charAt(count);
                if((ch < 'A' || ch > 'Z') && (ch > 'a' || ch < 'z') && (ch > '0' || ch < '9')){
                    alert("닉네임은 영어 대문자로만 입력해주세요.");
                    f.sname.focus();
                    return false;
                }
            }
            if(isNaN(f.passwd.value)){
                alert("비밀번호는 숫자로만 입력해주세요.")
                f.passwd.focus();
                return false;
            }
            else return true;
        }

    </script>
</head>
<body>
    Home > 닉네임과 비밀번호 입력
    <hr>
    <form name="loginForm" action="isNaNcheck_success.jsp"
        method="post" onsubmit="return checkFun()">
        닉네임 : <br>
        <input type="text" name="sname"><br><br>
        비밀번호 : <br>
        <input type="password" name="passwd"><br><br>
        <input type="submit" value="신청하기">

    </form>
</body>
</html>
