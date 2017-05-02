<%-- 
    Document   : verification
    Created on : 02-05-2017, 09:57:37
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
        <% boolean login = true; %>
        <% String user, pass; %>
        <%
            user = request.getParameter("user");
            pass = request.getParameter("pass");
            %>
        <%-- start web service invocation --%><hr/>
    <%
    try {
	WebServiceClient.ServermanagerService service = new WebServiceClient.ServermanagerService();
	WebServiceClient.ServerI port = service.getServermanagerPort();
	 // TODO initialize WS operation arguments here
	java.lang.String arg0 = "user";
	java.lang.String arg1 = "pass";
	// TODO process result here
	boolean result = port.login(arg0, arg1);
        login = result;
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    
    %>
  
    <%-- end web service invocation --%><hr/>
     <%
        if(login == true)
        {%>
        <jsp:forward page="welcome.jsp"/>
        <%} else
        {%>
        Wrong username or password - try again.
        <jsp:include page="index.jsp"/>
        <%}%>
    
        </body>
</html>
