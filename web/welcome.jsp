<%-- 
    Document   : welcome
    Created on : 02-05-2017, 10:41:42
    Author     : Ejer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! String user; %>
        <%
            user = request.getParameter("user");
            %>
        Welcome, <%=user%>
        <br/>
    </body>
</html>
