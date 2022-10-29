<%-- 
    Document   : viewLoan
    Created on : Jun 8, 2022, 4:30:33 PM
    Author     : seepa
--%>

<%@page import="com.model.Loan"%>
<%@page import="com.dao.LoanDao" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <%
        LoanDao dao = new LoanDao();
        session.setAttribute("username", "S58079");
        String username  = (String)session.getAttribute("username") ;
        request.setAttribute("loan", dao.getLoanDetailsByUser(username));
    %>
    <body>
        
        <table>
            <tr>
                <td>
                    Username 
                </td>
                <td>
                    <c:out value="${loan.username}"/>
                </td>
            </tr>
            <tr>
                <td>
                    Name
                </td>
                <td>
                    <c:out value="${loan.name}"/>
                </td>
            </tr>
            <tr>
                <td>
                    Loan Type
                </td>
                <td>
                    <c:out value="${loan.loanType}"/>
                </td>
            </tr>
            <tr>
                <td>
                    Initial Loan Date 
                </td>
                <td>
                    <c:out value="${loan.initialDate}"/>
                </td>
            </tr><!-- comment -->
            
            
            <tr>
                <td>
                    Duration
                </td>
                <td>
                    <c:out value="${loan.duration}"/>
                </td>
            </tr>
            
            <tr>
                <td>
                    Total Amount
                </td>
                <td>
                    <c:out value="${loan.totalAmount}"/>
                </td>
            </tr>
            
            <tr>
                <td>
                    Monthly Loan
                </td>
                <td>
                    <c:out value="${loan.monthlyLoan}"/>
                </td>
            </tr><!-- comment -->
            <tr>
                <td>
                    Interest Rate
                </td>
                <td>
                    <c:out value="${loan.interestRate}"/>
                </td>
            </tr>
            
        </table>
                    <a href="LoanController?action=view&username=<%=username%>"><button>View all</button></a>
    </body>
</html>
