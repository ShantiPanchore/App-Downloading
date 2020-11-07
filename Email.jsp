<%-- 
    Document   : index
    Created on : Oct 9, 2019, 5:05:45 PM
    Author     : admin
--%>

<%@page import="java.beans.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>App Downloading</title>
        <style>
             body{
                 background-image: url(bg2.gif);
                 background-size: cover;
                 background-attachment: fixed;
             }
             .a{
                 background-image: url(wa.jpg);
                 background-size: cover;
                 background-attachment: fixed; 
             }
            img{
               height: 500px;
               width:500px;
               border-radius: 50px;
               max-width: 100%;
               height: auto;
              
               line-height: 8.0;
               border-color: black;
               
              
               
            }
            img:hover{
                box-shadow: 0 0 12px 5px rgba(0,140,186,0.8);
            }
        .style1 {color: #FFFFFF}
        </style>
    </head>
    <body>
        <center>
       
        <div>
        <img src="gif2.gif"><hr>
        </div>
        
    </center>
    <center>
    <form name="form1" method="post" action="mailapi" autocomplete="off">
        <table width="431" border="1" align="center" cellpadding="3" cellspacing="3"  class="a">
            <center>
        <tr>
       <td width="177" align="center"><span class="style1">TO</span></td>
          <td width="146"><input type="text" name="to">
          </td>
          
		 
        </tr>
        <tr>
          <td height="45" align="center" ><span class="style1">SUBJECT</span></td>
          <td>
            <input type="text" name="subject">       </td>
        </tr>
        <tr>
          <td height="58" align="center" ><span class="style1">MESSAGE</span></td>
          <td>
            <input type="text" name="message">        </td>
        </tr>
        <tr>
          <td height="53" align="center" ><span class="style1">USER</span></td>
          <td>
            <input type="text" name="user">          </td>
        </tr>
        <tr>
          <td height="61" align="center" ><span class="style1">PASSWORD</span></td>
          <td>
            <input type="password" name="password"  autocomplete="off">         </td>
        </tr>
        <tr>
          <td height="60" colspan="2" align="center">
            <input type="submit" name="Submit" value="Submit">        </td>
        </tr>
            </center>
      </table>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
    </form>
    </center>
    </body>
</html>
