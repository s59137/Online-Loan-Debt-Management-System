<%-- 
    Document   : editAppt
    Created on : Jun 13, 2022, 12:27:07 PM
    Author     : seepa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Appointment</title>
        <style>
            label {
                display:inline-block;
                width:200px;
            }
        </style>
    </head>
    <body>
        <%
            String err = (String)request.getAttribute("errorMsg");
            String name = null;
            String telno = null;
            String email = null;
            String date = null;
            String time = null;
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/3502project","root","admin");
            Statement s = con.createStatement();
            String qry = "SELECT * FROM faappointment";
            ResultSet rs = s.executeQuery(qry);
            if(rs.next())
            {
                name = rs.getString("name");
                telno = rs.getString("telno");
                email = rs.getString("email");
                date = rs.getString("date");
                time = rs.getString("time");
            }
        %>
        <h1>Update Appointment Details:</h1>
        <br>
        <form action="editAppt">
            <label for="name">Name:</label>
            <input type="text" name="name" id="name" readonly="readonly" style="width:250px" value="<%=name%>">
            <br><br>
            <label for="telno">Contact Number:</label>
            <input type="text" name="telno" id="telno" value="<%=telno%>" placeholder="E.g. 016-6667777" style="width:150px" required autofocus/>
            <br><br>
            <label for="email">Email Address:</label>
            <input type="email" name="email" id="email" value="<%=email%>" placeholder="E.g. ali88@yahoo.com" style="width:230px" required/>
            <br><br>
            <label for="date">Appointment date:</label>
            <input type="date" name="date" id="date" value="<%=date%>" placeholder="E.g. 20/2/2022" required/>
            <br><br>
            <label for="time">Select a time: <br> (between 9 A.M. - 6 P.M.)</label>
            <input type="time" name="time" id="time" value="<%=time%>" min="09:00" max="18:00" required/>
            <br><br><br>
            <input type="submit" value="Save changes">
            <input type="reset" value="Cancel">
        </form>
            
        <script type="text/javascript">
            
            var msg = "<%=err%>";
            if(msg === "null")
            { } 
            else
            { alert(msg); }
        </script>
    </body>
</html>

