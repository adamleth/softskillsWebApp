<%-- 
    Document   : hello
    Created on : 02-05-2017, 09:48:09
    Author     : Ejer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><title>login1</title></head>
    <body>
        <h1>Log ind</h1>

        <form method="post" action="verification.jsp">
            Brugernavn: 
            <input type="text" name="username">      <br>
            Adgangskode:
            <input type="password" name="password"> <br>
            <input type="submit" value="Log ind">
        </form>

    </body>
</html>
