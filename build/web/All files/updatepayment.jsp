<%-- 
    Document   : updatepayment
    Created on : Jun 10, 2022, 4:37:46 PM
    Author     : seepa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="DebtPaymentController" method="post">
            <input type="hidden" name="action" value="update">
            <table>
                <tr>
                    <td>
                        Transaction ID :
                    </td>
                    <td>
                        <input type="text" name="username" value="<c:out value="${DebtPayment.transid}"/>" readonly>
                    </td>
                </tr>
                <tr>
                    <td>
                        Username :
                    </td>
                    <td>
                        <input type="text" name="username" value="<c:out value="${DebtPayment.username}"/>" readonly>
                    </td>
                </tr>
                <tr>
                    <td>
                        Debt ID :
                    </td>
                    <td>
                        <input type="text" name="debtid" value="<c:out value="${DebtPayment.debtid}"/>" >
                    </td>
                </tr>
                <tr>
                    <td>
                        Bank :
                    </td>
                    <td>
                        <input type="text" name="bank" value="<c:out value="${DebtPayment.bank}"/>" >
                    </td>
                </tr>
                <tr>
                    <td>
                        Account ID:
                    </td>
                    <td>
                        <input type="text" name="accountid" value="<c:out value="${DebtPayment.accountid}"/>" >
                    </td>
                </tr>
                <tr>
                    <td>
                        Date :
                    </td>
                    <td>
                        <input  type="date" name="date" value="<c:out value="${DebtPayment.date}"/>" >
                    </td>
                </tr><!-- comment -->
                <tr>
                    <td>
                        Amount
                    </td>
                    <td>
                        <input type="text" name="amount" value="<c:out value="${DebtPayment.amount}"/>" >
                    </td>
                </tr>


            </table>
            <button type="submit" name="btnSubmit">Update</button></a>
        <a href=DebtPaymentController?action=view&username=<c:out value="${DebtPayment.username}"/>><button type="submit" name="btnCancel">Cancel</button></a>
    </form>
</body>
</html>
