<%-- 
    Document   : Delete
    Created on : Aug 19, 2019, 9:38:08 PM
    Author     : admin
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>App Downloading</title>
        <style type="text/css">
<!--
.style1 {color: #000000}
-->
 body{
                 background-image: url(wa.jpg);
                 background-size: cover;
                 background-attachment: fixed;
             }
.a{
                 background-image: url(b2.jpg);
                 background-size: cover;
                 background-attachment: fixed; 
             }
        </style>
</head>
    <body >
        <center>
        <form name="frm" action="Delete_1.jsp">
          <h1 class="style1"> Delete Record Into DtaBase</h1>
            <br>
            Staff ID<input  type="text" name="a"><br>
            <input  type="submit" name="a1" value="show">
        </form>
		</center>
        <%
        
        try{
            Connection connection=null;
            int empid=Integer.parseInt(request.getParameter("a"));
              Class.forName("com.mysql.jdbc.Driver");
         connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/playstoredatabase","root","");
        Statement s=connection.createStatement();
        ResultSet rs=s.executeQuery("select * from register where id='"+empid+"'");
               
                
                if(rs.next())
                                       {
                   // out.print(rs.getString("name"));
                    %>
                   <center> <h1>Your Account InforMantion</h1> 
                    <form action="Delete_1.jsp" method="post" enctype="multipart/form-data" >
                        <table border="2" class="a">
                            <tr>
                                <td width="250" height="55"> Name</td>
                              <td width="256"><input type="text" name="name" value="<%=rs.getString("Name")%>"></td>
                            </tr>
                              <tr>
                                <td height="51">Birthday</td>
                                <td><input type="text" name="name" value="<%=rs.getString("Birthdate")%>"></td>
                            </tr>
                              <tr>
                                <td height="81">Photo</td>
                                <td><img src="img_1.jsp?id=<%=rs.getInt("id")%>" width="100" height="100"></td>
                            </tr>
                            <tr>
                                <td height="74">Gender</td>
                                <td><input type="text" name="name" value="<%=rs.getString("Gender")%>"></td>
                            </tr>
                              <tr>
                                <td height="82">Email</td>
                                <td><input type="text" name="name" value="<%=rs.getString("Email")%>"></td>
                            </tr>
                              <tr>
                                <td height="75">Password</td>
                                <td><input type="text" name="name" value="<%=rs.getString("Password")%>"></td>
                            </tr>
                             <tr>
                                <td height="88">Phone</td>
                                <td><input type="text" name="name" value="<%=rs.getString("Phone")%>"></td>
                            </tr>
                              <tr>
                                <td height="80">Securityq</td>
                                <td><input type="text" name="name" value="<%=rs.getString("Securityq")%>"></td>
                            </tr>
                            <tr>
                                <td height="76">Answer</td>
                                <td><input type="text" name="name" value="<%=rs.getString("Answer")%>"></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center"><label><input type="hidden" name="h" value="<%=empid%>">
                                    <input type="submit" name="h" value="Delete">
                                    </label></td>
                            </tr>
                            
                        </table>
                        
                    </form>
					</center>
                 <% 
                  
                }
        else
                       {
            out.println("<script>alert('not found')</script>");
        }
                
        }
        catch(Exception e)
                               {
            e.printStackTrace();
            
        }%>
                    <%
        try{
             Connection con=null;
           
             
         con=DriverManager.getConnection("jdbc:mysql://localhost:3306/playstoredatabase","root","");
      PreparedStatement s=null;
    String sql=null;
    int h1=Integer.parseInt(request.getParameter("h"));
    sql="Delete  from register where id=?";
    s=con.prepareStatement(sql);
    s.setInt(1,h1);
    int y = s.executeUpdate();
    if(y==1)
               {
        out.println("Record Deleted");
        
    }
    else
               {
        out.println("Record Not Deleted");
    }
    
        }
        catch(Exception e)
                               {
            
        }
        %>
        <p><p>&nbsp;</p></p>
    
    </body>
</html>
