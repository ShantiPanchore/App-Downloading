<%-- 
    Document   : newjsp2
    Created on : Sep 27, 2019, 2:04:57 PM
    Author     : admin
--%>
<%@ page import="java.sql.*,java.io.*,java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js"> <!--<![endif]-->
 
        <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
         <title>App Downloading</title>
        <meta name="description" content="">
        <!-- 
    	Volton Template
    	http://www.templatemo.com/tm-441-volton
        -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link rel="stylesheet" href="css6/normalize.css">
        <link rel="stylesheet" href="css6/font-awesome.css">
        <link rel="stylesheet" href="css6/bootstrap.min.css">
        <link rel="stylesheet" href="css6/templatemo-style.css">
        <script src="js3/vendor/modernizr-2.6.2.min.js"></script>
    </head>
    <body > 
        <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    
        <div class="responsive-header visible-xs visible-sm">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="top-section">
                            <div class="profile-image">
                                <img src="img/profile.jpg" alt="Volton">
                            </div>
                            <div class="profile-content">
                                <h3 class="profile-title">Volton</h3>
                                <p class="profile-description">Digital Photographer</p>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="#" class="toggle-menu"><i class="fa fa-bars"></i></a>
                <div class="main-navigation responsive-menu">
                    <ul class="navigation">
                        <li><a href="#top"><i class="fa fa-home"></i>Home</a></li>
                        <li><a href="#about"><i class="fa fa-user"></i>About Me</a></li>
                        <li><a href="#projects"><i class="fa fa-newspaper-o"></i>My Gallery</a></li>
                        <li><a href="#contact"><i class="fa fa-envelope"></i>Contact Me</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- SIDEBAR -->
        <div class="sidebar-menu hidden-xs hidden-sm">
            <div class="top-section">
                <div class="profile-image">
                    <img src="img/profile.jpg" alt="Volton">
                </div>
                <h3 class="profile-title">Volton</h3>
                <p class="profile-description">Digital Photography</p>
            </div> <!-- top-section -->
            <div class="main-navigation">
                <ul class="navigation">
                    <li><a href="#top"><i class="fa fa-globe"></i>Welcome</a></li>
                    <li><a href="#about"><i class="fa fa-pencil"></i>About Me</a></li>
                    <li><a href="#projects"><i class="fa fa-paperclip"></i>My Gallery</a></li>
                    <li><a href="#contact"><i class="fa fa-link"></i>Contact Me</a></li>
                </ul>
            </div> <!-- .main-navigation -->
            <div class="social-icons">
                <ul>
                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                    <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                    <li><a href="#"><i class="fa fa-rss"></i></a></li>
                </ul>
            </div> <!-- .social-icons -->
        </div> <!-- .sidebar-menu -->
        

        <div class="banner-bg" id="top">
            <div class="banner-overlay"></div>
            <div class="welcome-text">
                <h2>Simple Design | Personal Portfolio</h2>
                <h5>This is a mobile friendly layout with Bootstrap v3.3.1 framework. Maecenas eu ante at nunc posuere fringilla sit amet non dolor. Proin condimentum fermentum nunc.</h5>
            </div>
        </div>

        <!-- MAIN CONTENT -->
        <div class="main-content">
            
            <div class="fluid-container">

                <div class="content-wrapper">
                
                    <!-- ABOUT -->
                    <div class="page-section" id="about">
                    <div class="row">
                        <div class="col-md-12">
                            <h4 class="widget-title">User Information</h4>
                            
                            
                                <table align="center" border=5 width="1243">
      <tr>
    <td colspan=10 align="center" style="background-color:lightcoral;">
        <b>Download Images</b></td>
  </tr>
  <tr style="background-color:lightcoral;"><td colspan=10>&nbsp;</td></tr>
  
  <tr style="background-color:lightcoral;"><td width="18" height="31" align="center">Sno</td> 
  <td width="102" align="center">Photo</td>
  <td align="center">Name</td><td align="center">Birthday</td><td align="center">Gender</td><td align="center">Email</td><td align="center">Password</td><td align="center">Phone</td><td align="center">Security_Question</td><td align="center">Answer</td></tr>
  <%
Connection con=null;

try{
Class.forName("com.mysql.jdbc.Driver");
 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/playstoredatabase","root","");

	Statement stmt=con.createStatement();

                String strQuery = "select id,Name,Birthdate,Gender,Email,Password,Phone,Securityq,Answer from register";

	ResultSet rs = stmt.executeQuery(strQuery);
                
        int sno=0;
                while(rs.next())
		{
	sno++;
	%>
<tr style="background-color:lightcoral;">
<td><b><%=sno%></b></td>
 <td align="center">

<a href="image.jsp?imgid=<%=rs.getInt(1)%>">
<img src="image.jsp?imgid=<%=rs.getInt(1)%>"
         width="100" height="100">
</a>
                 
  </td>
 

<td align="center"  width="71" height="50"><%=rs.getString(2)%></td>
<td align="center"  width="68" height="50"><%=rs.getString(3)%></td>
<td align="center"  width="69" height="50"><%=rs.getString(4)%></td>
<td align="center"  width="166" height="50"><%=rs.getString(5)%></td>
<td align="center"  width="140" height="50"><%=rs.getString(6)%></td>
<td align="center"  width="172" height="50" ><%=rs.getString(7)%></td>
<td align="center"  width="166" height="50"><%=rs.getString(8)%></td>
<td align="center"  width="199" height="50"><%=rs.getString(9)%></td>

</tr>
			<%
		}
		rs.close();
		con.close();
		stmt.close();
	}
	catch(Exception e)
	{
		e.getMessage();
	}
	%>
 </table>
                           
                      </div>
                            <p>&nbsp;</p>
                            <hr>
                      </div>
                    </div> <!-- #about -->
                    </div>
                    
                    <!-- PROJECTS -->
                    <div class="page-section" id="projects">
                    <div class="row">
                        <div class="col-md-12">
                            <h4 class="widget-title">
      <table width="640" height="354" border=5 align="center">
      <tr>
    <td colspan=10 align="center" style="background-color:lightcoral;">
        <b>Download Images</b></td>
  </tr>
  <tr style="background-color:lightcoral;"><td colspan=10>&nbsp;</td></tr>
  
  <tr style="background-color:lightcoral;"><td width="163" height="25" align="center">Sno</td> 
  <td width="193" align="center">Photo</td>
  <td align="center">Name</td></tr>
  <%
Connection con1=null;

try{
Class.forName("com.mysql.jdbc.Driver");
 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/playstoredatabase","root","");

	Statement stmt=con.createStatement();

                String strQuery = "select id,Name from register";

	ResultSet rs = stmt.executeQuery(strQuery);
                
        int sno=0;
                while(rs.next())
		{
	sno++;
	%>
<tr style="background-color:lightcoral;" width="218" height="50">
<td><b><%=sno%></b></td>
 <td align="center" width="218" height="50">

<a href="image.jsp?imgid=<%=rs.getInt(1)%>">
<img src="image.jsp?imgid=<%=rs.getInt(1)%>"
         width="100" height="100">
</a>
                 
  </td>
 

<td align="center"  width="218" height="50"><%=rs.getString(2)%></td>


</tr>
			<%
		}
		rs.close();
		con1.close();
		stmt.close();
	}
	catch(Exception e)
	{
		e.getMessage();
	}
	%>
 </table>
							
							
							
							
							
							
							
							</h4>
                            <p class="widget-title">&nbsp;</p>
                      </div>
                    </div>
                    <!-- .projects-holder -->
                    </div>
                    <hr>

                    <!-- CONTACT -->
                    <div class="page-section" id="contact">
                    <div class="row">
                        <div class="col-md-12">
                            <h4 class="widget-title">PLACE TO TALK WITH ME</h4>
                            <p>Vestibulum ac iaculis erat, in semper dolor. Maecenas et lorem molestie, maximus justo dignissim, cursus nisl. Nullam at ante quis ex pharetra pulvinar quis id dolor. Integer lorem odio, euismod ut sem sit amet, imperdiet condimentum diam.</p>
                        </div>
                    </div>
                    <div class="row">
                        <form action="#" method="post" class="contact-form">
                            <fieldset class="col-md-4 col-sm-6">
                                <input type="text" id="your-name" placeholder="Your Name...">
                            </fieldset>
                            <fieldset class="col-md-4 col-sm-6">
                                <input type="email" id="email" placeholder="Your Email...">
                            </fieldset>
                            <fieldset class="col-md-4 col-sm-12">
                                <input type="text" id="your-subject" placeholder="Subject...">
                            </fieldset>
                            <fieldset class="col-md-12 col-sm-12">
                            <textarea name="message" id="message" cols="30" rows="6" placeholder="Leave your message..."></textarea>
                            </fieldset>
                            <fieldset class="col-md-12 col-sm-12">
                                <input type="submit" class="button big default" value="Send Message">
                            </fieldset>
                        </form>
                    </div> <!-- .contact-form -->
                    </div>
                    <hr>

                    <div class="row" id="footer">
                        <div class="col-md-12 text-center">
                            <p class="copyright-text">Copyright &copy; 2015 Company Name</p>
                        </div>
                    </div>

                </div>

            </div>
        </div>

        <script src="js3/vendor/jquery-1.10.2.min.js"></script>
        <script src="js3/min/plugins.min.js"></script>
        <script src="js3/min/main.min.js"></script>

    </body>
</html>