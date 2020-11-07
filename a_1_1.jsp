<%-- 
    Document   : a
    Created on : Sep 25, 2019, 5:44:21 PM
    Author     : admin
--%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
       <%
        Connection con=null;
         
        
        
        String c="jdbc:mysql://localhost:3306/playstoredatabase";
        
         String Name=request.getParameter("select");
         String Name1=request.getParameter("n");
         String Name2=request.getParameter("id");
        // String Name2=request.getParameter("p");
           
         
          
          try
          {
              Class.forName("com.mysql.jdbc.Driver");
              con=DriverManager.getConnection(c,"root","");
              InputStream is=null;
              InputStream is1=null;
              Part filePart=request.getPart("file");
              //if(filePart!=null)
                                   //{
                  out.println(filePart.getName());
                   out.println(filePart.getSize());
                    out.println(filePart.getContentType());
                    is1=filePart.getInputStream();
                     
                    Part filePart1=request.getPart("uploadfile");
              //if(filePart1!=null)
                                  // {
                  out.println(filePart1.getName());
                   out.println(filePart1.getSize());
                    out.println(filePart1.getContentType());
                    is=filePart1.getInputStream();
                    String q="insert into "+Name+"(M_id,M_name,M_pic,file) values(?,?,?,?)"; 
                    


                PreparedStatement ps=con.prepareStatement(q);
                             
                       ps.setString(1, Name2);
                    ps.setString(2, Name1);
                    // ps.setString(2, birthday);
                      ps.setBlob(3, is);
                       ps.setBlob(4,is1);
                       
                            
                         
                             int r=ps.executeUpdate();
                          if(r>0)
                                                           {
                           out.println("<br> file upload  and saved databasae");
                           //response.sendRedirect("thank.jsp");;
                              
                       }
                    
                 //}
            }
          catch(Exception e)
          {
              out.println(e.toString());
          }
         
        %>
    </body>
</html>
