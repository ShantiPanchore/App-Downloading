<%-- 
    Document   : u
    Created on : Aug 19, 2019, 9:00:06 PM
    Author     : admin
--%>
<%@page import="sun.security.pkcs11.P11TlsKeyMaterialGenerator"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String set=(String)session.getAttribute("u");
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/playstoredatabase","root","");
        PreparedStatement ps=null;
        String s=null;
        String a=request.getParameter("name");
        String b=request.getParameter("birthday");
        String c=request.getParameter("gender");
         String d=request.getParameter("email");
        String e=request.getParameter("password");
        String f=request.getParameter("phone");
         String g=request.getParameter("s");
        String h=request.getParameter("a");
       // String c=request.getParameter("phone");
        try{
            InputStream input=null;
            Part filepart=request.getPart("photo");
            if(filepart!=null)
                               {
                input=filepart.getInputStream();
                s="update register set Birthday=?,Photo=?,Gender=?,Email=?,Password=?,Phone=?,Securityq=?,Answer=? where Name=?";
                ps=connection.prepareStatement(s);
                ps.setString(1, b);
                 // ps.setString(2, c);
                    ps.setBlob(2, input);
                    ps.setString(3, c);
                      ps.setString(4, d);
                       ps.setString(5, e);
                      ps.setString(6, f);
                      ps.setString(7, g);
                      ps.setString(8, h);
                      
                      int u=ps.executeUpdate();
                      if(u==1)
                                                   {
                          %>
                          <script>
                              alert("update");
                              window.location='updateaccount.jsp'
                          </script><%
                      }
                                           else{
                          out.print("Error");
                                           }
            }
        }
        catch(Exception x)
                               {
             out.print("Error"+x);
        }
                
        %>
    </body>
</html>
