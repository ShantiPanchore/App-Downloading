<%-- 
    Document   : index3
    Created on : Sep 28, 2019, 10:07:08 AM
    Author     : admin
--%>

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
        
        <link rel="stylesheet" href="css6_1/normalize.css">
        <link rel="stylesheet" href="css6_1/font-awesome.css">
        <link rel="stylesheet" href="css6_1/bootstrap.min.css">
        <link rel="stylesheet" href="css6_1/templatemo-style.css">
        <script src="js3/vendor/modernizr-2.6.2.min.js"></script>
        <style>
            .a{
                 background-image: url(b2.jpg);
                 background-size: cover;
                 background-attachment: fixed; 
             }
        </style>
    </head>
    <body>
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
                        <li><a href="#contact"><i class="fa fa-envelope"></i>Add Software</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- SIDEBAR -->
        <div class="sidebar-menu hidden-xs hidden-sm">
            <div class="top-section">
                <div class="profile-image">
                    <img src="admin.jpg" alt="Volton">
                </div>
                <h3 class="profile-title">Admin</h3>
                <p class="profile-description">Apps Adding</p>
            </div> <!-- top-section -->
            <div class="main-navigation">
                <ul class="navigation">
                    <li><a href="#top"><i class="fa fa-globe"></i>Welcome</a></li>
                    <li><a href="#about"><i class="fa fa-pencil"></i>Games</a></li>
                    <li><a href="#projects"><i class="fa fa-paperclip"></i>Music</a></li>
                    <li><a href="#contact"><i class="fa fa-link"></i>Software</a></li>
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
                <h2>Welcome Admin</h2>
                <h2>Welcome</h2><br>
               
                <h5><a href="Admin.jsp">User Information Show</a></h5>
            </div>
        </div>

        <!-- MAIN CONTENT -->
        <div class="main-content">
            <div class="fluid-container">

                <div class="content-wrapper">
                
                    <!-- ABOUT -->
                  <div class="page-section" id="about">
                    <div class="row">
                      <div class="col-md-12"><hr><br><br>
					   <h4 class="widget-title">Add Games Apps For Admin</h4>
                        
						
						
	 <form action="a_1_2.jsp" method="post" class="contact-form" enctype="multipart/form-data">
             <table class="a">
                            <fieldset class="col-md-4 col-sm-6">
                               <select name="select">
                    <option>Add Apps</option>
                     <option>games</option>
                     <option>music</option>
                     <option>Software</option>
                     <option>Document</option>
                </select>
                            </fieldset>
                            <fieldset class="col-md-4 col-sm-6">
                                <input type="text" id="email" name="id" placeholder="Games ID...">
                            </fieldset>
                            <fieldset class="col-md-4 col-sm-12">
                                <input type="text" id="your-subject" name="n" placeholder="Games Name...">
                            </fieldset>
                            <fieldset class="col-md-12 col-sm-12">
                                 <input type="file" name="file" placeholder="Games Picture">
                            </fieldset>
							 <fieldset class="col-md-12 col-sm-12">
                                 <input type="file" name="uploadfile" placeholder="Games Upload">
                            </fieldset>
                            <fieldset class="col-md-12 col-sm-12">
                                <input type="submit" class="button big default" value="Send Message">
                            </fieldset>
             </table>
                        </form>
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
                        <hr>
                      </div>
                    </div> 
                    <p>
                      <!-- #about -->
                    </p>
					<hr><br><br>
                    <p>
		 <h4 class="widget-title">Add Music Apps For Admin</h4>
                                     <form action="a_1_1.jsp" method="post" class="contact-form" enctype="multipart/form-data">
             <table class="a">
                            <fieldset class="col-md-4 col-sm-6">
                               <select name="select">
                    <option>Add Apps</option>
                     <option>games</option>
                     <option>music</option>
                     <option>Software</option>
                     <option>Document</option>
                </select>
                            </fieldset>
                            <fieldset class="col-md-4 col-sm-6">
                                <input type="text" id="email" name="id" placeholder="Games ID...">
                            </fieldset>
                            <fieldset class="col-md-4 col-sm-12">
                                <input type="text" id="your-subject" name="n" placeholder="Games Name...">
                            </fieldset>
                            <fieldset class="col-md-12 col-sm-12">
                                 <input type="file" name="file" placeholder="Games Picture">
                            </fieldset>
							 <fieldset class="col-md-12 col-sm-12">
                                 <input type="file" name="uploadfile" placeholder="Games Upload">
                            </fieldset>
                            <fieldset class="col-md-12 col-sm-12">
                                <input type="submit" class="button big default" value="Send Message">
                            </fieldset>
             </table>
                        </form>
						
						
						
						
					  <hr>
					&nbsp;</p>
                  </div>
                    
                    <!-- PROJECTS -->
                    <hr>

                    <!-- CONTACT -->
                    <div class="page-section" id="contact">
                    <div class="row">
                        <div class="col-md-12">
                            <h4 class="widget-title">Add Software Apps For Admin</h4>
                            
                        </div>
                    </div>
                    <div class="row">
                        <form action="a_1.jsp" method="post" class="contact-form" enctype="multipart/form-data" class="a">
                            <fieldset class="col-md-4 col-sm-6">
                               <select name="select">
                    <option>Add Apps</option>
                     <option>games</option>
                     <option>music</option>
                     <option>software</option>
                     <option>Document</option>
                </select>
                            </fieldset>
                            <fieldset class="col-md-4 col-sm-6">
                                <input type="text" id="email" name="id" placeholder="Software ID...">
                            </fieldset>
                            <fieldset class="col-md-4 col-sm-12">
                                <input type="text" id="your-subject" name="n" placeholder="Software Name...">
                            </fieldset>
                            <fieldset class="col-md-12 col-sm-12">
                                 <input type="file" name="file" placeholder="Software Picture">
                            </fieldset>
							 <fieldset class="col-md-12 col-sm-12">
                                 <input type="file" name="uploadfile" placeholder="Software Upload">
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