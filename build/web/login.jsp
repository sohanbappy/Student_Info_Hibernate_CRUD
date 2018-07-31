<%-- 
    Document   : login.jsp
    Created on : Jul 26, 2018, 1:20:41 AM
    Author     : Bappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body style="text-align: center">
        <h1>Admin Login</h1>
        <form action="loginCheck" method="POST">
            <input type="text" name="id" placeholder="enter id"/> <br><br>
            <input type="text" name="pass" placeholder="enter passwod"/> <br><br>
            <input type="submit" value="Login"/>
        </form>
       
        
        
    </body>
</html>
