<%-- 
    Document   : index.jsp
    Created on : Jul 24, 2018, 1:00:29 PM
    Author     : Student
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
        <title>Hibernate CRUD Demo</title>
    </head>
    <body style="text-align: center">
        <h1>Hello Hibernate Developer!</h1>
        <a href="logOut.jsp">Logout</a><br><br><br>
        
        <form action="updateStudent.jsp">    
        <input type="text" name="id" placeholder="enter id"/> 
        <input type="submit" value="Search"/>
         </form>
        <br><br>
        <form action="registration.jsp" method="Get">
            <input type="submit" value="Click to Add Student Info">
        </form>
        <br><br>
        <form action="viewStudent.jsp" method="Get">
            <input type="submit" value="Click to View All Students Info">
        </form>
        
        
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
