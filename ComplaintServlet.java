package com2;

import com1.DBConnection;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;

public class ComplaintServlet extends HttpServlet {

protected void doPost(HttpServletRequest request,HttpServletResponse response)
throws ServletException,IOException {

String name=request.getParameter("name");
String address=request.getParameter("address");
String contact=request.getParameter("contact");
String type=request.getParameter("type");

try{

Connection con=DBConnection.getConnection();

HttpSession session=request.getSession();
int citizenId=(int)session.getAttribute("citizenId");

PreparedStatement ps=con.prepareStatement(
"insert into complaint(citizen_id,citizen_name,address,contact,complaint_type) values(?,?,?,?,?)");

ps.setInt(1,citizenId);
ps.setString(2,name);
ps.setString(3,address);
ps.setString(4,contact);
ps.setString(5,type);

ps.executeUpdate();

response.sendRedirect("citizenDashboard.jsp");
}

catch(Exception e){e.printStackTrace();}

}

}