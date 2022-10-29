<%-- 
    Document   : makeAppt
    Created on : Jun 13, 2022, 12:27:27 PM
    Author     : seepa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Appointment With Financial Advisor</title>
        
        <style>
            label{
                display:inline-block;
                width:210px;
            }
        </style>
        
    </head>
    <body>
        <% 
            String err = (String)request.getAttribute("errorMsg"); 
            String alrt = (String)request.getAttribute("alertMsg"); 
        %>
        
        <h1>Make An Appointment With Our Experts!</h1>
        
        <form action="makeAppt" method="post">
            <label for="name">Enter your username:</label>
            <input type="name" id="username" name="username" placeholder="Enter your username" style="width:250px" autofocus required>
            <br><br>
            <label for="name">Enter your name:</label>
            <input type="name" id="name" name="name" placeholder="E.g. Mohammad Ali bin Akal" style="width:250px" required>
            <br><br>
            <label for="telno">Contact Number:</label>
            <input type="text" id="telno" name="telno" placeholder="E.g. 016-6667777" style="width:150px" required>
            <br><br>
            <label for="email">Email Address:</label>
            <input type="email" id="email" name="email" placeholder="E.g. ali88@yahoo.com" style="width:230px" required>
            <br><br>
            <label for="date">Appointment date:</label>
            <input type="date" id="date" name="date" placeholder="E.g. 20/2/2022" required>
            <br><br>
            <label for="time">Select a time <br> (between 9 A.M. - 6 P.M.)</label>
            <input type="time" id="time" name="time" min="09:00" max="18:00" required>
            <br><br><br>
            <input type="submit" value="Make Appointment">
            <input type="reset" value="Cancel">
        </form>
        <script type="text/javascript">
            
            var err = "<%=err%>";
            if(err === "null")
            { } 
            else
            { alert(err); }
            
            var alertMsg = "<%=alrt%>";
            if(alertMsg === "null")
            { } 
            else
            { alert(alertMsg); }
            
        </script>
    </body>
</html>

