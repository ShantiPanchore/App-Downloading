<%-- 
    Document   : Register1
    Created on : Sep 22, 2019, 9:04:16 AM
    Author     : admin
--%>

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
                       // alert("Formet Is Correct");
                        return true;
                    }
            }
             
    </script>
</head>

<body>
   
<div class="page-wrapper bg-gra-01 p-t-180 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-3">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">Registration Info</h2>
                    <form  action="RegiterCode.jsp" method="post" enctype="multipart/form-data" name="form1" onsubmit="return check()">
                       <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Sno" name="id">
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Name" name="name">
                        </div>
                        <div class="input-group">
                            <input class="input--style-3 js-datepicker" type="text" placeholder="Birthdate" name="birthday">
                            <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="file" placeholder="Photo" name="photo">
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
                            <input class="input--style-3" type="email" placeholder="Email" name="email">
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="test" placeholder="password" name="pass">
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Phone" name="phone">
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
                            <input class="input--style-3" type="text" placeholder="Answer" name="a">
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