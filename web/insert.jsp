<%--
  Created by IntelliJ IDEA.
  User: dz-jp-34
  Date: 13/3/19
  Time: 6:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <h1> Insert new record here</h1>
    <form method="post" action="insertServlet">
        Name: <input type = "text" name = "name"><br>
        Email:<input type = "text" name = "email"><br>
        Age:  <input type = "text" name = "age"><br>
        <input type="submit" value="Save" />
    </form>
</center>
</body>
</html>
