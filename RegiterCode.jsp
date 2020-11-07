<%-- 
    Document   : RegiterCode
    Created on : Sep 21, 2019, 1:02:52 PM
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
         <%
        Connection con=null;
        String c="jdbc:mysql://localhost:3306/playstoredatabase";
        String First1=request.getParameter("id");
         String First=request.getParameter("name");
          String birthday=request.getParameter("birthday");

          String gender=request.getParameter("gender");
          String email=request.getParameter("email");
          String pass=request.getParameter("pass");
          String phone=request.getParameter("phone");
           String securityq=request.getParameter("s");
          String answer=request.getParameter("a");
          
          try
          {
              Class.forName("com.mysql.jdbc.Driver");
              con=DriverManager.getConnection(c,"root","");
              InputStream is=null;
              Part filePart=request.getPart("photo");
              if(filePart!=null)
                                   {
                  out.println(filePart.getName());
                   out.println(filePart.getSize());
                    out.println(filePart.getContentType());
                    is=filePart.getInputStream();
                    String q="insert into register(id,Name,Birthdate,Photo,Gender,Email,Password,Phone,Securityq,Answer) values(?,?,?,?,?,?,?,?,?,?)"; 
                    


                PreparedStatement ps=con.prepareStatement(q);
                             
                      ps.setString(1, First1);
                    ps.setString(2, First);
                     ps.setString(3, birthday);
                      ps.setBlob(4, is);
                       ps.setString(5, gender);
                        ps.setString(6, email);
                         ps.setString(7, pass);
                         
                          ps.setString(8, phone);
                          
                             ps.setString(9, securityq);
                         
                          ps.setString(10, answer);
                          
                            
                         
                             int r=ps.executeUpdate();
                          if(r>0)
                                                           {
                          // out.println("<br> file upload  and saved databasae");
                           response.sendRedirect("thank.jsp");;
                              
                       }
                    
                 }
            }
          catch(Exception e)
          {
              out.println(e.toString());
          }
         
        %>
    </body>
</html>
