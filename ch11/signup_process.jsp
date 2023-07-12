<%--
  Created by IntelliJ IDEA.
  User: Ahn
  Date: 2023/07/12
  Time: 3:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>


<%
  String u_id = request.getParameter("userID");
  String u_pw = request.getParameter("userPW");
  String u_mail = request.getParameter("userMAIL");

  String sql = "insert into members(id, passwd, email) values";
  sql += "('" + u_id + "','" + u_pw + "','" + u_mail + "')";

  String url = "jdbc:mysql://localhost:3306/hz";
  String username = "root";
  String password = "1234qwer";
  Connection conn = null;
  String driverName="com.mysql.jdbc.Driver";

  Class.forName(driverName);
  conn = DriverManager.getConnection(url, username, password);
  Statement sm = conn.createStatement();

  int count = sm.executeUpdate(sql);
  if(count==1){
    out.println("회원 가입 성공!");
  }else{
    out.println("회원 가입 실패!");
  }
  sm.close();
  conn.close();
%>
