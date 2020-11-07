<%-- 
    Document   : updatepassword2
    Created on : Aug 30, 2019, 8:50:01 AM
    Author     : admin
--%>
<%@page import ="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>App Downloading</title>
    </head>
    <body>
         <%
       try{
       String user=request.getParameter("user");
      String new1=request.getParameter("newpass");
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/playstoredatabase","root","");
        PreparedStatement ps=null;
            ResultSet rs=null;
            String sql=null;
           sql="update register set Password='"+new1+"'where Name='"+user+"'";
           ps=con.prepareStatement(sql);
           int p1=0;
           p1=ps.executeUpdate();
           if(p1>0)
               
            {
               %>
                <script>
                 
                 window.location.href='success.jsp';
             </script>
         <%
           }
           else
           {
               %>
          <script>
                 alert('new password not set succufullly');
                 window.location.href='ind.jsp';
             </script>
             <%
               
           }
            
             }
       catch(Exception e)
        {
           out.print(e);
       }
       %>
       
    </body>
</html>
