/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hbm;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Baappy
 */
@WebServlet("/updateStudent")
public class updateStudent extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         
            int id=Integer.parseInt(request.getParameter("id"));
            String name=request.getParameter("name");
            String phone=request.getParameter("phone");
            
            Student student=new Student();
            student.setId(id);
            student.setName(name);
            student.setPhone(phone);
            
            StudentDAO.updateRecord(student);
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>ManageStudent</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Student info Updated successfully!!!!!!!!</h1>");
            out.println("</body>");
            out.println("</html>");
       
            response.sendRedirect("viewStudent.jsp");
    }

}
