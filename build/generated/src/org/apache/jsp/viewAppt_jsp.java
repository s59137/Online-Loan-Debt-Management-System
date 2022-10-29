package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import grpProject.com.deleteAppt;

public final class viewAppt_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"canonical\" href=\"https://getbootstrap.com/docs/5.0/examples/cover/\">\r\n");
      out.write("\r\n");
      out.write("        <link href=\"bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"cover.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("        <title>Appointment Details</title>\r\n");
      out.write("\r\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <style>\r\n");
      out.write("            th,\r\n");
      out.write("            td {\r\n");
      out.write("                font-size: x-large;\r\n");
      out.write("            }\r\n");
      out.write("        </style>\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body class=\"d-flex h-100 text-center text-white bg-dark\">\r\n");
      out.write("        ");

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
        
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <div class=\"cover-container d-flex w-100 h-100 p-3 mx-auto flex-column\">\r\n");
      out.write("            <header>\r\n");
      out.write("                <div>\r\n");
      out.write("                    <h3 class=\"float-md-start mb-0\">Group 8</h3>\r\n");
      out.write("                    <nav class=\"nav nav-masthead justify-content-center float-md-end\">\r\n");
      out.write("                        <a class=\"nav-link\" aria-current=\"page\" href=\"home.jsp\">Home</a>\r\n");
      out.write("                        <a class=\"nav-link\" href=\"debt.jsp\">Debt</a>\r\n");
      out.write("                        <a class=\"nav-link\" href=\"checkLoan.jsp\">Loan</a>\r\n");
      out.write("                        <a class=\"nav-link active\" href=\"makeAppt.jsp\">Appointment</a>\r\n");
      out.write("                        <a class=\"nav-link\" href=\"index.html\">Logout</a>\r\n");
      out.write("                    </nav>\r\n");
      out.write("                </div>\r\n");
      out.write("            </header>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-light bg-dark\">\r\n");
      out.write("                <div class=\"container-fluid\">\r\n");
      out.write("                    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\"\r\n");
      out.write("                            data-bs-target=\"#navbarNavAltMarkup\" aria-controls=\"navbarNavAltMarkup\"\r\n");
      out.write("                            aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("                        <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("                    </button>\r\n");
      out.write("\r\n");
      out.write("                    <br><br>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"collapse navbar-collapse\" id=\"navbarNavAltMarkup\">\r\n");
      out.write("                        <div class=\"navbar-nav\">\r\n");
      out.write("                            <a class=\"nav-link active\" id=\"subnav\" aria-current=\"page\"\r\n");
      out.write("                               href=\"makeAppt.jsp\">Make Appointment</a>\r\n");
      out.write("                            <a class=\"nav-link\" id=\"subnav\" href=\"viewAppt.jsp\">View Appointment</a>\r\n");
      out.write("                            <a class=\"nav-link\" id=\"subnav\" href=\"editAppt.jsp\">Update\r\n");
      out.write("                                Appointment</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </nav>\r\n");
      out.write("\r\n");
      out.write("            <main class=\"px-3\">\r\n");
      out.write("                <table class=\"table table-dark table-borderless\">\r\n");
      out.write("                    <thead>\r\n");
      out.write("                    <th>Appointment Details:</th>\r\n");
      out.write("                    </thead>\r\n");
      out.write("                    <tbody>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>Username: ");
      out.print(username);
      out.write("\r\n");
      out.write("                            </td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>Name: ");
      out.print(name);
      out.write("\r\n");
      out.write("                            </td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>Contact Number: ");
      out.print(telno);
      out.write("\r\n");
      out.write("                            </td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>Email Address: ");
      out.print(email);
      out.write("\r\n");
      out.write("                            </td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>Date: ");
      out.print(date);
      out.write("\r\n");
      out.write("                            </td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>Time: ");
      out.print(time);
      out.write("\r\n");
      out.write("                            </td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td><a href=\"editAppt.jsp\"\r\n");
      out.write("                                   class=\"btn btn-lg btn-secondary fw-bold border-white bg-white\">Update</a>\r\n");
      out.write("                                <a onclick=\"myFunction()\"\r\n");
      out.write("                                   class=\"btn btn-lg btn-secondary fw-bold border-white bg-white\">Delete</a>\r\n");
      out.write("                            </td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                    </tbody>\r\n");
      out.write("                </table>\r\n");
      out.write("            </main>\r\n");
      out.write("\r\n");
      out.write("            <br>\r\n");
      out.write("\r\n");
      out.write("            <footer class=\"mt-auto text-white-50\">\r\n");
      out.write("                <p>All copyright reserved &copy;2022 - Gabriel, Loke, See</p>\r\n");
      out.write("            </footer>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <script>\r\n");
      out.write("            var msg = \"");
      out.print(info);
      out.write("\";\r\n");
      out.write("            if(msg === \"null\")\r\n");
      out.write("            { } \r\n");
      out.write("            else\r\n");
      out.write("            { alert(msg); }\r\n");
      out.write("            \r\n");
      out.write("            var msge = \"");
      out.print(alrt);
      out.write("\";\r\n");
      out.write("            if(msge === \"null\")\r\n");
      out.write("            { } \r\n");
      out.write("            else\r\n");
      out.write("            { alert(msge); }\r\n");
      out.write("            \r\n");
      out.write("            var msage = \"");
      out.print(updated);
      out.write("\";\r\n");
      out.write("            if(msage === \"null\")\r\n");
      out.write("            { } \r\n");
      out.write("            else\r\n");
      out.write("            { alert(msage); }\r\n");
      out.write("            \r\n");
      out.write("            function myFunction() {\r\n");
      out.write("                var text = confirm(\"Are you sure you want to delete the appointment?\");\r\n");
      out.write("                if (text) {\r\n");
      out.write("                    window.location.href = \"deleteAppt?name=");
      out.print(name);
      out.write("\";\r\n");
      out.write("                }   \r\n");
      out.write("            }\r\n");
      out.write("        </script>\r\n");
      out.write("    </body>\r\n");
      out.write("\r\n");
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
