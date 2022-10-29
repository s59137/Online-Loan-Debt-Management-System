package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.model.Loan;
import com.dao.LoanDao;

public final class checkLoan_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"Mark Otto, Jacob Thornton, and Bootstrap contributors\">\n");
      out.write("        <meta name=\"generator\" content=\"Hugo 0.84.0\">\n");
      out.write("        <title>Cover Template ï¿½ Bootstrap v5.0</title>\n");
      out.write("\n");
      out.write("        <link rel=\"canonical\" href=\"https://getbootstrap.com/docs/5.0/examples/cover/\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Bootstrap core CSS -->\n");
      out.write("        <link href=\"bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            .bd-placeholder-img {\n");
      out.write("                font-size: 1.125rem;\n");
      out.write("                text-anchor: middle;\n");
      out.write("                -webkit-user-select: none;\n");
      out.write("                -moz-user-select: none;\n");
      out.write("                user-select: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            @media (min-width: 768px) {\n");
      out.write("                .bd-placeholder-img-lg {\n");
      out.write("                    font-size: 3.5rem;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Custom styles for this template -->\n");
      out.write("        <link href=\"cover.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body class=\"d-flex h-100 text-center text-white bg-dark\">\n");
      out.write("\n");
      out.write("        <div class=\"cover-container d-flex w-100 h-100 p-3 mx-auto flex-column\">\n");
      out.write("            <header>\n");
      out.write("                <div>\n");
      out.write("                    <h3 class=\"float-md-start mb-0\">Cover</h3>\n");
      out.write("                    <nav class=\"nav nav-masthead justify-content-center float-md-end\">\n");
      out.write("                        <a class=\"nav-link active\" aria-current=\"page\" href=\"home.jsp?keyusername=S58079\">Home</a>\n");
      out.write("                        <a class=\"nav-link\" href=\"debt.jsp\">Debt</a>\n");
      out.write("                        <a class=\"nav-link\" href=\"checkLoan.jsp\">Loan</a>\n");
      out.write("                        <a class=\"nav-link\" href=\"makeAppt.jsp\">Appointment</a>\n");
      out.write("                        <a class=\"nav-link\" href=\"index.html\">Logout</a>\n");
      out.write("                    </nav>\n");
      out.write("                </div>\n");
      out.write("            </header>\n");
      out.write("\n");
      out.write("            ");

                String username = (String) session.getAttribute("keyusername");
                session.setAttribute("keyusername",username );

                LoanDao ViewLoandao = new LoanDao();
                Loan loan = new Loan();

                loan = ViewLoandao.getLoanDetailsByUser(username);
                String loanusername = null, loanname = null,
                        loantype = null, loaninitialdate = null, loanduration = null, loanamount = null, loanmonthlyloan = null,
                        loaninterestrate = null;
                loanusername = loan.getUsername();
                loanname = loan.getName();
                loantype = loan.getLoanType();
                loaninitialdate = loan.getInitialDate();
                loanduration = loan.getDuration();
                loanamount = loan.getTotalAmount();
                loanmonthlyloan = loan.getMonthlyLoan();
                loaninterestrate = loan.getInterestRate();
      out.write("\n");
      out.write("\n");
      out.write("            <body>\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <nav class=\"navbar navbar-expand-lg navbar-light bg-dark\">\n");
      out.write("                        <div class=\"container-fluid\">\n");
      out.write("                            <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\"\n");
      out.write("                                    data-bs-target=\"#navbarNavAltMarkup\" aria-controls=\"navbarNavAltMarkup\"\n");
      out.write("                                    aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                            </button>\n");
      out.write("                            <div class=\"collapse navbar-collapse\" id=\"navbarNavAltMarkup\">\n");
      out.write("                                <div class=\"navbar-nav\">\n");
      out.write("                                    <a class=\"nav-link active\" id=\"subnav\" aria-current=\"page\"\n");
      out.write("                                       href=\"checkLoan.jsp\">Check\n");
      out.write("                                        Loan</a>\n");
      out.write("                                    <a class=\"nav-link\" id=\"subnav\" href=\"ViewapplyLoan.jsp\">Apply Loan</a>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </nav>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <table class=\"table table-dark table-bordered\">\n");
      out.write("                        <thead>\n");
      out.write("                        <th></th>\n");
      out.write("                        <th>Details</th>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    Username\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print(loanusername);
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    Name\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print(loanname);
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    Loan Type\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print(loantype);
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    Initial Loan Date\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print(loaninitialdate);
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    Duration\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print(loanduration);
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    Total Amount (RM)\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print(loanamount);
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    Monthly Loan\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print(loanmonthlyloan);
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    Interest Rate\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print(loaninterestrate);
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <footer class=\"mt-auto text-white-50\">\n");
      out.write("                    <p>All copyright reserved &copy;2022 - Gabriel, Loke, See</p>\n");
      out.write("                </footer>\n");
      out.write("            </body>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
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
