<%-- 
    Document   : img
    Created on : Aug 16, 2019, 11:09:50 PM
    Author     : admin
--%>
<%@page import="java.io.InputStream"%>
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
           Connection con=null;
           PreparedStatement ps=null;
           ResultSet rs=null;
           String sql=null;
           String a=request.getParameter("id");
         con=DriverManager.getConnection("jdbc:mysql://localhost:3306/playstoredatabase","root","");
            Statement st=null;
            st = con.createStatement();
            sql="select G_pic from games where G_id='"+a+"'";
            rs=st.executeQuery(sql);
            String imaglen = "";
            while(rs.next())
                               {
                imaglen=rs.getString(1);
                int len=imaglen.length();
                byte[]  rb=new byte[len];
                InputStream reading=rs.getBinaryStream(1);
                int index=reading.read(rb, 0, len);
                response.reset();
                response.setContentType("image/jsp");
                response.getOutputStream().write(rb,0,len);
                response.getOutputStream().flush();
                
                
                
                
            }
            st.close();
       }
       catch(Exception e)
                             {
           System.out.println("Error"+e);
           
       }
       %>
    </body>
</html>
