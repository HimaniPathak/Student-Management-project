<%--
  Created by IntelliJ IDEA.
  User: dz-jp-34
  Date: 14/3/19
  Time: 6:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*"%>
<html>
<head>
    <title>Records Deleted </title>
</head>
<body>
<%
    String id = request.getParameter("id");
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "Himani", "Himani15");
        Statement st=conn.createStatement();
        int i=st.executeUpdate("DELETE FROM StudentRecord WHERE id="+id);
        out.println("Data Deleted Successfully!");
    }
    catch(Exception e)
    {
        System.out.print(e);
        e.printStackTrace();
    }
%>


</body>
</html>
