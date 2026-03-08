package com2;

import com1.DBConnection;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;

public class DriverLoginServlet extends HttpServlet {

protected void doPost(HttpServletRequest request,HttpServletResponse response)
throws ServletException,IOException {

String username=request.getParameter("username");
String password=request.getParameter("password");

try{

Connection con=DBConnection.getConnection();

PreparedStatement ps=con.prepareStatement(
"select * from driver where username=? and password=?");

ps.setString(1,username);
ps.setString(2,password);

ResultSet rs=ps.executeQuery();

if(rs.next()){

HttpSession session=request.getSession();

session.setAttribute("driverId",rs.getInt("id"));

response.sendRedirect("driverDashboard.jsp");

}

else{

request.setAttribute("error","Invalid Login");

RequestDispatcher rd=request.getRequestDispatcher("driverLogin.jsp");
rd.forward(request,response);

}

}

catch(Exception e){e.printStackTrace();}

}

}