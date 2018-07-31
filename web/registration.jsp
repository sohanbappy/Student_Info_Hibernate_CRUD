<%-- 
    Document   : registration.jsp
    Created on : Jul 25, 2018, 1:59:10 PM
    Author     : Bappy
--%>
    <%
        try{
    if((session.getAttribute("admin").equals("admin")))
    {
    
     %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
    </head>
    <a href="logOut.jsp">Logout</a><br><br><br>
    
    <body style="text-align: center">
        <h1>Fill up all the Info</h1>
        
        <form action="addStudent">
            ID: <input type="text" name="id"/><br><br>
            Name: <input type="text" name="name"/><br><br>
            Phone: <input type="text" name="phone"/><br><br>
            <input type="submit" value="Submit Info"/><br><br>
        </form>
        
        <a href="index.jsp">Home</a>
        
        
              <%
    }
   else{
    %> 
    
    You Are Not Logged in As an Admin!!!!!<br><br>
    Plz login <a href="login.jsp">Click Here</a>
    
    <%   }
      }
    catch(Exception e){

    %>
    You Are Not Eligible!!!!!<br><br>
    Plz login <a href="login.jsp">Click Here</a>
    
    <%
    }
    %>
        
    </body>
</html>
