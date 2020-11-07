<%-- 
    Document   : edit1
    Created on : Aug 26, 2019, 9:57:29 PM
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
        String ide=request.getParameter("id");
        int num=Integer.parseInt(ide);
      
         String a=request.getParameter("a");
          String b=request.getParameter("b");
           String c=request.getParameter("c");
            String d=request.getParameter("d");
          String e=request.getParameter("e");
           String f=request.getParameter("f");
            String g=request.getParameter("g");
          String h=request.getParameter("h");
           //String contact=request.getParameter("c");
           
           try
                      {
               Connection con=null;
               Class.forName("com.mysql.jdbc.Driver");
               con=DriverManager.getConnection("jdbc:mysql://localhost:3306/playstoredatabase","root","");
            Statement st=null;
            st=con.createStatement();
          //  String q = "update staff set name='"+name+"',DepartMent='"+dept+"', phone="+contact+ " where id ="num);
            
           
           st.executeUpdate("update register set Name='"+a+"',Birthdate='"+b+"',Gender='"+c+"',Email='"+d+"',Password='"+e+"',Phone='"+f+"',Securityq='"+g+"',Answer='"+h+"' where id="+num);
          %> <script>alert("update");</script><%
           response.sendRedirect("Admin.jsp");
           }
           catch(Exception x)
          {
               x.printStackTrace();
          }
        %>
    </body>
</html>
