<%-- 
    Document   : index
    Created on : Jan 1, 2002, 6:58:49 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>App Downloading</title>
        <%@ page import="java.sql.*,java.io.*,java.util.*" %>
    <style>
         
             body{
                 background-image: url(b3.jpg);
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

    

 
  
  <table width="1046" border=5 align="center" class="a">
      <tr>
    <td height="70" colspan=10 align="center" >
        <h1>View Record For User Register</h1></td>
  </tr>
  <hr>
  
  <tr ><td width="51" height="33" align="center">Sno</td> 
  <td width="204" align="center">Photo</td>
  <td align="center">Name</td><td align="center">Birthday</td><td align="center">Gender</td><td align="center">Email</td><td align="center">Password</td><td align="center">Phone</td><td align="center">Security_Question</td><td align="center">Answer</td></tr>
  <%
Connection con=null;

try{
Class.forName("com.mysql.jdbc.Driver");
 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/playstoredatabase","root","");

	Statement stmt=con.createStatement();

                String strQuery = "select id,Name,Birthdate,Gender,Email,Password,Phone,Securityq,Answer from register";

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
         width="200" height="170">
</a>
                 
  </td>
 

  <td align="center" width="78" headers="50"><%=rs.getString(2)%></td>
<td align="center" width="67" height="100"><%=rs.getString(3)%></td>
<td align="center" width="78" height="100"><%=rs.getString(4)%></td>
<td align="center" width="113" height="100"><%=rs.getString(5)%></td>
<td align="center" width="60" height="100"><%=rs.getString(6)%></td>
<td align="center" width="117" height="100"><%=rs.getString(7)%></td>
<td align="center" width="111" height="100"><%=rs.getString(8)%></td>
<td align="center" width="95" height="100"><%=rs.getString(9)%></td>

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
</html>