package com2;

import com1.DBConnection;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;

public class DriverAssignmentServlet extends HttpServlet {

protected void doPost(HttpServletRequest request,HttpServletResponse response)
throws ServletException,IOException {

int cid=Integer.parseInt(request.getParameter("cid"));
String time=request.getParameter("time");

HttpSession session=request.getSession();
Integer driverId=(Integer)session.getAttribute("driverId");

if(driverId==null){
response.sendRedirect("driverLogin.jsp");
return;
}

try{

Connection con=DBConnection.getConnection();

PreparedStatement ps1=con.prepareStatement(
"select * from driver where id=?");

ps1.setInt(1,driverId);

ResultSet rs=ps1.executeQuery();

if(rs.next()){

String name=rs.getString("name");
String contact=rs.getString("contact");

PreparedStatement ps2=con.prepareStatement(

"update complaint set status='Assigned',driver_id=?,driver_name=?,driver_contact=?,pickup_time=? where id=?");

ps2.setInt(1,driverId);
ps2.setString(2,name);
ps2.setString(3,contact);
ps2.setString(4,time);
ps2.setInt(5,cid);

ps2.executeUpdate();

}

response.sendRedirect("driverDashboard.jsp");

}

catch(Exception e){e.printStackTrace();}

}

}