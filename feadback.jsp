<%-- 
    Document   : feadback
    Created on : Oct 14, 2019, 10:22:19 AM
    Author     : admin
--%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>App Downloading</title>
    </head>
    <body>
       <body>
         <%
        Connection con=null;
        String c="jdbc:mysql://localhost:3306/playstoredatabase";
        
         String First=request.getParameter("name");
          
          String email=request.getParameter("email");
          String pass=request.getParameter("message");
         
          
          try
          {
              Class.forName("com.mysql.jdbc.Driver");
              con=DriverManager.getConnection(c,"root","");
              
                    String q="insert into Cament(Name ,Email ,Message) values(?,?,?)"; 
                    


                PreparedStatement ps=con.prepareStatement(q);
                             
                     
                    ps.setString(1, First);
                    
                        ps.setString(2, email);
                         ps.setString(3, pass);
                         
                         
                             int r=ps.executeUpdate();
                          if(r>0)
                                                           {
                          // out.println("<br> file upload  and saved databasae");
                           response.sendRedirect("thank.jsp");;
                              
                       }
                    
                 
            }
          catch(Exception e)
          {
              out.println(e.toString());
          }
         
        %>
    </body>
</html>
