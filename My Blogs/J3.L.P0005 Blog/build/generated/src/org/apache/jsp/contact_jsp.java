package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class contact_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/menu.jsp");
    _jspx_dependants.add("/rightbar.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Contact Page</title>\n");
      out.write("        <link href=\"styles/index.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"header\">\n");
      out.write("                ");
      out.write("\n");
      out.write("\n");
      out.write("<h1>my blogs</h1>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div class=\"menu\">\n");
      out.write("                ");
      out.write("\n");
      out.write("\n");
      out.write("<ul class=\"items\">\n");
      out.write("    <li><a href=\"#\">Home</a></li>\n");
      out.write("    <li><a href=\"contact\">Contact</a></li>\n");
      out.write("</ul>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div class=\"content\">\n");
      out.write("                <div class=\"blog\">\n");
      out.write("                    <form action=\"contact\" method=\"POST\">\n");
      out.write("                        <fieldset>\n");
      out.write("                            <legend><strong>All fields are required</strong></legend>\n");
      out.write("                            Name : <input type=\"text\" name=\"name\" required><br>\n");
      out.write("                            Email : <input type=\"email\" name=\"email\" required><br>\n");
      out.write("                            Phone : <input type=\"number\" name=\"phone\" required><br>\n");
      out.write("                            Company : <input type=\"text\" name=\"company\" required><br>\n");
      out.write("                            Message : <br><textarea name=\"message\"></textarea><br>\n");
      out.write("                            \n");
      out.write("                            <input type=\"submit\" value=\"Send\">\n");
      out.write("                        </fieldset>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"right-bar\">\n");
      out.write("                    ");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"cate-title\">\n");
      out.write("    <h2>Categories</h2>\n");
      out.write("</div>\n");
      out.write("<div class=\"cate-list\">\n");
      out.write("    <ul class=\"cate-items\">\n");
      out.write("        <c:forEach var=\"category\" items=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${categories}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("            <li><a href=\"list?cateID=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${category.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('"');
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${category.category}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></li>\n");
      out.write("        </c:forEach>\n");
      out.write("\n");
      out.write("    </ul>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"footer\">\n");
      out.write("                ");
      out.write("\n");
      out.write("\n");
      out.write("<ul class=\"same-list\">\n");
      out.write("    <c:forEach var=\"post\" items=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${same}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("        <li><a href=\"home?id=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${post.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"><strong>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${post.title}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong></a> Posted on ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${post.date}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</li>\n");
      out.write("    </c:forEach>\n");
      out.write("</ul>\n");
      out.write("\n");
      out.write("            </div> \n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
