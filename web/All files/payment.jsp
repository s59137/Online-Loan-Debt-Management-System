<%-- 
    Document   : payment
    Created on : Jun 10, 2022, 4:53:33 PM
    Author     : seepa
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Payment</h1>
        <%
            session.setAttribute("username", "S58079");
            
            String username = (String)session.getAttribute("username");
            
        %>
        
        <a href="DebtPaymentController?action=addpayment"><button>Apply</button></a>
        <a href="DebtPaymentController?action=view&username=<%=username%>"><button>View</button></a>
        <table border="1"'>
            <thead>
                <tr>
                    <th>Transaction ID</th>
                    <th>Username</th>
                    <th>Debt ID</th>
                    <th>Bank</th>
                    <th>Account ID</th>
                    <th>Date</th>
                    <th>Amount</th>
                    <th colspan="2">Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${payment}" var="payment">
                 <tr>
                <td><c:out value="${payment.transid}"/></td>
                <td><c:out value="${payment.username}"/></td>
                <td><c:out value="${payment.debtid}"/></td>
                <td><c:out value="${payment.bank}"/></td>
                <td><c:out value="${payment.accountid}"/></td>
                <td><c:out value="${payment.date}"/></td>
                <td><c:out value="${payment.amount}"/></td>
                <td><a href="DebtPaymentController?action=update&transid=<c:out value="${payment.transid}"/>"><button>Update</button></a></td>
                <td><a href="DebtPaymentController?action=delete&transid=<c:out value="${payment.transid}"/>"><button>Delete</button></a></td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
