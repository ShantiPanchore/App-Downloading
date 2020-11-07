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
        <style type="text/css">
<!--
-->
 body{
                 background-image: url(wa.jpg);
                 background-size: cover;
                 background-attachment: fixed;
             }
.a{
                 background-image: url(b2.jpg);
                 background-size: cover;
                 background-attachment: fixed; 
             }
        .style2 {color: #FFFFFF}
        </style>
</head>
    <body >
        <center>
        <form name="frm" action="Delete_2.jsp">
          <h1 class="style2" color="white"> Delete Record a Insert Aaaps For Downloading</h1>
            <br>
            <span class="style2">Games Id  </span>D
            <input  type="text" name="a"><br>
            <input  type="submit" name="a1" value="show">
        </form>
		</center>
        <%
        
        try{
            Connection connection=null;
            int empid=Integer.parseInt(request.getParameter("a"));
              Class.forName("com.mysql.jdbc.Driver");
         connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/playstoredatabase","root","");
        Statement s=connection.createStatement();
        ResultSet rs=s.executeQuery("select * from games where G_id='"+empid+"'");
               
                
                if(rs.next())
                                       {
                   // out.print(rs.getString("name"));
                    %>
                   <center> <h1 class="style2">Games Aaps Account InforMantion</h1> 
                    <form action="Delete_2.jsp" method="post" enctype="multipart/form-data" >
                        <table border="2" class="a">
                            <tr>
                                <td width="250" height="55">Gmaes Id</td>
                              <td width="256"><input type="text" name="name" value="<%=rs.getString("G_id")%>"></td>
                            </tr>
                              <tr>
                                <td height="51">Games Name</td>
                                <td><input type="text" name="name" value="<%=rs.getString("G_name")%>"></td>
                            </tr>
                              <tr>
                                <td height="81">Games Photo</td>
                                <td><img src="image_4.jsp?imgid=<%=rs.getInt("G_id")%>" width="100" height="100"></td>
                            </tr>
                           
                            
                            <tr>
                                <td colspan="2" align="center"><input type="hidden" name="h" value="<%=empid%>">
                                    <input type="submit" name="h" value="Delete">
                              </td>
                            </tr>
                            
                        </table>
                        
                    </form>
	</center>
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
    sql="Delete  from games where G_id=?";
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
    
    </body>
</html>
