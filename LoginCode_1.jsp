<%-- 
    Document   : LoginCode
    Created on : Sep 21, 2019, 2:10:24 PM
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
        <%
       try{
       String user=request.getParameter("u");
       String pass=request.getParameter("p");
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/playstoredatabase","root","");
       Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("select * from admin where UserName='"+user+"'and Password='"+pass+"'");
       if(rs.next())
       {
           session.setAttribute("u",user);
           response.sendRedirect("index3.jsp");
       }
       else
              {
           
       
       %>
       <script>
           alert("Invalid Login Please Try Again !!");
           window.location="login.jsp";
       </script>
       <%
             }
       }
             catch(Exception e)
             {
                 out.println(e.toString());
             }
       %>
    </body>
</html>
