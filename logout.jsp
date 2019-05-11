<%-- 
    Document   : logout
    Created on : Jun 22, 2017, 2:10:09 AM
    Author     : Rishabh Sachan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            session= request.getSession();
            
            session.invalidate();
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
