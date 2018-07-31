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


<%@page import="com.hbm.StudentDAO"%>
<%@page import="com.hbm.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
    try {
            
        
    int id=Integer.parseInt(request.getParameter("id"));
    Student st=StudentDAO.findRecordById(id);
    String name=st.getName();
    String phone=st.getPhone();
       
%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
    </head>
    <body style="text-align: center">
        <a href="logOut.jsp">Logout</a><br><br><br>
        
        <h1>Edit Info</h1>
        
        <form action="updateStudent" method="post">
            ID: <input type="text" name="id" value="<%=id%>" readonly/><br><br>
            Name: <input type="text" name="name" value="<%=name%>"/><br><br>
            Phone: <input type="text" name="phone" value="<%=phone%>"/><br><br>
            <input type="submit" value="Submit Info"/><br><br>
        </form>
        
        <a href="index.jsp">Home</a>
       
              <%
                 }
     catch (Exception e) {
         out.println("Failed to access DB!!!!!<a href='index.jsp'>Home</a>");
        }
                  
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
