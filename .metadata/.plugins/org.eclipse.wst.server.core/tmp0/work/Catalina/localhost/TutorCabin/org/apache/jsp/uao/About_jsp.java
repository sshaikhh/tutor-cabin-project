/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.16
 * Generated at: 2020-05-09 12:18:10 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.uao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class About_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/uao/Footer.jsp", Long.valueOf(1583491420987L));
    _jspx_dependants.put("/uao/Header.jsp", Long.valueOf(1587228653887L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\r\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\"></script>\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"bootstrap-4.4.1-dist/css/bootstrap.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"bootstrap-4.4.1-dist/css/bootstrap-grid.css\">\r\n");
      out.write("  \t<link rel=\"stylesheet\" type=\"text/css\" href=\"bootstrap-4.4.1-dist/css/bootstrap.min.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"bootstrap-4.4.1-dist/css/Style.css\">\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"bootstrap-4.4.1-dist/js/bootstrap.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"bootstrap-4.4.1-dist/js/bootstrap.min.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"bootstrap-4.4.1-dist/js/bootstrap.bundle.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"bootstrap-4.4.1-dist/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"bootstrap-4.4.1-dist/js/croppie.min.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"https://code.jquery.com/jquery-3.5.0.min.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/croppie/2.6.4/croppie.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/croppie/2.6.4/croppie.min.js\"></script>\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t<title>TutorCabin - Get Best Home Tutors in Indore</title>\r\n");
      out.write(" <script type=\"text/javascript\">  \r\n");
      out.write("        /* Function to Generat Captcha */  \r\n");
      out.write("        function GenerateCaptcha() {  \r\n");
      out.write("            var chr1 = Math.ceil(Math.random() * 10) + '';  \r\n");
      out.write("            var chr2 = Math.ceil(Math.random() * 10) + '';  \r\n");
      out.write("            var chr3 = Math.ceil(Math.random() * 10) + '';  \r\n");
      out.write("  \r\n");
      out.write("            var str = new Array(4).join().replace(/(.|$)/g, function () { return ((Math.random() * 36) | 0).toString(36)[Math.random() < .5 ? \"toString\" : \"toUpperCase\"](); });  \r\n");
      out.write("            var captchaCode = str + chr1 + ' ' + chr2 + ' ' + chr3;  \r\n");
      out.write("            document.getElementById(\"txtCaptcha\").innerHTML= captchaCode ;\r\n");
      out.write("        }  \r\n");
      out.write("        \r\n");
      out.write("        /* Function to Check Password and Re-password */\r\n");
      out.write("        function Validate() {\r\n");
      out.write("            var password = document.getElementById(\"txtPassword\").value;\r\n");
      out.write("            var confirmPassword = document.getElementById(\"txtConfirmPassword\").value;\r\n");
      out.write("            if (password != confirmPassword) {\r\n");
      out.write("                alert(\"Passwords do not match.\");\r\n");
      out.write("                return false;\r\n");
      out.write("            }\r\n");
      out.write("            return true;\r\n");
      out.write("        }\r\n");
      out.write("    </script>  \r\n");
      out.write("    \r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("/* Dropdown Button */\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("/* The container <div> - needed to position the dropdown content */\r\n");
      out.write(".dropdown {\r\n");
      out.write("  position: relative;\r\n");
      out.write("  display: inline-block;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Dropdown Content (Hidden by Default) */\r\n");
      out.write(".dropdown-content {\r\n");
      out.write("  display: none;\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  background-color: #f1f1f1;\r\n");
      out.write("  min-width: 160px;\r\n");
      out.write("  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\r\n");
      out.write("  z-index: 1;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Links inside the dropdown */\r\n");
      out.write(".dropdown-content a {\r\n");
      out.write("  color: black;\r\n");
      out.write("  padding: 12px 16px;\r\n");
      out.write("  text-decoration: none;\r\n");
      out.write("  display: block;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Change color of dropdown links on hover */\r\n");
      out.write(".dropdown-content a:hover {background-color: #ddd;}\r\n");
      out.write("\r\n");
      out.write("/* Show the dropdown menu on hover */\r\n");
      out.write(".dropdown:hover .dropdown-content {display: block;}\r\n");
      out.write("\r\n");
      out.write("/* Change the background color of the dropdown button when the dropdown content is shown */\r\n");
      out.write("/*.dropdown:hover .dropbtn {background-color: #11bba4d6;}\r\n");
      out.write("*/\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("  \r\n");
      out.write("</head>\r\n");
      out.write("<body onload=\" GenerateCaptcha()\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <!-- header -->\r\n");
      out.write("\t<header style=\"height: 116px; \tbackground-color: #0da8d6;\">\r\n");
      out.write("<img data-placeholder=\"no\" src=\"images/TutorCabin.jpg\" alt=\"TutorCabin\" style=\"padding: 35px 26px 43px 111px;\">\r\n");
      out.write("\r\n");
      out.write("\t</header>\r\n");
      out.write("  <!-- nav start -->\r\n");
      out.write("<nav class=\"navbar navbar-expand-sm bg-light navbar-light \">\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  <ul class=\"navbar-nav navbar-nav mr-auto\">\r\n");
      out.write("\r\n");
      out.write("    \r\n");
if(session.getAttribute("tutor")!=null) {
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<li class=\"nav-item\">\r\n");
      out.write("      <a class=\"nav-link\" href=\"Dashboard.html\">Home&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>\r\n");
      out.write("    </li>\r\n");
      out.write("\r\n");
      out.write("    <li class=\"nav-item\">\r\n");
      out.write("      <a class=\"nav-link\" href=\"Blogs.html\">Blogs&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>\r\n");
      out.write("    </li>\r\n");
      out.write("\r\n");
      out.write("    <li class=\"nav-item\">\r\n");
      out.write("      <a class=\"nav-link\" href=\"Contact.html\">Contact&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>\r\n");
      out.write("    </li>\r\n");
      out.write("    <li class=\"nav-item\">\r\n");
      out.write("      <a class=\"nav-link\" href=\"Solved_Materials.html\">Solved Materials</a>\r\n");
      out.write("    </li>\r\n");
      out.write("   </ul> \r\n");
} else if(session.getAttribute("uemail")!=null) {
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    <li class=\"nav-item\">\r\n");
      out.write("      <a class=\"nav-link\" href=\"Dashboard.html\">Home&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>\r\n");
      out.write("    </li>\r\n");
      out.write("    \r\n");
      out.write("      <li class=\"nav-item\">\r\n");
      out.write("      <a class=\"nav-link\" href=\"Find_Tutor.html\">Find Tutors&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>\r\n");
      out.write("    </li>\r\n");
      out.write("     <li class=\"nav-item\">\r\n");
      out.write("      <a class=\"nav-link\" href=\"Blogs.html\">Blogs&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>\r\n");
      out.write("    </li>\r\n");
      out.write("    <li class=\"nav-item\">\r\n");
      out.write("      <a class=\"nav-link\" href=\"Contact.html\">Contact&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>\r\n");
      out.write("    </li>\r\n");
      out.write("    <li class=\"nav-item\">\r\n");
      out.write("      <a class=\"nav-link\" href=\"Solved_Materials.html\">Solved Materials</a>\r\n");
      out.write("    </li>\r\n");
      out.write("   \r\n");
      out.write("  </ul>\r\n");
}
else{

      out.write("\r\n");
      out.write("    <li class=\"nav-item\">\r\n");
      out.write("      <a class=\"nav-link\" href=\"Dashboard.html\">Home&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>\r\n");
      out.write("    </li>\r\n");
      out.write("    \r\n");
      out.write("    <li class=\"nav-item\">\r\n");
      out.write("      <a class=\"nav-link\" href=\"About.html\" >About&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>\r\n");
      out.write("    </li>\r\n");
      out.write("        <li class=\"nav-item\">\r\n");
      out.write("      <a class=\"nav-link\" href=\"Join_As_A_Tutor.html\">Join As a Tutor&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>\r\n");
      out.write("    </li>\r\n");
      out.write("        <li class=\"nav-item\">\r\n");
      out.write("      <a class=\"nav-link\" href=\"Contact.html\">Contact&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>\r\n");
      out.write("    </li>\r\n");
      out.write("        <li class=\"nav-item\">\r\n");
      out.write("      <a class=\"nav-link\" href=\"Blogs.html\">Blogs&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>\r\n");
      out.write("    </li>\r\n");
      out.write("    </ul>\r\n");
} 
      out.write('\r');
      out.write('\n');

if(session.getAttribute("uemail")!=null)
{

      out.write("\r\n");
      out.write("<span class=\"navbar-text\" style=\"padding-left: 150px; color: #a85486;\">\r\n");
      out.write("    \r\n");
      out.write("   <h5><a style=\"text-decoration: none;\" href=\"logout.html\"> |&nbsp  Logout &nbsp |</a></h5>\r\n");
      out.write("  </span>\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("  \r\n");
      out.write("</nav>\r\n");

}
else if(session.getAttribute("tutorEmail")!=null) {
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("<div class=\"dropdown\" style=\"margin-right: 10px;margin-top: -15px;\">\r\n");
      out.write("<img src=\"images/");
      out.print( session.getAttribute("tphoto") );
      out.write("\" alt=\"ram\" class=\"dropbtn\" style=\"border-radius:50px;margin-top:14px;\"width=\"30\" height=\"25\">\r\n");
      out.write("  <div class=\"dropdown-content\">\r\n");
      out.write("    <a href=\"teacherProfile.html\">View Profile</a>\r\n");
      out.write("    <a href=\"ChangePic.html\">Change Profile</a>\r\n");
      out.write("    <a href=\"logout.html\">Logout</a>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("<p style=\"margin-bottom: 5px;\"> ");
      out.print( session.getAttribute("tutorName") );
      out.write(" </p>\r\n");
      out.write("</nav>\r\n");
      out.write("\t\r\n");

}
else
{

      out.write("\r\n");
      out.write("<span class=\"navbar-text\" style=\"padding-left:150px; color: #a85486; float:right; \">\r\n");
      out.write("   <h5><a style=\"text-decoration: none;\" href=\"Login.html\"> |&nbsp  Login &nbsp |</a></h5>\r\n");
      out.write("  </span>\r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");

} 

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <!-- nav End -->\r\n");
      out.write("\r\n");
      out.write("<!-- Middle content start-->\r\n");
      out.write("\r\n");
      out.write("<div style=\"height: 1064px;\" class=\"middle_container col-sm-12\">\r\n");
      out.write("\r\n");
      out.write("<div style=\"margin-top: 79px; margin-left: 50px; \" class=\"col-sm-6 float-left\">      \r\n");
      out.write("\r\n");
      out.write("<h3>About</h3>\r\n");
      out.write("<hr>\r\n");
      out.write("        <p style=\"text-align: left;\"><em>Our Aim at âTutor-cabinâ is to provide easy, hassle free and affordable access to wonderful teaching experience to Students of all age. At âTutor-cabinâ We help Students and Teachers to come together to create a holistic pedagogical experience . We are aggregator of qualified and competent tutors in different subjects for students of all age.</em></p>\r\n");
      out.write("<p style=\"text-align: left;\"><em>Tutors are selected by elaborate screening and receive special training in their respective subjects. All tutors are also required to go through special sessions that help them better understand child temperament and psychology.</em></p>\r\n");
      out.write("<p style=\"text-align: left;\"><em>Our tutors give special care to promote inquisitiveness, spirit of inquiry and analytical understanding among-st students.</em></p>\r\n");
      out.write("<!-- You can start editing here. -->\r\n");
      out.write("<h4>Leave a Comment</h4> <hr>             \r\n");
      out.write("\r\n");
      out.write("   <form action=\"http://www.tutorcabin.com/wp-comments-post.php\" method=\"post\" id=\"commentform\" class=\"comment-form\">\r\n");
      out.write("    \r\n");
      out.write("    <p><span>Your email address will not be published.</span> Required fields are marked <span class=\"required\">*</span></p>\r\n");
      out.write("                    \r\n");
      out.write("    <p><label for=\"comment\">Comment</label> <br><textarea id=\"comment\" name=\"comment\" cols=\"90\" rows=\"8\" maxlength=\"65525\" aria-required=\"true\" required=\"required\"></textarea></p>\r\n");
      out.write("\r\n");
      out.write("    <p class=\"comment-form-author\"><label for=\"author\">Name <span class=\"required\">*</span></label> <br><input id=\"author\" name=\"author\" type=\"text\" value=\"\" size=\"88\" maxlength=\"245\" aria-required=\"true\" required=\"required\"></p>\r\n");
      out.write("    \r\n");
      out.write("    <p class=\"comment-form-email\"><label for=\"email\">Email <span class=\"required\">*</span></label> <br><input id=\"email\" name=\"email\" type=\"text\" value=\"\" size=\"88\" maxlength=\"100\" aria-describedby=\"email-notes\" aria-required=\"true\" required=\"required\"></p>\r\n");
      out.write("\r\n");
      out.write("    <p class=\"comment-form-url\"><label for=\"url\">Website</label><br> <input id=\"url\" name=\"url\" type=\"text\" value=\"\" size=\"88\" maxlength=\"200\"></p>\r\n");
      out.write("\r\n");
      out.write("     <p class=\"form-submit\"><input name=\"submit\" type=\"submit\" id=\"submit\" class=\"submit\" value=\"Post Comment\"> <input type=\"hidden\" name=\"comment_post_ID\" value=\"2\" id=\"comment_post_ID\">\r\n");
      out.write("\r\n");
      out.write("     <input type=\"hidden\" name=\"comment_parent\" id=\"comment_parent\" value=\"0\"> </p> \r\n");
      out.write("         </form>\r\n");
      out.write("        </div>\r\n");
      out.write("       </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- Middle content End-->\r\n");
      out.write("\r\n");
      out.write("<!--  footer start-->\r\n");
      out.write("\r\n");
      out.write("<footer class=\"jumbotron\" style=\"height:450px\">\r\n");
      out.write("      \r\n");
      out.write("\r\n");
      out.write("<div id=\"d1\" class=\"col-sm-3  float-left\" >Contact Us<hr>\r\n");
      out.write("           Address:<br>\r\n");
      out.write("           indore pin 452005\r\n");
      out.write("           <br>\r\n");
      out.write("           contact:<br>\r\n");
      out.write("           <iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d29437.929275521048!2d75.87074083955078!3d22.737860200000004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1581743478935!5m2!1sen!2sin\" width=\"200\" height=\"220\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div id=\"d1\" class=\"col-sm-3  float-left\"  >Find Tutor In Indore<hr>\r\n");
      out.write("           <ul style=\"overflow: scroll;height: 300px\">\r\n");
      out.write("    <li><a href=\"#\">Khatipura</a> (1)</li>\r\n");
      out.write("    <li><a href=\"#\">Krishi Mandi</a> (1)</li>\r\n");
      out.write("    <li><a href=\"#\">Krishi Mandi</a> (1)\r\n");
      out.write("    <li><a href=\"#\">L.I.G. Colony</a> (1)\r\n");
      out.write("\r\n");
      out.write("    <li><a href=\"#\">Limbodi</a> (1)\r\n");
      out.write("\r\n");
      out.write("   <li><a href=\"#\">Lokmanya Nagar</a> (1)\r\n");
      out.write("\r\n");
      out.write("    <li><a href=\"#\">Mahalaxmi Nagar</a> (1)\r\n");
      out.write("\r\n");
      out.write("    <li><a href=\"#\">Malharganj</a> (1)\r\n");
      out.write("\r\n");
      out.write("    <li><a href=\"#\">Manbhavan Nagar</a> (1)\r\n");
      out.write("\r\n");
      out.write("    <li><a href=\"#\">Manglia</a> (1)\r\n");
      out.write("\r\n");
      out.write("    <li><a href=\"#\">Mari Mata Square</a> (1)\r\n");
      out.write("\r\n");
      out.write("    <li><a href=\"#\">Mhow</a> (1)\r\n");
      out.write("\r\n");
      out.write("    <li><a href=\"#\">Mhow Naka</a> (1)\r\n");
      out.write("\r\n");
      out.write("<li><a href=\"#\">Murai Mohalla</a> (1)\r\n");
      out.write("\r\n");
      out.write("    <li><a href=\"#\">Musakhedi</a> (1)\r\n");
      out.write("<li><a href=\"#\">Nanakheda</a> (1)\r\n");
      out.write("<li><a href=\"#\">Nanda Nagar</a> (1)\r\n");
      out.write("<li><a href=\"#\">Nandanvan Colony</a> (1)</li>\r\n");
      out.write("    <li><a href=\"#\">Navlakha</a> (1)</li>\r\n");
      out.write("    <li><a href=\"#\">New Rani Bagh</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("    <li><a href=\"#\">Omex City</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("    <li><a href=\"#\">Palasia</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("    <li><a href=\"#\">Palda</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Palsikar Colony</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Patni Pura</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Patnipura</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Pipliyahana</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Radio Colony</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Raj Mohalla</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Rajendra Nagar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Rajwada</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Ranipura</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Rau</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Sadar Bazar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Sahara City Homes</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Sangam Nagar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Sukhliya</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Tehsil</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Tilak Nagar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Triveni Colony</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Tukoganj</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Vaibhav Nagar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Vaishali Nagar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Vandana Nagar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Vijay Nagar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Vishnu Puri</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Anoop Nagar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Azad Nagar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Bada Ganpati</a> (1)\r\n");
      out.write("</li/>\r\n");
      out.write("<li><a href=\"#\">Badia Keema</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Banganga</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Bhagirath Pura</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Bhawrasla</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Bicholi Mardana</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Bijalpur</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Chandan Nagar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Chandra Nagar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">deoguradia</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">kanadiya</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">MR-10 road</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Aerodrum road</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">A.B.road</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Race Course Road</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Maharani Road</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Saket Nagar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("    <li><a href=\"#\">Annapurna Road</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Khajuri Bazar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Khatiwala Tank</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Dhar road</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">RNT Marg</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Sector 23-D</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Badodia Khan</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Barlai Jagir</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Army Headquarters</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Baloda Tkun</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Agrawal Nagar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Badwali Chowk</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">BijasanRoad</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">CGO Complex</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write(" <li><a href=\"#\">Cloth Market</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">FC Ganj EDSO</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Gandhi Nagar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Jail Road</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Gurunanak Chowk</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write(" <li><a href=\"#\">Collectorate</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">High Court</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Regal</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Imli Bazar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Geeta Bhawan</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Geeta Nagar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("    <li><a href=\"#\">Anand Bazar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Jaora Compound</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Dawa Bazar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">By Pass</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Bangali Square</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Nipania</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Kalyani Nagar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Gulab Bagh</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Rajiv Gandhi Square</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Siyaganj</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Manoramaganj</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">South Tukoganj</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Srinagar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Malwa Mill</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Yeshwant Road</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Rambagh</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Ravishankar Shukla Nagar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Madhumilan</a> (1)\r\n");
      out.write("</li><li><a href=\"#\">Vallabh Nagar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">DDU Nagar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Sudama Nagar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write(" <li><a href=\"#\">RSS Nagar</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Kumar Khadi</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Javeri Bagh</a> (1)\r\n");
      out.write("</li>\r\n");
      out.write("<li><a href=\"#\">Gwal Toli</a> (1)\r\n");
      out.write("\r\n");
      out.write("<li><a href=\"#\">Sanwer Road</a> (1)\r\n");
      out.write("\r\n");
      out.write("<li><a href=\"#\">Yashwant Nagar</a> (1)\r\n");
      out.write("<li><a href=\"#\">Kelod Kartal</a> (1)\r\n");
      out.write("\r\n");
      out.write("<li><a href=\"#\">Tillor Khurd</a> (1)\r\n");
      out.write("<li><a href=\"#\">Ratlam Kothi</a> (1)\r\n");
      out.write("<li><a href=\"#\">Rasoma Circle</a> (1)\r\n");
      out.write("\r\n");
      out.write("<li><a href=\"#\">Ring Road</a> (1)\r\n");
      out.write("<li><a href=\"#\">Subhash Nagar</a> (1)\r\n");
      out.write("<li><a href=\"#\">Scheme Number-54</a> (1)\r\n");
      out.write("<li><a href=\"#\">Kanchan Bagh</a> (1)\r\n");
      out.write("<li><a href=\"#\">Khandwa Road</a> (1)\r\n");
      out.write("<li><a href=\"#\">Durgi Road</a> (1)\r\n");
      out.write("<li><a href=\"#\">56 Dukaan</a> (1)\r\n");
      out.write("<li><a href=\"#\">Cantt Indore</a> (1)\r\n");
      out.write("<li><a href=\"#\">Tulsi Nagar</a> (1)\r\n");
      out.write("<li><a href=\"#\">Indore Army</a> (1)\r\n");
      out.write("\r\n");
      out.write("           </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div id=\"d1\" class=\"col-sm-3  float-left\"  >Find Tutor For Collage Level Subject<hr>\r\n");
      out.write("           <ul style=\"overflow: scroll;height: 280px\">\r\n");
      out.write("        <li><a href=\"#\">Computer Science</a> (52)</li>\r\n");
      out.write("    <li><a href=\"#\">Accountancy</a> (49)</li>\r\n");
      out.write("    <li><a href=\"#\">Economics</a> (46)</li>\r\n");
      out.write("    <li><a href=\"#\">History</a> (43)</li>\r\n");
      out.write("    <li><a href=\"#\">Business Maths</a> (43)</li>\r\n");
      out.write("    <li><a href=\"#\">Geography</a> (40)</li>\r\n");
      out.write("    <li><a href=\"#\">Indirect Tax</a> (39)</li>\r\n");
      out.write("    <li><a href=\"#\">Political Science</a> (38)</li>\r\n");
      out.write("    <li><a href=\"#\">Financial Management</a> (37)</li>\r\n");
      out.write("    <li><a href=\"#\">Zoology</a> (37)</li>\r\n");
      out.write("    <li\"><a href=\"#\">Chemistry</a> (37)</li>\r\n");
      out.write("    <li><a href=\"#\">Hotel Management</a> (36)</li>\r\n");
      out.write("    <li><a href=\"#\">Mass communication</a> (36)</li>\r\n");
      out.write("    <li><a href=\"#\">Philosophy</a> (35)</li>\r\n");
      out.write("    <li><a href=\"#\">Psychology</a> (35)</li>\r\n");
      out.write("    <li><a href=\"#\">Botany</a> (35)</li>\r\n");
      out.write("    <li><a href=\"#\">MicroBiology</a> (34)</li>\r\n");
      out.write("    <li><a href=\"#\">Bio Chemistry</a> (34)</li>\r\n");
      out.write("    <li><a href=\"#\">Physiology</a> (33)</li>\r\n");
      out.write("    <li><a href=\"#\">Sociology</a> (33)</li>\r\n");
      out.write("    <li><a href=\"#\">Bio-informatics</a> (33)</li>\r\n");
      out.write("    <li><a href=\"#\">Anthropology</a> (32)</li>\r\n");
      out.write("    <li><a href=\"#\">Food &amp; Nutrition</a> (31)</li> \r\n");
      out.write("              </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div id=\"d1\" class=\"col-sm-3  float-left\"  >Link<hr>\r\n");
      out.write("  <ul style=\"overflow: scroll;height: 300px\"><li id=\"menu-item-376\" class=\"menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-376\"><a href=\"Dashboard.html\">Home</a></li>\r\n");
      out.write("<li id=\"menu-item-377\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-377\"><a href=\"#\">About</a></li>\r\n");
      out.write("<li id=\"menu-item-378\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-378\"><a href=\"#\">Find Tutors</a></li>\r\n");
      out.write("<li id=\"menu-item-379\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-379\"><a href=\"Blogs.html\">Blogs</a></li>\r\n");
      out.write("<li id=\"menu-item-380\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-380\"><a href=\"#\">Contact</a></li>\r\n");
      out.write("<li id=\"menu-item-381\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-381\"><a href=\"#\">Join As a Tutor</a></li>\r\n");
      out.write("<li id=\"menu-item-383\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-383\"><a href=\"Solved_Materials.html\">Solved Materials</a></li>\r\n");
      out.write("<li id=\"menu-item-384\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-384\"><a href=\"#\">Tutor FAQâs</a></li>\r\n");
      out.write("<li id=\"menu-item-382\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-382\"><a href=\"#\">Payment Mode</a></li>\r\n");
      out.write("           </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("       </footer>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("    ");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
