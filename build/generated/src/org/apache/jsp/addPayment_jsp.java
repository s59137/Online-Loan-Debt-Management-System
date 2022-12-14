package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.model.CheckDebt;
import com.dao.CheckDebtDao;

public final class addPayment_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\" class=\"h-100\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"Mark Otto, Jacob Thornton, and Bootstrap contributors\">\n");
      out.write("    <meta name=\"generator\" content=\"Hugo 0.84.0\">\n");
      out.write("    <title>Cover Template ?????? Bootstrap v5.0</title>\n");
      out.write("\n");
      out.write("    <link rel=\"canonical\" href=\"https://getbootstrap.com/docs/5.0/examples/cover/\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core CSS -->\n");
      out.write("    <link href=\"bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <style>\n");
      out.write("        .bd-placeholder-img {\n");
      out.write("            font-size: 1.125rem;\n");
      out.write("            text-anchor: middle;\n");
      out.write("            -webkit-user-select: none;\n");
      out.write("            -moz-user-select: none;\n");
      out.write("            user-select: none;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        @media (min-width: 768px) {\n");
      out.write("            .bd-placeholder-img-lg {\n");
      out.write("                font-size: 3.5rem;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- Custom styles for this template -->\n");
      out.write("    <link href=\"cover.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body class=\"d-flex h-100 text-center text-white bg-dark\">\n");
      out.write("\n");
      out.write("    <div class=\"cover-container d-flex w-100 h-100 p-3 mx-auto flex-column\">\n");
      out.write("        <header>\n");
      out.write("            <div>\n");
      out.write("                <h3 class=\"float-md-start mb-0\">Cover</h3>\n");
      out.write("                <nav class=\"nav nav-masthead justify-content-center float-md-end\">\n");
      out.write("                    <a class=\"nav-link\" aria-current=\"page\" href=\"home.jsp\">Home</a>\n");
      out.write("                    <a class=\"nav-link active\" href=\"debt.jsp\">Debt</a>\n");
      out.write("                    <a class=\"nav-link\" href=\"checkLoan.jsp\">Loan</a>\n");
      out.write("                    <a class=\"nav-link\" href=\"makeAppt.jsp\">Appointment</a>\n");
      out.write("                    <a class=\"nav-link\" href=\"index.html\">Logout</a>\n");
      out.write("                </nav>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        ");

                                        String keyusername = (String)session.getAttribute("keyusername");
                                        CheckDebtDao CheckDebtdao = new CheckDebtDao();
                                        CheckDebt check = new CheckDebt();

                                        check = CheckDebtdao.getDebtIdFromDebtPayment(keyusername);
                                        check = CheckDebtdao.getDetailsFromLoan(keyusername);
                                        

                                        String debtdebtid = null, debtloanid = null;

                                        debtdebtid = check.getDebtid();
                                        debtloanid = check.getLoanid();
                                        
                                       
                                    
      out.write("\n");
      out.write("\n");
      out.write("        <body>\n");
      out.write("            <div class=\"container\">\n");
      out.write("\n");
      out.write("                <nav class=\"navbar navbar-expand-lg navbar-light bg-dark\">\n");
      out.write("                    <div class=\"container-fluid\">\n");
      out.write("                        <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\"\n");
      out.write("                            data-bs-target=\"#navbarNavAltMarkup\" aria-controls=\"navbarNavAltMarkup\"\n");
      out.write("                            aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                            <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                        </button>\n");
      out.write("                        <div class=\"collapse navbar-collapse\" id=\"navbarNavAltMarkup\">\n");
      out.write("                            <div class=\"navbar-nav navbar-dark\">\n");
      out.write("                                <a class=\"nav-link active\" id=\"subnav\" aria-current=\"page\" href=\"debt.jsp\">Debt\n");
      out.write("                                    Details</a>\n");
      out.write("                                <a class=\"nav-link\" id=\"subnav\" href=\"addPayment.jsp\">Payment</a>\n");
      out.write("                                <a class=\"nav-link\" id=\"subnav\" href=\"ViewAllTransaction.jsp\">Transaction</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </nav>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <h1>Add New Payment</h1>\n");
      out.write("                <form action=\"DebtPaymentController\" method=\"POST\">\n");
      out.write("                    <table class=\"table table-dark table-bordered\">\n");
      out.write("                        <input type=\"hidden\" name=\"action\" value=\"addpayment\">\n");
      out.write("                        <tbody>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    Username :\n");
      out.write("                                </td>\n");
      out.write("                                <td>:</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\" name=\"username\" value=\"");
      out.print(keyusername);
      out.write("\" readonly>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    Debt ID :\n");
      out.write("                                </td>\n");
      out.write("                                <td>:</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\" name=\"debtid\" value=\"");
      out.print(debtdebtid);
      out.write("\" readonly>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    Bank\n");
      out.write("                                </td>\n");
      out.write("                                <td>:</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\" name=\"bank\" value=\"");
      out.print(debtloanid);
      out.write("\" readonly>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    Account ID\n");
      out.write("                                </td>\n");
      out.write("                                <td>:</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\" name=\"accountid\">\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    Date\n");
      out.write("                                </td>\n");
      out.write("                                <td>:</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"date\" name=\"date\">\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    Amount\n");
      out.write("                                </td>\n");
      out.write("                                <td>:</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\" name=\"amount\">\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-primary\">Submit</button>\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-primary\">Reset</button>\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <footer class=\"mt-auto text-white-50\">\n");
      out.write("                <p>All copyright reserved &copy;2022 - Gabriel, Loke, See</p>\n");
      out.write("            </footer>\n");
      out.write("        </body>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
