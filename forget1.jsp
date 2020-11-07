<%-- 
    Document   : forget1
    Created on : Sep 22, 2019, 2:40:49 PM
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
    <link href="css4/main.css" rel="stylesheet" media="all">
    <script>
       
            function check()
            {
                
                 if(document.form1.user.value=="")
                    {
                     alert("Enter User Name");  
                     document.form1.user.focus();
                     return false;
                    }
                      if(document.form1.s.selectedIndex==0)
                    {
                        alert("please Selecetd Security Answer");
                         return false;
                    }
                     if(document.form1.answer.value=="")
                    {
                     alert("Enter Your Answer");  
                     document.form1.answer.focus();
                     return false;
                    }
                    else{
                        return true;
                    }
             }       
    </script>
</head>

<body>
     <%
         if(request.getParameter("check")!=null)
                         {
        String user=request.getParameter("user");
        String sec=request.getParameter("s");
        session.setAttribute("user",user);
        String answer=request.getParameter("answer");
         try{
           
            Connection con=null;
            Class.forName("com.mysql.jdbc.Driver");
            String jdbcurl="jdbc:mysql://localhost:3306/playstoredatabase";
            con=DriverManager.getConnection(jdbcurl,"root","");
            PreparedStatement ps=null;
            ResultSet rs=null;
            String sql=null;
            sql="select * from register where Name='"+user+"'and Securityq='"+sec+"'and Answer='"+answer+"'";
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            if(rs.next())
            {
             %> 
             <script>
                 alert('you want to change password');
                 window.location.href='changep3.jsp';
             </script>
        
        
        <%   
            }
                       else
                       {
                  out.print(" <script>alert('you account not found');</script");
                     out.print(" <script>alert( window.open('index.jsp');</script>");                      
               
                       }
            }
         catch(Exception e)
         {
             out.print(e);
         }
         }
         
        %>
         
   
<div class="page-wrapper bg-gra-01 p-t-180 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-3">
                <div class="card-heading"></div>
                <div class="card-body">
                    <center><h2 class="title">Forget Password</h2></center><br><br>
                    <form  action="forget1.jsp" method="post" enctype="multipart/form-data" name="form1" onsubmit="return check()">
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="UserName" name="user">
                        </div><br>
                       
                      
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
                        </div><br>
                       
                       
                       
                        
                         <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Answer" name="answer">
                        </div><br><br>
                        <div class="p-t-10">
                            <button class="btn btn--pill btn--green" type="submit" value="check" name="check">Check</button>
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
