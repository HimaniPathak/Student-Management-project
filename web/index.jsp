<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dz-jp-34
  Date: 13/3/19
  Time: 5:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Welcome to student Management System</title>
  </head>
  <body>
  <h1><c:out value="${'Login through username'}"/></h1>
  <form action= "welcomeServlet" method="POST">
    <label for="name">Name</label>
    <input name="name" id="name">
    <input type="submit">
  </form>

  </body>
</html>
