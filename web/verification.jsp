<%-- 
    Document   : verification
    Created on : 02-05-2017, 09:57:37
    Author     : Ejer
--%>

<%@page import="WebServiceClient.ServerI"%>
<%@page import="javax.xml.ws.Service"%>
<%@page import="javax.xml.namespace.QName"%>
<%@page import="java.net.URL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><title>verification</title></head>
    <body>
        <%
            URL url = new URL("http://ubuntu4.javabog.dk:9959/softskills?wsdl");
            QName qname = new QName("http://Service/", "ServermanagerService");
            Service service = Service.create(url, qname);
            ServerI g = service.getPort(ServerI.class);
            
            if (g.login(request.getParameter("arg0"), request.getParameter("arg1"))) {
                session.setAttribute("logget ind", "ja");
                out.println("Du er logget korrekt ind.<br>");
                response.sendRedirect("index.jsp");
            }
            
            else {
                // fjern attributten "logget ind" fra sessionen
                session.removeAttribute("logget ind");
                out.println("Forkert brugernavn eller adgangskode.<br>");

            }
        %>    


    </body>
</html>
