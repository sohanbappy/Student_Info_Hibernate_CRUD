<%-- 
    Document   : viewStudent.jsp
    Created on : Jul 24, 2018, 1:03:17 PM
    Author     : Student
--%>

    <%
        try{
    if((session.getAttribute("admin").equals("admin")))
    {
    
     %>

<%@page import="com.hbm.Student"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.hbm.StudentDAO" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Students</title>
    </head>
    <body style="text-align: center">
        
        <a href="logOut.jsp">Logout</a><br><br><br>
        
        <h1>Student Info</h1>

        <table style="padding: 20px; border:solid red 1px; text-align: center;margin-left: 600px;">
            <th border="">ID</th><th>Name</th><th>Phone</th><th colspan="2">Action</th>
            <%
                try {
                        
                   
                List<Student> students = StudentDAO.displayAllRecords();

                for (Student st : students) {
                    int id=st.getId();
                    String name=st.getName();
                    String phone=st.getPhone();
            %>
            <tr><td><%=id%></td><td><%=name%></td><td><%=phone%></td><td><a href="updateStudent.jsp?id=<%=id%>">Update</a></td><td><a href="deleteStudent?id=<%=id%>">Delete</a></td></tr>
       <% 
        }
        
             } catch (Exception e) {
                        out.println("Problem is: "+e);
                    }
        %>
        </table>

        <br><br><br>
        <a href="registration.jsp">Click to Add New Info</a><br><br><br>
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
