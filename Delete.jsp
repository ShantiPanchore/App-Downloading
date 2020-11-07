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
    </head>
    <body>
        
        <form name="frm" action="Delete.jsp">
            <h1>Delete Record Into DtaBase</h1>
            <br>
            User Name<input type="text" name="a"><br>
            <input type="submit" name="a1" value="show">
        </form>
        <%
        
        try{
            Connection connection=null;
            int Name=Integer.parseInt(request.getParameter("a"));
              Class.forName("com.mysql.jdbc.Driver");
         connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/playstoredatabase","root","");
        Statement s=connection.createStatement();
        ResultSet rs=s.executeQuery("select * from register where Name='"+Name+"'");
               
                
                if(rs.next())
                                       {
                    out.print(rs.getString("Name"));
                    %>
                    <h3>Your Account InforMantion</h3> 
                    <form action="Delete.jsp" method="post">
                        <table border="2" bgcolor="lightblue">
                            <tr>
                                <td> Name</td>
                                <td><input type="text" name="name" value="<%=rs.getString("Name")%>"></td>
                            </tr>
                              <tr>
                                <td>Birthday</td>
                                <td><input type="text" name="name" value="<%=rs.getString("Birthday")%>"></td>
                            </tr>
                              <tr>
                                <td>Gender</td>
                                <td><input type="text" name="name" value="<%=rs.getString("Gender")%>"></td>
                            </tr>
                            <tr>
                                <td> Email</td>
                                <td><input type="text" name="name" value="<%=rs.getString("Email")%>"></td>
                            </tr>
                              <tr>
                                <td>Password</td>
                                <td><input type="text" name="name" value="<%=rs.getString("Password")%>"></td>
                            </tr>
                              <tr>
                                <td>Phone</td>
                                <td><input type="text" name="name" value="<%=rs.getString("Phone")%>"></td>
                            </tr>
                             <td>Security Question</td>
                                <td><input type="text" name="name" value="<%=rs.getString("Securityq")%>"></td>
                            </tr>
                              <tr>
                                <td>Answer</td>
                                <td><input type="text" name="name" value="<%=rs.getString("Answer")%>"></td>
                            </tr>
                           
                        
                                <td colspan="2" align="center"><input type="hidden" name="h" value="<%=Name%>">
                                    <input type="submit" name="h" value="Delete">
                                 </td>
                            </tr>
                            
                        </table>
                        
                    </form>
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
    sql="Delete  from register where Name=?";
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
    <p><a href="home.jsp">Go To Home </a></p>
    </body>
</html>
