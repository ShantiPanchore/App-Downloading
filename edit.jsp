<%-- 
    Document   : edit
    Created on : Aug 26, 2019, 9:11:54 PM
    Author     : admin
--%>
<%@page import ="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>App Downloading</title>
        <style>
        
          body{
                 background-image: url(b16.jpg);
                 background-size: cover;
                 background-attachment: fixed;
             }
             .a{
                 background-image: url(b2.jpg);
                 background-size: cover;
                 background-attachment: fixed; 
             }   
            img{
               height: 200px;
               width:200px;
               border-radius: 50px;
               max-width: 100%;
               height: auto;
              
               line-height: 8.0;
               border-color: black;
               
              
               
            }
            img:hover{
                box-shadow: 0 0 12px 5px rgba(0,140,186,0.8);
            }
        </style>
    </head>
    <body  >
         <br>
         <a href="home.jsp">Back</a><br>
        <form method="post" name="form" action="edit1.jsp">
            <center>
            
       
    <table border="5" align="center" class="a">
        <tr><th colspan="2">Update User Record</th>
        </tr><br><br>
       
        <%
        String id=request.getParameter("id");
        int no=Integer.parseInt(id);
       // out.println(no);
        Connection con=null;
        
        
         
        
         Statement st;
         try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/playstoredatabase","root","");
            
            String q="select * from register where id="+no;
            
            st=con.createStatement();
            
          ResultSet rs=st.executeQuery(q);
         
        
        while(rs.next())
                       {
        %>
        
        <tr>
      <tr>
                         <td width="194" height="55"> Name</td>
        <td width="353"><input type="text" name="a" align="center" value="<%=rs.getString("Name")%>"></td>
      </tr>
                              <tr>
                                <td height="51">Birthday</td>
                                <td><input type="text" name="b" align="center" value="<%=rs.getString("Birthdate")%>"></td>
                            </tr>
                              <tr>
                                <td height="81">Photo</td>
                                <td><img src="img_1.jsp?id=<%=rs.getInt("id")%>" width="100" height="100" align="center"></td>
                             </tr>
                            <tr>
                                 <td height="74">Gender</td>
                                <td><input type="text" name="c" align="center" value="<%=rs.getString("Gender")%>"></td>
                            </tr>
                              <tr>
                                <td height="82">Email</td>
                                <td><input type="text" name="d" align="center" value="<%=rs.getString("Email")%>"></td>
                            </tr>
                              <tr>
                                <td height="75">Password</td>
                                <td><input type="text" name="e" align="center" value="<%=rs.getString("Password")%>"></td>
                            </tr>
                             <tr>
                                <td height="88">Phone</td>
                                <td><input type="text" name="f" align="center" value="<%=rs.getString("Phone")%>"></td>
                            </tr>
                              <tr>
                                <td height="80">Securityq</td>
                                <td><input type="text" name="g" align="center" value="<%=rs.getString("Securityq")%>"></td>
                            </tr>
                            <tr>
                                <td height="76">Answer</td>
                                <td><input type="text" name="h" align="center" value="<%=rs.getString("Answer")%>"></td>
                            </tr>
            <td><input type="hidden" name="id" value="<%=rs.getInt(1)%>">            </td>
            
       
        
        
        </tr><br><br>
         <tr colspan="3"><input type="submit" value="Update"></tr>
       
        
       
        
        <%            
         }
                   }
         catch(Exception e)
                                 {
             
         }
        
        %>
    </table>
            </center>
     </form>
  
    </body>
</html>
