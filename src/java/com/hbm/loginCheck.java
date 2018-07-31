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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Bappy
 */
@WebServlet("/loginCheck")
public class loginCheck extends HttpServlet {

@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
      
                HttpSession session=request.getSession();
                
        
                //add
          String id = request.getParameter("id");
          String pass = request.getParameter("pass");

          if ((id.equals("admin") && pass.equals("1234"))) {
              
              session.setAttribute("admin", "admin");
              response.sendRedirect("index.jsp");
          } else {
              response.sendRedirect("login.jsp");
          }
      }
        
        
    }

