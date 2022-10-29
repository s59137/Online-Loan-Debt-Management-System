<%-- 
    Document   : viewAppt
    Created on : Jun 13, 2022, 12:27:45 PM
    Author     : seepa
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Appointment Details</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    </head>
    <body>
        <%
            session.setAttribute("username", "S58079");
             
            
            String info = (String)request.getAttribute("infoMsg");
            String alrt = (String)request.getAttribute("alertMsg");
            String updated = (String)request.getAttribute("updatedMsg");
            
            String username = null;
            String name = null;
            String telno = null;
            String email = null;
            String date = null;
            String time = null;
            
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/3502project","root","admin");
            Statement s = con.createStatement();
            String qry = "SELECT * FROM faappointment WHERE username='"+(String)session.getAttribute("username")+"'";
            ResultSet rs = s.executeQuery(qry);
            if(rs.next())
            {
                username = rs.getString("username");
                name = rs.getString("name");
                telno = rs.getString("telno");
                email = rs.getString("email");
                date = rs.getString("date");
                time = rs.getString("time");
            }
        %>
        <h1>Appointment Details:</h1>
        <br>
        <p>Username: <%=username%></p>
        <p>Name: <%=name%></p>
        <p>Contact Number: <%=telno%></p>
        <p>Email Address: <%=email%></p>
        <p>Date: <%=date%></p>
        <p>Time: <%=time%></p>
        <a href="editAppt.jsp">Update</a>
        <a onclick="myFunction()">Delete</a>
        <script>
            var msg = "<%=info%>";
            if(msg === "null")
            { } 
            else
            { alert(msg); }
            
            var msge = "<%=alrt%>";
            if(msge === "null")
            { } 
            else
            { alert(msge); }
            
            var msage = "<%=updated%>";
            if(msage === "null")
            { } 
            else
            { alert(msage); }
            
            function myFunction() {
                var text = confirm("Are you sure you want to delete the appointment?");
                if (text) {
                    window.location.href = "deleteAppt?name=<%=name%>";
                }   
            }
        </script>
    </body>
</html>
