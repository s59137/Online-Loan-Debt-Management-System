<%-- 
    Document   : addpayment
    Created on : Jun 10, 2022, 4:31:36 PM
    Author     : seepa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Apply</title>
    </head>
    <body>
        <h1>Applying Loan</h1>
        <form action="DebtPaymentController" method="post">
            <input type="hidden" name="action" value="addpayment">
            <table>

                <tr>
                    <td>
                        Username :
                    </td>
                    <td>
                        <input type="text" name="username">
                    </td>
                </tr>
                <tr>
                    <td>
                        Debt ID :
                    </td>
                    <td>
                        <input type="text" name="debtid" >
                    </td>
                </tr>
                <tr>
                    <td>
                        Bank :
                    </td>
                    <td>
                        <input type="text" name="bank" >
                    </td>
                </tr>
                <tr>
                    <td>
                        Account ID:
                    </td>
                    <td>
                        <input type="text" name="accountid" >
                    </td>
                </tr>
                <tr>
                    <td>
                        Date :
                    </td>
                    <td>
                        <input  type="date" name="date" >
                    </td>
                </tr><!-- comment -->
                <tr>
                    <td>
                        Amount
                    </td>
                    <td>
                        <input type="text" name="amount" >
                    </td>
                </tr>
                <tr>
                    
                </tr>

            </table>
            <button type="submit" name="btnSubmit">Apply</button></a>
            <button type="reset" name="btnReset">Reset</button>
        </form>
    </body>
</html>
