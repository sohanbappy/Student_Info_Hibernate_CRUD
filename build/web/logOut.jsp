<%
    session.setAttribute("admin", null);
    session.invalidate();
    
    response.sendRedirect("login.jsp");
    %>