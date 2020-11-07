<%-- 
    Document   : newjsp
    Created on : Sep 27, 2019, 5:03:59 PM
    Author     : admin
--%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>App Downloading</title>
        <%@ page import="java.sql.*,java.io.*,java.util.*" %>
     
    <style>
        
            
             body{
                 background-image: url(b6.jpg);
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

    

 
  
  <table width="871" border=5 align="center" class="a">
      <tr>
    <td height="70" colspan=10 align="center">
        <h1>Delete User Record For Register</h1></td>
  </tr>
  <hr>
  
  <tr ><td width="85" height="33" align="center">Sno</td> 
  <td width="240" align="center">Photo</td>
  <td align="center">Name</td><td>Email</td><td>Delete Information</td> </tr>
  <%
Connection con=null;

try{
Class.forName("com.mysql.jdbc.Driver");
 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/playstoredatabase","root","");

	Statement stmt=con.createStatement();

                String strQuery = "select id,Name,Photo,Email from register";

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
 

  <td align="center" width="147" headers="50"><%=rs.getString(2)%></td>
 <td align="center" width="160" headers="50"><%=rs.getString(4)%></td>
 <td align="center" width="197" headers="50"><form action="Delete_1.jsp"><input type="submit" value="Delete" style="background-color: pink; font-weight: bold; color: #ffffff;"  onclick="editRecord(<%=rs.getInt(1)%>)"></form></td>

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