<%-- 
    Document   : updateaccount
    Created on : Sep 24, 2019, 8:40:01 PM
    Author     : admin
--%>
<%@page import ="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
     <title>App Downloading</title>

    <!-- Icons font CSS-->
    <link href="vendor2/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor2/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor2/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor2/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css2/main.css" rel="stylesheet" media="all">
    <script>
            function check()
            {
                
                 if(document.form1.name.value=="")
                    {
                     alert("Enter User Name");  
                     document.form1.name.focus();
                     return false;
                    }
                    if(document.form1.birthday.value=="")
                    {
                     alert("Enter Your birthday");  
                     document.form1.birthday.focus();
                     return false;
                    }
                     if(document.form1.gender.selectedIndex==0)
                    {
                        alert("please Selecetd Your Gender");
                        return false;
                    }
                    if(document.form1.email.value=="")
                    {
                     alert("Enter Your Email ");  
                     document.form1.email.focus();
                     return false;
                    }
                    if(document.form1.pass.value=="")
                    {
                     alert("Enter Your passWord");  
                     document.form1.pass.focus();
                     return false;
                    }
                    if(document.form1.phone.value=="")
                    {
                     alert("Enter Your Phone");  
                     document.form1.phone.focus();
                     return false;
                    }
                     if(document.form1.s.selectedIndex==0)
                    {
                        alert("please Selecetd Security Answer");
                         return false;
                    }
                     if(document.form1.a.value=="")
                    {
                     alert("Enter Your Answer");  
                     document.form1.a.focus();
                     return false;
                    }
                
                   
                     
                   
                    else{
                        alert("Formet Is Correct");
                        return true;
                    }
            }
             
    </script>
</head>

<body>
     <%
        String ct="jdbc:mysql://localhost:3306/playstoredatabase";
        String set = (String)session.getAttribute("u");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=null;
        con=DriverManager.getConnection(ct,"root","");
       Statement  st=con.createStatement();
       String a="";
       String b="";
       String c="";
       String d="";
       String e="";
       String f="";
       String g="";
       String h="";
       String i="";
       
       
       try
       {
          ResultSet rs=st.executeQuery("select * from register where Name='"+set+"'");  
          
          while(rs.next())
          {
             a=rs.getString("Name");
             b=rs.getString("Birthday");
             c=rs.getString("Photo");
             d=rs.getString("Gender");
             e=rs.getString("Email");
             f=rs.getString("Password");   
            g=rs.getString("Phone");
             h=rs.getString("Securityq");
             i=rs.getString("Answer");                                                                         
          }                                               
       }
       
      catch(Exception z)
      {
          z.printStackTrace();
      }              
       
       
   %>
   
<div class="page-wrapper bg-gra-01 p-t-180 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-3">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">Registration Info</h2>
                    <form  action="u.jsp" method="post" enctype="multipart/form-data" name="form1" onsubmit="return check()">
                        <div class="input-group">
                           
                             <input  class="input--style-3" readonly type="text" name="name" value="<%=set%>">
                        </div>
                        <div class="input-group">
                            <input class="input--style-3 js-datepicker" type="text"  name="birthday" value="<%=b%>">
                            <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                        </div>
                        <div class="input-group">
                            
                            <a href="img.jsp?imageid='<%=set%>'">
                           <img src="img.jsp?imageid='<%=set%>'" width="100" height="100"></a>
                           <form action="u.jsp" enctype="multipart/form-data">
                               <input class="input--style-3" name="photo" type="file">
                           </form>
                        </div>
                        <div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="gender">
                                    <option disabled="disabled" selected="selected">Gender</option>
                                    <option>Male</option>
                                    <option>Female</option>
                                    <option>Other</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        <div class="input-group">
                            
                             <input class="input--style-3" type="email" name="email" value='<%=e%>'>
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="test" placeholder="password" name="pass" value='<%=f%>'>
                        </div>
                        <div class="input-group">
                           
                             <input class="input--style-3" type="text" name="phone" value='<%=g%>'>
                        </div>
                         <div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="s">
                                    <option disabled="disabled" selected="selected">Security Question</option>
                                    <option>How To Nice Meet You</option>
                                    <option>Beautiful</option>
                                    <option>Other</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                         <div class="input-group">
                            <input class="input--style-3" type="text"  name="a" value='<%=i%>'>
                        </div>
                        <div class="p-t-10">
                            <button class="btn btn--pill btn--green" type="submit">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor2/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor2/select2/select2.min.js"></script>
    <script src="vendor2/datepicker/moment.min.js"></script>
    <script src="vendor2/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js2/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->