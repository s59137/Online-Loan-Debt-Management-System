<%-- 
    Document   : CustomerJsp
    Created on : Jun 13, 2022, 10:45:49 AM
    Author     : seepa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.model.CheckDebt"%>
<%@page import="com.dao.CheckDebtDao"%>
<%@page import="com.model.Loan"%>
<%@page import="com.dao.LoanDao" %>
<%@page import="com.model.DebtPayment" %>
<%@page import="com.dao.DebtPaymentDao" %>
<%@page import="java.sql.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html style="font-size: 16px;">

    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <meta name="keywords" content="Personal Information">
        <meta name="description" content="">
        <meta name="page_type" content="np-template-header-footer-from-plugin">
        <title>Customer</title>
        <link rel="stylesheet" href="nicepage.css" media="screen">
        <link rel="stylesheet" href="Customer.css" media="screen">
        <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
        <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
        <meta name="generator" content="Nicepage 4.2.6, nicepage.com">
        <link id="u-theme-google-font" rel="stylesheet"
              href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">


        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <script type="application/ld+json">{
            "@context": "http://schema.org",
            "@type": "Organization",
            "name": "",
            "logo": "images/799a2edcdf102780dd74a7c29f58ce481ad385758db04fdf3c7d752b9f0243c40aa4817e76a300d7ca57750fe62aca9f2903b43e8cae48861935aa_1280.png"
            }</script>
        <meta name="theme-color" content="#478ac9">
        <meta property="og:title" content="Customer">
        <meta property="og:type" content="website">
    </head>

    <body class="u-body">
        <%
            String keyusername = request.getParameter("keyusername");
            System.out.println("I got the key of :" + keyusername);

        %>
        <header class="u-clearfix u-header u-header" id="sec-c1d4">
            <div class="u-clearfix u-sheet u-sheet-1">
                <a href="Home.html" class="u-image u-logo u-image-1" data-image-width="1280" data-image-height="1280">
                    <img
                        src="images/799a2edcdf102780dd74a7c29f58ce481ad385758db04fdf3c7d752b9f0243c40aa4817e76a300d7ca57750fe62aca9f2903b43e8cae48861935aa_1280.png"
                        class="u-logo-image u-logo-image-1">
                </a>
                <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
                    <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
                        <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
                           href="#">
                            <svg viewBox="0 0 24 24">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use>
                            </svg>
                            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                            <defs>
                            <symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;">
                                <rect y="1" width="16" height="2"></rect>
                                <rect y="7" width="16" height="2"></rect>
                                <rect y="13" width="16" height="2"></rect>
                            </symbol>
                            </defs>
                            </svg>
                        </a>
                    </div>
                    <div class="u-custom-menu u-nav-container">
                        <ul class="u-nav u-unstyled u-nav-1">
                            <li class="u-nav-item"><a
                                    class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
                                    href="Home.html" style="padding: 10px 20px;">Home</a>
                            </li>
                            <li class="u-nav-item"><a
                                    class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
                                    href="Customer.html" style="padding: 10px 20px;">Customer</a>
                            </li>
                            <li class="u-nav-item"><a
                                    class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
                                    href="Financial-Advisor.html" style="padding: 10px 20px;">Financial Advisor</a>
                            </li>
                            <li class="u-nav-item"><a
                                    class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
                                    href="index.html" style="padding: 10px 20px;">Login</a>
                            </li>
                        </ul>
                    </div>
                    <div class="u-custom-menu u-nav-container-collapse">
                        <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
                            <div class="u-inner-container-layout u-sidenav-overflow">
                                <div class="u-menu-close"></div>
                                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
                                    <li class="u-nav-item"><a class="u-button-style u-nav-link" href="/Home.html"
                                                              style="padding: 10px 20px;">Home</a>
                                    </li>
                                    <li class="u-nav-item"><a class="u-button-style u-nav-link" href="/Customer.html"
                                                              style="padding: 10px 20px;">Customer</a>
                                    </li>
                                    <li class="u-nav-item"><a class="u-button-style u-nav-link" href="/Financial-Advisor.html"
                                                              style="padding: 10px 20px;">Financial Advisor</a>
                                    </li>
                                    <li class="u-nav-item"><a class="u-button-style u-nav-link" href="index.html" style="padding: 10px 20px;">Login</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
                    </div>
                </nav>
            </div>
        </header>
        <section class="u-align-center u-clearfix u-image u-shading u-section-1" src="" data-image-width="1280"
                 data-image-height="853" id="sec-0b8d">
            <div class="u-clearfix u-sheet u-sheet-1">
                <div class="u-expanded-width u-tabs u-tabs-1">
                    <ul class="u-tab-list u-unstyled" role="tablist">
                        <li class="u-tab-item u-tab-item-1" role="presentation">
                            <a class="active u-button-style u-tab-link" id="link-tab-0764" href="#tab-0764" role="tab"
                               aria-controls="tab-0764" aria-selected="true">Update Details</a>
                        </li>
                        <li class="u-tab-item u-tab-item-2" role="presentation">
                            <a class="u-button-style u-tab-link" id="link-tab-56bf" href="#tab-56bf" role="tab" aria-controls="tab-56bf"
                               aria-selected="false">Manage Loans</a>
                        </li>
                        <li class="u-tab-item" role="presentation">
                            <a class="u-button-style u-tab-link" id="link-tab-400d" href="#tab-400d" role="tab" aria-controls="tab-400d"
                               aria-selected="false">Manage Debt</a>
                        </li>
                        <li class="u-tab-item" role="presentation">
                            <a class="u-button-style u-tab-link" id="link-tab-bf08" href="#tab-bf08" role="tab" aria-controls="tab-bf08"
                               aria-selected="false">Contact Advisor</a>
                        </li>
                    </ul>
                    <div class="u-tab-content">
                        <div class="u-container-style u-tab-pane u-tab-pane-1" id="tab-56bf" role="tabpanel"
                             aria-labelledby="link-tab-56bf">
                            <div class="u-container-layout u-container-layout-1">
                                <div class="u-expanded-width u-tabs u-tabs-2">
                                    <!-- Loan Sub Nav -->
                                    <ul class="u-tab-list u-unstyled" role="tablist">
                                        <li class="u-tab-item" role="presentation">
                                            <a class="active u-button-style u-tab-link" id="link-tab-4168" href="#tab-4168" role="tab"
                                               aria-controls="tab-4168" aria-selected="true">Check Loan</a>
                                        </li>
                                        <li class="u-tab-item" role="presentation">
                                            <a class="u-button-style u-tab-link" id="link-tab-8e52" href="#tab-8e52" role="tab"
                                               aria-controls="tab-8e52" aria-selected="false">Apply Loan</a>
                                        </li>
                                    </ul>
                                    <!-- View Loan Details -->

                                    <%                                        LoanDao ViewLoandao = new LoanDao();
                                        Loan loan = new Loan();
                                        session.setAttribute("username", keyusername);
                                        String username = (String) session.getAttribute("username");
                                        loan = ViewLoandao.getLoanDetailsByUser(username);

                                        String loanusername = null, loanname = null, loantype = null, loaninitialdate = null, loanduration = null, loanamount = null, loanmonthlyloan = null, loaninterestrate = null;
                                        loanusername = loan.getUsername();
                                        loanname = loan.getName();
                                        loantype = loan.getLoanType();
                                        loaninitialdate = loan.getInitialDate();
                                        loanduration = loan.getDuration();
                                        loanamount = loan.getTotalAmount();
                                        loanmonthlyloan = loan.getMonthlyLoan();
                                        loaninterestrate = loan.getInterestRate();


                                    %>
                                    <div class="u-tab-content">
                                        <div class="u-container-style u-tab-active u-tab-pane" id="tab-4168" role="tabpanel"
                                             aria-labelledby="link-tab-4168">
                                            <div class="u-container-layout u-container-layout-2">
                                                <div class="u-table u-table-responsive u-table-1">
                                                    <table class="u-table-entity">
                                                        <colgroup>
                                                            <col width="50%">
                                                            <col width="50%">
                                                        </colgroup>
                                                        <tbody class="u-table-body">
                                                            <tr style="height: 59px;">
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell">Details</td>
                                                            </tr>
                                                            <tr style="height: 26px;">
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell">Username</td>
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell"><%=loanusername%></td>
                                                            </tr>
                                                            <tr style="height: 65px;">
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell">Name</td>
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell"><%=loanname%></td>
                                                            </tr>
                                                            <tr style="height: 65px;">
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell">Loan Type</td>
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell"><%=loantype%></td>
                                                            </tr>
                                                            <tr style="height: 65px;">
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell">Initial Loan Date</td>
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell"><%=loaninitialdate%></td>
                                                            </tr>
                                                            <tr style="height: 65px;">
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell">Duration</td>
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell"><%=loanduration%></td>
                                                            </tr>
                                                            <tr style="height: 65px;">
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell">Total Amount (RM)&nbsp;</td>
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell"><%=loanamount%></td>
                                                            </tr>
                                                            <tr style="height: 65px;">
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell">Monthly Loan</td>
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell"><%=loanmonthlyloan%></td>
                                                            </tr>
                                                            <tr style="height: 65px;">
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell">Interest Rate</td>
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell"><%=loaninterestrate%></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <!--Add Payment-->
                                        <div class="u-align-center u-container-style u-tab-pane" id="tab-8e52" role="tabpanel"
                                             aria-labelledby="link-tab-8e52">
                                            <div class="u-container-layout u-container-layout-3">
                                                <div class="u-align-center u-table u-table-responsive u-table-2">
                                                    <table class="u-table-entity">
                                                        <colgroup>
                                                            <col width="25%">
                                                            <col width="25%">
                                                            <col width="25%">
                                                            <col width="25%">
                                                        </colgroup>
                                                        <tbody class="u-table-body">
                                                            <tr style="height: 75px;">
                                                                <td class="u-align-center u-border-1 u-border-grey-dark-1 u-table-cell"></td>
                                                                <td class="u-align-left u-border-1 u-border-grey-dark-1 u-table-cell u-table-cell-20">Plan
                                                                    001</td>
                                                                <td class="u-border-1 u-border-grey-dark-1 u-table-cell u-table-cell-21">Plan 002</td>
                                                                <td class="u-border-1 u-border-grey-dark-1 u-table-cell u-table-cell-22">Plan 003</td>
                                                            </tr>
                                                            <tr style="height: 66px;">
                                                                <td class="u-border-1 u-border-grey-dark-1 u-table-cell u-table-cell-23">Loan Type</td>
                                                                <td class="u-border-1 u-border-grey-dark-1 u-table-cell">Personal Loan</td>
                                                                <td class="u-border-1 u-border-grey-dark-1 u-table-cell">Home Loan</td>
                                                                <td class="u-border-1 u-border-grey-dark-1 u-table-cell">Education Loan</td>
                                                            </tr>
                                                            <tr style="height: 66px;">
                                                                <td class="u-border-1 u-border-grey-dark-1 u-table-cell u-table-cell-27">Total Amount</td>
                                                                <td class="u-border-1 u-border-grey-dark-1 u-table-cell">RM 100,000.00</td>
                                                                <td class="u-border-1 u-border-grey-dark-1 u-table-cell">RM 300,000.00</td>
                                                                <td class="u-border-1 u-border-grey-dark-1 u-table-cell">RM 200,00.00</td>
                                                            </tr>
                                                            <tr style="height: 66px;">
                                                                <td class="u-border-1 u-border-grey-dark-1 u-table-cell u-table-cell-31">Duration</td>
                                                                <td class="u-border-1 u-border-grey-dark-1 u-table-cell">5 Years</td>
                                                                <td class="u-border-1 u-border-grey-dark-1 u-table-cell">10 Years</td>
                                                                <td class="u-border-1 u-border-grey-dark-1 u-table-cell">5 Years</td>
                                                            </tr>
                                                            <tr style="height: 93px;">
                                                                <td class="u-border-1 u-border-grey-dark-1 u-table-cell u-table-cell-35">Interest Rate (%)
                                                                </td>
                                                                <td class="u-border-1 u-border-grey-dark-1 u-table-cell">3 % per month</td>
                                                                <td class="u-border-1 u-border-grey-dark-1 u-table-cell">1% per month</td>
                                                                <td class="u-border-1 u-border-grey-dark-1 u-table-cell">5% per month</td>
                                                            </tr>

                                                            <tr style="height: 66px;" >

                                                                <td class="u-border-1 u-border-grey-dark-1 u-table-cell"></td>
                                                                <td class="u-border-1 u-border-grey-dark-1 u-table-cell u-table-cell-40" ><form action="applyLoan.jsp" method="post" id="frmapply1"><input type="hidden" name="loanid" value="1"><button class="btn btn-primary" value="1" id="btnapply1">Apply Now</button></form></td>
                                                                <td class="u-border-1 u-border-grey-dark-1 u-table-cell u-table-cell-41"><form action="applyLoan.jsp" method="post"><input type="hidden" name="loanid" value="2"><button class="btn btn-primary"  >Apply Now</button></form> </td>
                                                                <td class="u-border-1 u-border-grey-dark-1 u-table-cell"><form action="applyLoan.jsp" method="post"><input type="hidden" name="loanid" value="3"><button class="btn btn-primary">Apply Now</button></form> </td>

                                                            </tr>

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Personal information input bar -->
                        <%
                            int result;
                            String password = null, name = null, birthdate = null, gender = null, address = null, phonenumber = null;

                            Class.forName("com.mysql.jdbc.Driver");

                            String myURL = "jdbc:mysql://localhost/3502project";
                            Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
                            Statement st = myConnection.createStatement();
                            String sInsertQry = "SELECT * FROM users where username='" + username + "'";

                            ResultSet rs = st.executeQuery(sInsertQry);

                            if (rs.next()) {
                                password = rs.getString("password");
                                name = rs.getString("name");
                                birthdate = rs.getString("birthdate");
                                gender = rs.getString("gender");
                                address = rs.getString("address");
                                phonenumber = rs.getString("phonenumber");
                            }

                        %>
                        <div class="u-container-style u-tab-pane u-tab-pane-4" id="tab-f801" role="tabpanel"
                             aria-labelledby="link-tab-f801">
                            <div class="u-container-layout u-container-layout-4"></div>
                        </div>
                        <div class="u-container-style u-tab-active u-tab-pane u-tab-pane-5" id="tab-0764" role="tabpanel"
                             aria-labelledby="link-tab-0764">
                            <div class="u-container-layout u-container-layout-5">
                                <h2 class="u-text u-text-default u-text-1">Personal Information</h2>
                                <div class="u-form u-form-1">
                                    <form action="updateServ" method="POST" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form"
                                          source="custom" name="form" style="padding: 10px;">
                                        <div class="u-form-group u-form-name">
                                            <label for="name-dcc7" class="u-form-control u-label">Username :</label>
                                            <input type="text"  id="name-dcc7" name="username" value="<%=username%>" readonly
                                                   class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                                        </div>
                                        <div class="u-form-group u-form-group-2">
                                            <label for="text-1112" class="u-form-control u-label">Password :</label>
                                            <input type="text"  id="text-1112" name="password" value="<%=password%>" readonly
                                                   class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                        </div>
                                        <div class="u-form-group u-form-group-3">
                                            <label for="text-4840" class="u-form-control u-label">Name :</label>
                                            <input type="text" id="text-4840" name="name" value="<%=name%>" readonly
                                                   class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                        </div>
                                        <div class="u-form-group u-form-group-4">
                                            <label for="text-ba88" class="u-form-control u-label">Birth Date</label>
                                            <input type="text"  id="text-ba88" name="birthdate" value="<%=birthdate%>" 
                                                   class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                        </div>
                                        <div class="u-form-group u-form-group-5">
                                            <label for="text-6a6e" class="u-form-control u-label">Gender :</label>
                                            <input type="text" 
                                                   id="text-6a6e" name="gender" value="<%=gender%>" readonly
                                                   class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                        </div>
                                        <div class="u-form-group u-form-group-6">
                                            <label for="text-353e" class="u-form-control u-label">Address :</label>
                                            <input type="text"  id="text-353e" name="address" value="<%=address%>" 
                                                   class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                        </div>
                                        <div class="u-form-group u-form-group-7">
                                            <label for="text-353e" class="u-form-control u-label">Phone Number :</label>
                                            <input type="text"  id="text-353e" name="phonenumber" value="<%=phonenumber%>" 
                                                   class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                        </div>

                                        <br> <br><!-- gap between details and update button -->      

                                        <div class="u-align-left u-form-group u-form-submit">
                                            <a href="updateServ" class="u-btn u-btn-submit u-button-style">Update<br>
                                            </a>
                                            <input type="submit" value="submit" class="u-form-control-hidden">
                                        </div>

                                        <div class="u-form-send-error u-form-send-message"> Your Profile has been updated. Please reload the page!</div>
                                        <input type="hidden" value="" name="recaptchaResponse">
                                    </form>
                                </div>

                            </div>
                        </div>
                        <!-- Debt Top nav -->
                        <div class="u-container-style u-tab-pane u-tab-pane-6" id="tab-400d" role="tabpanel"
                             aria-labelledby="link-tab-400d">
                            <div class="u-container-layout u-container-layout-6">
                                <div class="u-expanded-width u-tabs u-tabs-3">
                                    <ul class="u-tab-list u-unstyled" role="tablist">
                                        <li class="u-tab-item" role="presentation">
                                            <a class="active u-button-style u-tab-link" id="link-tab-c00c" href="#tab-c00c" role="tab"
                                               aria-controls="tab-c00c" aria-selected="true">Check Debt</a>
                                        </li>
                                        <li class="u-tab-item" role="presentation">
                                            <a class="u-button-style u-tab-link" id="link-tab-6556" href="#tab-6556" role="tab"
                                               aria-controls="tab-6556" aria-selected="false">Pay Debt</a>
                                        </li>
                                        <li class="u-tab-item" role="presentation">
                                            <a class="u-button-style u-tab-link" id="link-tab-3caa" href="#tab-3caa" role="tab"
                                               aria-controls="tab-3caa" aria-selected="false">Transaction</a>
                                        </li>
                                    </ul>

                                    <!-- View Debt Details -->
                                    <%
                                        CheckDebtDao CheckDebtdao = new CheckDebtDao();
                                        CheckDebt check = new CheckDebt();

                                        check = CheckDebtdao.getDebtIdFromDebtPayment(username);
                                        check = CheckDebtdao.getDetailsFromLoan(username);
                                        check = CheckDebtdao.getPaymentFromDebtPayment(username);

                                        String debtdebtid = null, debtloanid = null, debtloantype = null, debttotaldebt = null, debttotalamount = null, remaining = null;

                                        debtdebtid = check.getDebtid();
                                        debtloanid = check.getLoanid();
                                        debtloantype = check.getLoantype();
                                        debttotaldebt = check.getTotaldebt();
                                        debttotalamount = check.getAmountpaid();

                                        String remainingdebt = check.CalculateRemaining(debttotaldebt, debttotalamount);
                                        check.setRemainingdebt(remainingdebt);

                                        remaining = check.getRemainingdebt();
                                    %>
                                    <div class="u-tab-content">
                                        <div class="u-container-style u-tab-pane" id="tab-c00c" role="tabpanel"
                                             aria-labelledby="link-tab-c00c">
                                            <div class="u-container-layout u-container-layout-7">
                                                <div class="u-table u-table-responsive u-table-3">
                                                    <table class="u-table-entity">
                                                        <colgroup>
                                                            <col width="50%">
                                                            <col width="50%">
                                                        </colgroup>
                                                        <tbody class="u-table-body">
                                                            <tr style="height: 63px;">
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell"></td>
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell">Details</td>
                                                            </tr>
                                                            <tr style="height: 46px;">
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell">Debt ID :</td>
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell"><%=debtdebtid%></td>
                                                            </tr>
                                                            <tr style="height: 26px;">
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell">Loan ID :</td>
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell"><%=debtloanid%></td>
                                                            </tr>
                                                            <tr style="height: 65px;">
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell">Loan Type :</td>
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell"><%=debtloantype%></td>
                                                            </tr>
                                                            <tr style="height: 65px;">
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell">Total Debt</td>
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell"><%=debttotaldebt%></td>
                                                            </tr>
                                                            <tr style="height: 65px;">
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell"> Total Amount Paid</td>
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell"> <%=debttotalamount%></td>
                                                            </tr>
                                                            <tr style="height: 65px;">
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell">Remaining Debt</td>
                                                                <td class="u-border-1 u-border-grey-30 u-table-cell"><%=remaining%></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Add Payment for Debt -->
                                        <div class="u-container-style u-tab-pane" id="tab-6556" role="tabpanel"
                                             aria-labelledby="link-tab-6556">
                                            <div class="u-container-layout u-container-layout-8">
                                                <h1 class="u-text u-text-default u-text-12">Payment</h1>
                                                <div class="u-form u-form-2">
                                                    <form action="DebtPaymentController" method="POST" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form"
                                                          source="custom" name="form-1" style="padding: 10px;">
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

                                                        </table>

                                                        <button type="submit" name="btnSubmit">Apply</button></a>
                                                        <button type="reset" name="btnReset">Reset</button>

                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- View All Transactions (come back here later) -->
                                        <%
                                            DebtPaymentDao DebtPaymentDao = new DebtPaymentDao();
                                            DebtPaymentDao.viewAllPaymentByUser(username);
                                            request.setAttribute("payment", DebtPaymentDao.viewAllPaymentByUser(username));

                                            DebtPayment payment = new DebtPayment();
                                            String paymenttransid = null, paymentusername = null, paymentdebtid = null, paymentbank = null, paymentaccountid = null, paymentdate = null, paymentamount = null;
                                        %>
                                        <div class="u-container-style u-tab-pane" id="tab-3caa" role="tabpanel"
                                             aria-labelledby="link-tab-3caa">
                                            <div class="u-container-layout u-container-layout-9">
                                                <div class="u-table u-table-responsive u-table-4">
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
                                                </div>

                                            </div> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Add Appointment -->
                        <%
                            String err = (String) request.getAttribute("errorMsg");
                            String alrt = (String) request.getAttribute("alertMsg");


                        %>
                        <script type="text/javascript">

                            var err = "<%=err%>";
                            if (err === "null")
                            {
                            } else
                            {
                                alert(err);
                            }

                            var alertMsg = "<%=alrt%>";
                            if (alertMsg === "null")
                            {
                            } else
                            {
                                alert(alertMsg);
                            }

                        </script>
                        <div class="u-container-style u-tab-pane" id="tab-bf08" role="tabpanel" aria-labelledby="link-tab-bf08">
                            <div class="u-container-layout u-container-layout-10">
                                <h1 class="u-text u-title u-text-13">Talk with our experts</h1>
                                <p class="u-large-text u-text u-text-default u-text-variant u-text-14">All the information will be
                                    recorded for training purposes.</p>
                                <div class="u-form u-form-3">
                                    <form action="makeAppt" method="post">
                                        <table>
                                            <tr>
                                                <td><label for="name">Enter your username:</label></td>
                                                <td><input type="name" id="username" name="username" placeholder="Enter your username" style="width:250px" autofocus required></td>
                                            </tr>
                                            <tr>
                                                <td><label for="name">Enter your name:</label></td>
                                                <td><input type="name" id="name" name="name" placeholder="E.g. Mohammad Ali bin Akal" style="width:250px" required></td>
                                            </tr>
                                            <tr>
                                                <td><label for="telno">Contact Number:</label></td>
                                                <td><input type="text" id="telno" name="telno" placeholder="E.g. 016-6667777" style="width:150px" required></td>
                                            </tr>
                                            <tr>
                                                <td><label for="email">Email Address:</label></td>
                                                <td><input type="email" id="email" name="email" placeholder="E.g. ali88@yahoo.com" style="width:230px" required></td>
                                            </tr>
                                            <tr>
                                                <td><label for="date">Appointment date:</label></td>
                                                <td><input type="date" id="date" name="date" placeholder="E.g. 20/2/2022" required></td>
                                            </tr>
                                            <tr>
                                                <td><label for="time">Select a time <br> (between 9 A.M. - 6 P.M.)</label></td>
                                                <td><input type="time" id="time" name="time" min="09:00" max="18:00" required></td>
                                            </tr>
                                        </table>
                                        <td><input type="submit" value="Make Appointment"></td>
                                        <td><input type="reset" value="Cancel"></td>
                                    </form>


                                    <br><br>
                                    <hr><!-- comment -->
                                    <h1> Appointment</h1>
                                    <%
                                        session.setAttribute("username", keyusername);

                                        String info = (String) request.getAttribute("infoMsg");

                                        String updated = (String) request.getAttribute("updatedMsg");

                                        String usernameforAppointment = null;
                                        String nameforAppointment = null;
                                        String telno = null;
                                        String email = null;
                                        String date = null;
                                        String time = null;

                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/3502project", "root", "admin");
                                        Statement s = con.createStatement();
                                        String qry = "SELECT * FROM faappointment WHERE username='" + (String) session.getAttribute("username") + "'";
                                        rs = s.executeQuery(qry);
                                        if (rs.next()) {
                                            usernameforAppointment = rs.getString("username");
                                            name = rs.getString("name");
                                            telno = rs.getString("telno");
                                            email = rs.getString("email");
                                            date = rs.getString("date");
                                            time = rs.getString("time");
                                        }
                                    %>
                                    <h5>Appointment Details:</h5>
                                    <br>
                                    <p>Username: <%=username%></p>
                                    <p>Name: <%=name%></p>
                                    <p>Contact Number: <%=telno%></p>
                                    <p>Email Address: <%=email%></p>
                                    <p>Date: <%=date%></p>
                                    <p>Time: <%=time%></p>
                                    <a href="editAppt.jsp"><button>Update</button></a>
                                    <a onclick="myFunction()"><button>Delete</button></a>
                                    <script>
                                        var msg = "<%=info%>";
                                        if (msg === "null")
                                        {
                                        } else
                                        {
                                            alert(msg);
                                        }

                                        var msge = "<%=alrt%>";
                                        if (msge === "null")
                                        {
                                        } else
                                        {
                                            alert(msge);
                                        }

                                        var msage = "<%=updated%>";
                                        if (msage === "null")
                                        {
                                        } else
                                        {
                                            alert(msage);
                                        }

                                        function myFunction() {
                                            var text = confirm("Are you sure you want to delete the appointment?");
                                            if (text) {
                                                window.location.href = "deleteAppt?name=<%=name%>";
                                            }
                                        }
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="u-clearfix u-section-2" id="sec-f92e">
        <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
            <div class="u-list u-list-1">
                <div class="u-repeater u-repeater-1">
                    <div class="u-align-center u-container-style u-list-item u-repeater-item">
                        <div class="u-container-layout u-similar-container u-valign-top u-container-layout-1">
                            <div alt="" class="u-image u-image-circle u-image-1" src="" data-image-width="500"
                                 data-image-height="500"></div>
                            <h5 class="u-align-center-lg u-align-center-md u-align-center-sm u-align-center-xs u-text u-text-1">Jack
                                Alvarez</h5>
                            <p class="u-align-center-lg u-align-center-md u-align-center-sm u-align-center-xs u-text u-text-2">
                                Financial Advisor</p>
                        </div>
                    </div>
                    <div class="u-align-center u-container-style u-list-item u-repeater-item">
                        <div class="u-container-layout u-similar-container u-valign-top u-container-layout-2">
                            <div alt="" class="u-image u-image-circle u-image-2" src="" data-image-width="500"
                                 data-image-height="500"></div>
                            <h5 class="u-text u-text-3">Nat Reynolds</h5>
                            <p class="u-text u-text-4">Financial Advisor</p>
                        </div>
                    </div>
                    <div class="u-align-center u-container-style u-list-item u-repeater-item">
                        <div class="u-container-layout u-similar-container u-valign-top u-container-layout-3">
                            <div alt="" class="u-image u-image-circle u-image-3" src="" data-image-width="500"
                                 data-image-height="500"></div>
                            <h5 class="u-text u-text-5">Betty Nilson</h5>
                            <p class="u-text u-text-6">Financial Advisor</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-b571">
        <div class="u-clearfix u-sheet u-sheet-1">
            <p class="u-small-text u-text u-text-variant u-text-1">This webpage is built by Group 1 - All rights
                reserved<br><b>&nbsp;Loke Joo Tuck S58101&nbsp;</b>
                <br><b>Gabriel Loke Zhu Feng S59137</b>
                <br><b>&nbsp;See Pao Yeong S58079</b>
                <br>
            </p>
        </div>
    </footer>

</body>

</html>
