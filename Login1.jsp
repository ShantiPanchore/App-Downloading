<%-- 
    Document   : Login1
    Created on : Sep 22, 2019, 3:57:05 PM
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
    <link href="css3_1/main.css" rel="stylesheet" media="all">
    <style>
        .body{
            background-image: url("image-1.png");
        }
    </style>
     <script>
            function basic()
            {
                if(document.form1.u.value=="")
                    {
               alert("Enter Your User Name");  
                     document.form1.u.focus();
                     return false;
                    }
                    if(document.form1.p.value=="")
                    {
                alert("Enter Your passWord");  
                     document.form1.p.focus();
                     return false;
                    }
                      
                    
                    return true;
            }
        
        
        </script>
</head>

<body>
    <div class="page-wrapper bg-gra-01 p-t-180 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-3">
                <div class="card-heading"></div>
                <div class="card-body">
                    <center><h2 class="title">User Login</h2></center><br><br><br>
                    <form  action="LoginCode.jsp" method="post" enctype="multipart/form-data" name="form1" onsubmit="return basic()">
                        
                         <div class="input-group" id="une">
                            <input class="input--style-3" type="text" placeholder="User Name" name="u">
                        </div>
                         <div class="input-group" id="une1">
                            <input class="input--style-3" type="text" placeholder=" Passwod" name="p">
                        </div>
                        <div class="p-t-10">
                            <input class="btn btn--pill btn--green" type="submit"value="Login">
                        </div><br>
                        <div class="p-t-10">
                           <a href="forget1.jsp" class="input--style-3">Forget PassWord</a>
                        </div><br>
                        <div class="p-t-10">
                           <a href="user-feadback.jsp" class="input--style-3">Feadback</a>
                        </div><br>
                        <div class="p-t-10">
                            <a href="Register1.jsp" class="input--style-3">Register Here</a>
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
