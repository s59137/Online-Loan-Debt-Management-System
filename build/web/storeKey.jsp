<%-- 
    Document   : storeKey
    Created on : Jun 16, 2022, 9:26:50 PM
    Author     : seepa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <%
        String username =(String) request.getAttribute("keyusername");
        session.setAttribute("keyusername", username);
        System.out.println("This is the key get in storeKey.jsp :"+ username);
        
        RequestDispatcher view = request.getRequestDispatcher("home.jsp");
        view.forward(request, response);
    %>
    <body>
        
    </body>
</html>
