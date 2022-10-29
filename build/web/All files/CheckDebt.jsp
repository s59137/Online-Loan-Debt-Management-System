<%-- 
    Document   : CheckDebt
    Created on : Jun 11, 2022, 11:08:40 PM
    Author     : seepa
--%>

<%@page import="com.model.CheckDebt"%>
<%@page import="com.dao.CheckDebtDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.setAttribute("username", "S58079");
            String username = (String) session.getAttribute("username");
            
            
            CheckDebtDao dao = new CheckDebtDao();
            CheckDebt check = new CheckDebt();
            
            check =dao.getDebtIdFromDebtPayment(username);
            check =dao.getDetailsFromLoan(username);
            check =dao.getPaymentFromDebtPayment(username);
            
            String debtid = check.getDebtid();
            String loanid = check.getLoanid();
            String loantype = check.getLoantype();
            String totaldebt = check.getTotaldebt();
            String totalamount = check.getAmountpaid();
            
            String remainingdebt =check.CalculateRemaining(totaldebt, totalamount);
            check.setRemainingdebt(remainingdebt);
            
            String remaining = check.getRemainingdebt();
            

        %>
        
        
    <table>
        <thead>
        <th></th>
        <th>Details</th>
    </thead>
    <tbody>
        <tr>

            <td>Debt ID</td>
            <td><p><%=debtid%></p></td>
        </tr>
        <tr>
            <td>Loan ID</td>
            <td><%=loanid%></td>
        </tr>
        <tr>
            <td>Loan Type</td>
            <td><%=loantype%></td>
        </tr>
        <tr>
            <td>Total Debt</td>
            <td><%=totaldebt%></td>
        </tr>
        <tr>
            <td>Total Amount Paid</td>
            <td><%=totalamount%></td>
        </tr>
        <tr>
            <td>Remaining Debt</td>
            <td><%=remaining%></td>
        </tr>
        



    </tbody>
</table>
</body>
</html>
