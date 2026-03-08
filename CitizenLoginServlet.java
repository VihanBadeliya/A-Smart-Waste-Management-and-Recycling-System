/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com2;

import com1.DBConnection;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;

/**
 *
 * @author Dell
 */
public class CitizenLoginServlet extends HttpServlet {
@Override
    protected void doPost(HttpServletRequest request,HttpServletResponse response)
    throws ServletException,IOException {

    String username=request.getParameter("username");
    String password=request.getParameter("password");

    try{

        Connection con=DBConnection.getConnection();

        PreparedStatement ps=con.prepareStatement(
        "select * from citizen where username=? and password=?");

        ps.setString(1,username);
        ps.setString(2,password);

        ResultSet rs=ps.executeQuery();

        if(rs.next()){

            HttpSession session=request.getSession();
            session.setAttribute("citizenId",rs.getInt("id"));
            session.setAttribute("citizenName",rs.getString("name"));

            response.sendRedirect("citizenDashboard.jsp");

        }

        else{

            request.setAttribute("error","Invalid Username or Password");

            RequestDispatcher rd=request.getRequestDispatcher("citizenLogin.jsp");
            rd.forward(request,response);

        }

    }

    catch(Exception e){e.printStackTrace();}

    }
}