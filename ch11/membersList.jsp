<%--
  Created by IntelliJ IDEA.
  User: Ahn
  Date: 2023/07/12
  Time: 4:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>

<%
    String u_id = request.getParameter("userID");
    String u_pw = request.getParameter("userPW");
    String u_mail = request.getParameter("userMAIL");

    String driverName="com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/hz";
    String username = "root";
    String password = "1234qwer";
    Connection conn = null;

    Class.forName(driverName);
    conn = DriverManager.getConnection(url, username, password);

    Statement sm = conn.createStatement();
    ResultSet rs = sm.executeQuery("select id, email, signuptime from members");

    String str ="";
    int count = 1;

    while(rs.next()){
        str += count + " : " + rs.getString("id") + " / " + rs.getString("email")
                + " / " + rs.getString("signuptime") + "<br>";

        count++;
    }

    out.println("Home > 회원 가입 명단 <hr>");
    out.println(str);

    rs.close();
    sm.close();
    conn.close();
%>