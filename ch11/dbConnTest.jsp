<%--
  Created by IntelliJ IDEA.
  User: Ahn
  Date: 2023/07/12
  Time: 12:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="sun.rmi.transport.Connection" %>
<html>
<head>
    <title> JDBC 커넥션 테스트 </title>
</head>
<body>
    <%
        String driverName="com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/hz";
        String username = "root";
        String password = "1234qwer";
        java.sql.Connection conn = null;

        try{
            // 드라이버 로딩
            Class.forName(driverName);

            // 연동
            conn = DriverManager.getConnection(url, username, password);

            // 사용
            out.println(">> 연결 성공 : " + conn);
        } catch (ClassNotFoundException e){
            out.println(">> 연결 실패 : 드라이버 복사 필요!");
        } catch (SQLException e){
            out.println(">> 연결 실패 : SQL 명령문 확인 필요!");
        } finally {
        }

    %>
</body>
</html>
