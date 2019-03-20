<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%--
  Created by IntelliJ IDEA.
  User: dz-jp-34
  Date: 13/3/19
  Time: 5:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>



<html>
<head>
    <title>Student Management system</title>
</head>
<body>
<center>
    <h1>Student Management</h1>
    <h2>
        <input type=button onClick="parent.location='insert.jsp'" value='ADD'>
        <input type=button onClick="parent.location='update.jsp'" value='UPDATE'>
<%
        String id = request.getParameter("userId");
        String driverName = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String dbName = "Student";
        String userId = "Himani";
        String password = "Himani15";

        try {
        Class.forName(driverName);
        } catch
        (ClassNotFoundException e)
        {
        e.printStackTrace();
        }

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        %>
        <h2 align="center"><font><strong>Student Record </strong></font></h2>
        <table align="center" cellpadding="5" cellspacing="5" border="1">
            <tr>

            </tr>
            <tr bgcolor="#A52A2A">
                <td><b>id</b></td>
                <td><b>Name</b></td>
                <td><b>Email</b></td>
                <td><b>Age</b></td>

            </tr>
            <%
                try{
                    connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                    statement=connection.createStatement();
                    String sql ="SELECT * FROM StudentRecord";

                    resultSet = statement.executeQuery(sql);
                    while(resultSet.next())
                    {

            %>
            <tr bgcolor="#DEB887">

                <td><%=resultSet.getString("id") %></td>
                <td><%=resultSet.getString("Name") %></td>
                <td><%=resultSet.getString("email") %></td>
                <td><%=resultSet.getString("age") %></td>
                <td><a href="/deleteServlet?id=<%=resultSet.getString("id")%>">Delete</a></td>
            </tr>

            <%
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </table>


