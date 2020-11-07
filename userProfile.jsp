<%-- 
    Document   : userProfile
    Created on : Sep 21, 2019, 11:35:02 AM
    Author     : admin
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link
      href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900"
      rel="stylesheet"
    />

     <title>App Downloading</title>
<!--
Reflux Template
https://templatemo.com/tm-531-reflux
-->
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css" />
    <link rel="stylesheet" href="assets/css/templatemo-style.css" />
    <link rel="stylesheet" href="assets/css/owl.css" />
    <link rel="stylesheet" href="assets/css/lightbox.css" />
     <style>
        
         
             .a{
                 background-image: url(wal.jpg);
                 background-size: cover;
                 background-attachment: fixed; 
             }   
            img{
               height: 200px;
               width:200px;
               border-radius: 50px;
               max-width: 100%;
               height: auto;
              
               line-height: 8.0;
               border-color: black;
               
              
               
            }
            img:hover{
                box-shadow: 0 0 12px 5px rgba(0,140,186,0.8);
            }
        </style>
  </head>

  <body>
      
    <div id="page-wraper">
      <!-- Sidebar Menu -->
      <div class="responsive-nav">
        <i class="fa fa-bars" id="menu-toggle"></i>
        <div id="menu" class="menu">
          <i class="fa fa-times" id="menu-close"></i>
          <div class="container">
            <div class="image">
              <a href="#"><img src="img.jsp" alt="" /></a>
            </div>
            <div class="author-content">
              <h4>My Profile </h4>
             
            </div>
            <nav class="main-nav" role="navigation">
              <ul class="main-menu">
                <li><a href="#section1">Games</a></li>
                <li><a href="#section2">Software   </a></li>
                <li><a href="#section3">Music</a></li>
                <li><a href="#section4">Social Media</a></li>
                <li><a href="index3_1.jsp">Add Games</a></li>
                <li><a href="index3_1.jsp">Add Software   </a></li>
                <li><a href="index3_1.jsp">Add Music</a></li>
                <li><a href="Login.jsp">Add Social Media</a></li>
	      
                
               
              </ul>
            </nav>
            <div class="social-network">
              <ul class="soial-icons">
                <li>
                  <a href="https://fb.com/templatemo"
                    ><i class="fa fa-facebook"></i
                  ></a>
                </li>
                <li>
                  <a href="#"><i class="fa fa-twitter"></i></a>
                </li>
                <li>
                  <a href="#"><i class="fa fa-linkedin"></i></a>
                </li>
                <li>
                  <a href="#"><i class="fa fa-dribbble"></i></a>
                </li>
                <li>
                  <a href="#"><i class="fa fa-rss"></i></a>
                </li>
              </ul>
            </div>
            <div class="copyright-text">
              <p>Copyright 2019 Reflux Design</p>
            </div>
          </div>
        </div>
      </div>

      <section class="section about-me" data-section="section1">
        <div class="container">
              <a href="index3_1.jsp">Show User Record Information</a>
          <div class="section-heading">
		   <h2>Games</h2>
			
           <div class="line-dec"></div>
           <table width="816" border=5 align="center" class="a">
      <tr>
    <td height="70" colspan=10 align="center">
        <b>Games Download</b></td>
  </tr>
  <hr>
  
  <tr><td width="151" height="33" align="center">Games Sno</td> 
  <td width="244" align="center">Games Photo</td>
  <td width="164" align="center"> Games Name</td>
  <td>Games Download</td></tr>
  <%
Connection con=null;

try{
Class.forName("com.mysql.jdbc.Driver");
 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/playstoredatabase","root","");

	Statement stmt=con.createStatement();

                String strQuery = "select G_id,G_name from games";

	ResultSet rs = stmt.executeQuery(strQuery);
                
        int sno=0;
                while(rs.next())
		{
	sno++;
	%>
<tr >
<td><b><%=sno%></b></td>
 <td align="center">
<a href="image_1.jsp?imgid=<%=rs.getInt(1)%>">
<img src="image_1.jsp?imgid=<%=rs.getInt(1)%>"
         width="300" height="200">
</a>
             
  </td>
 

  <td align="center" width="164" headers="50"><%=rs.getString(2)%></td>
  <td align="center" width="221" headers="50"><a href="games1?G_id=<%=rs.getInt(1)%>">Download</a></td>

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
		   
            </section>
      
<section class="section my-services" data-section="section2">
        <div class="section-heading">
		   <h2>Software Editor</h2>
			
           <div class="line-dec"></div>
           
           
           
           
           
           
           
           <table width="816" border=5 align="center" class="a">
      <tr>
    <td height="70" colspan=10 align="center">
        <b>Software Download</b></td>
  </tr>
  <hr>
  
  <tr><td width="151" height="33" align="center">Software Editor Sno</td> 
  <td width="244" align="center">Software Editor Photo</td>
  <td width="164" align="center"> Software Editor Name</td>
  <td>Software Editor Download</td></tr>
  <%
Connection con11=null;

try{
Class.forName("com.mysql.jdbc.Driver");
 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/playstoredatabase","root","");

	Statement stmt=con.createStatement();

                String strQuery = "select S_id,S_name from software";

	ResultSet rs = stmt.executeQuery(strQuery);
                
        int sno=0;
                while(rs.next())
		{
	sno++;
	%>
<tr >
<td><b><%=sno%></b></td>
 <td align="center">
<a href="image_3.jsp?imgid=<%=rs.getInt(1)%>">
<img src="image_3.jsp?imgid=<%=rs.getInt(1)%>"
         width="300" height="200">
</a>
             
  </td>
 

  <td align="center" width="164" headers="50"><%=rs.getString(2)%></td>
  <td align="center" width="221" headers="50"><a href="software1?S_id=<%=rs.getInt(1)%>">Download</a></td>

</tr>
			<%
		}
		rs.close();
		con11.close();
		stmt.close();
	}
	catch(Exception e)
	{
		e.getMessage();
	}
	%>
 </table>
           
		   
      </section>

      <section class="section my-work" data-section="section3">
        <div class="section-heading">
		   <h2>Music</h2>
			
           <div class="line-dec"></div>
            <table width="816" border=5 align="center" class="a">
      <tr>
    <td height="70" colspan=10 align="center">
        <b>Music Player Download </b></td>
  </tr>
  <hr>
  
  <tr><td width="151" height="33" align="center">Music Sno</td> 
  <td width="244" align="center">Music Photo</td>
  <td width="164" align="center"> Music Name</td>
  <td>Music Download</td></tr>
  <%
Connection con1=null;

try{
Class.forName("com.mysql.jdbc.Driver");
 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/playstoredatabase","root","");

	Statement stmt=con.createStatement();

                String strQuery = "select M_id,M_name from music";

	ResultSet rs = stmt.executeQuery(strQuery);
                
        int sno=0;
                while(rs.next())
		{
	sno++;
	%>
<tr >
<td><b><%=sno%></b></td>
 <td align="center">
<a href="image_2.jsp?imgid=<%=rs.getInt(1)%>">
<img src="image_2.jsp?imgid=<%=rs.getInt(1)%>"
         width="300" height="200">
</a>
             
  </td>
 

  <td align="center" width="164" headers="50"><%=rs.getString(2)%></td>
  <td align="center" width="221" headers="50"><a href="music1?M_id=<%=rs.getInt(1)%>">Download</a></td>

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
           
           
		   
      </section>

      <section class="section contact-me" data-section="section4">
      
		     <div class="section-heading">
		   <h2>Social Media</h2>
			
           <div class="line-dec"></div>
            <table width="816" border=5 align="center" class="a">
      <tr>
    <td height="70" colspan=10 align="center">
        <b>Download Images</b></td>
  </tr>
  <hr>
  
  <tr><td width="151" height="33" align="center">Games Sno</td> 
  <td width="244" align="center">Games Photo</td>
  <td width="164" align="center"> Games Name</td>
  <td>Games Download</td></tr>
  <%
Connection con2=null;

try{
Class.forName("com.mysql.jdbc.Driver");
 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/playstoredatabase","root","");

	Statement stmt=con.createStatement();

                String strQuery = "select G_id,G_name from games";

	ResultSet rs = stmt.executeQuery(strQuery);
                
        int sno=0;
                while(rs.next())
		{
	sno++;
	%>
<tr >
<td><b><%=sno%></b></td>
 <td align="center">
<a href="image_1.jsp?imgid=<%=rs.getInt(1)%>">
<img src="image_1.jsp?imgid=<%=rs.getInt(1)%>"
         width="300" height="200">
</a>
             
 </td>
 

  <td align="center" width="164" headers="50"><%=rs.getString(2)%></td>
  <td align="center" width="221" headers="50"><a href="Games?G_id=<%=rs.getInt(1)%>">Download</a></td>

</tr>
			<%
		}
		rs.close();
		con2.close();
		stmt.close();
	}
	catch(Exception e)
	{
		e.getMessage();
	}
	%>
 </table>
      </section>
  </div>

    <!-- Scripts -->
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/isotope.min.js"></script>
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/lightbox.js"></script>
    <script src="assets/js/custom.js"></script>
    <script>
      //according to loftblog tut
      $(".main-menu li:first").addClass("active");

      var showSection = function showSection(section, isAnimate) {
        var direction = section.replace(/#/, ""),
          reqSection = $(".section").filter(
            '[data-section="' + direction + '"]'
          ),
          reqSectionPos = reqSection.offset().top - 0;

        if (isAnimate) {
          $("body, html").animate(
            {
              scrollTop: reqSectionPos
            },
            800
          );
        } else {
          $("body, html").scrollTop(reqSectionPos);
        }
      };

      var checkSection = function checkSection() {
        $(".section").each(function() {
          var $this = $(this),
            topEdge = $this.offset().top - 80,
            bottomEdge = topEdge + $this.height(),
            wScroll = $(window).scrollTop();
          if (topEdge < wScroll && bottomEdge > wScroll) {
            var currentId = $this.data("section"),
              reqLink = $("a").filter("[href*=\\#" + currentId + "]");
            reqLink
              .closest("li")
              .addClass("active")
              .siblings()
              .removeClass("active");
          }
        });
      };

      $(".main-menu").on("click", "a", function(e) {
        e.preventDefault();
        showSection($(this).attr("href"), true);
      });

      $(window).scroll(function() {
        checkSection();
      });
    </script>
  </body>
</html>

