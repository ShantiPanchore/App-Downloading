<%-- 
    Document   : View_Aaps
    Created on : Oct 4, 2019, 7:48:45 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>App Downloading</title>
        <%@ page import="java.sql.*,java.io.*,java.util.*" %>
    <style>
         
             body{
                 background-image: url(wa7.jpg);
                 background-size: cover;
                 background-attachment: fixed;
             }
             .a{
                 background-image: url(b2.jpg);
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
            
            
           
    <body>
         <a href="Admin.jsp">Back</a>
    <center>
       
        <div>
        <img src="admin.jpg">
        </div>
        
    </center>

    

 
  
  <table width="685" border=5 align="center" class="a">
      <tr>
    <td height="70" colspan=10 align="center" >
        <h1>View Record For Games Categries</h1></td>
  </tr>
  <hr>
  
  <tr>
  <td width="183" height="33" align="center">Sno</td> 
  <td width="261" align="center">Games Photo</td>
  <td align="center">Games Name</td>
  </tr>
  <%
Connection con=null;

try{
Class.forName("com.mysql.jdbc.Driver");
 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/playstoredatabase","root","");

	Statement stmt=con.createStatement();

                String strQuery = "select G_id,G_name,G_pic,file from games";

	ResultSet rs = stmt.executeQuery(strQuery);
                
        int sno=0;
                while(rs.next())
		{
	sno++;
	%>
  <tr >
<td><b><%=sno%></b></td>
 <td align="center">

<a href="image_4.jsp?imgid=<%=rs.getInt(1)%>">
<img src="image_4.jsp?imgid=<%=rs.getInt(1)%>"
         width="200" height="170">
</a>
                 
  </td>
 

<td align="center" width="211" headers="50"><%=rs.getString(2)%></td>


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
</HTML>