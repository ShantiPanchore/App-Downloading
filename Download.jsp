<%-- 
    Document   : Download
    Created on : Sep 28, 2019, 9:07:28 PM
    Author     : admin
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>App Downloading</title>
        <style>
        
            
             body{
                 background-image: url(b6.jpg);
                 background-size: cover;
                 background-attachment: fixed;
             }
             .a{
                 background-image: url(b5.jpg);
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
        <table width="532" border=5 align="center" class="a">
      <tr>
    <td height="70" colspan=10 align="center">
        <b>Download Images</b></td>
  </tr>
  <hr>
  
  <tr><td width="92" height="33" align="center">Sno</td> 
  <td width="226" align="center">Photo</td>
  <td>Download</td></tr>
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
<a href="image.jsp?imgid=<%=rs.getInt(1)%>">
<img src="image.jsp?imgid=<%=rs.getInt(1)%>"
         width="300" height="200">
</a>
             
  </td>
 

 
  <td align="center" width="184" headers="50"><a href="dd?G_id=<%=rs.getInt(1)%>">Download</a></td>

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
 </BODY>
9i</HTML>