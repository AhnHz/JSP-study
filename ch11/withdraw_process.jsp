<%--
  Created by IntelliJ IDEA.
  User: Ahn
  Date: 2023/07/12
  Time: 4:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>

<%
    String u_id = request.getParameter("userID");

    String sql = "delete from members where id = ?";


    String url = "jdbc:mysql://localhost:3306/hz";
    String username = "root";
    String password = "1234qwer";
    Connection conn = null;
    String driverName="com.mysql.jdbc.Driver";

    Class.forName(driverName);
    conn = DriverManager.getConnection(url, username, password);

    PreparedStatement sm = conn.prepareStatement(sql);
    sm.setString(1, u_id);

    int count = sm.executeUpdate();

    if(count==1){
        out.println("회원 탈퇴 성공!");
    }else{
        out.println("회원 탈퇴 실패!");
    }
    sm.close();
    conn.close();
%>
