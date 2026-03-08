<%@page import="java.sql.*"%>
<%@page import="com1.DBConnection"%>

<html>
<head>
<title>Driver Dashboard</title>

<style>

body{
    margin:0;
    font-family:Arial, Helvetica, sans-serif;
    background:linear-gradient(to right,#11998e,#38ef7d);
}

.container{
    width:500px;
    margin:auto;
    margin-top:80px;
    background:white;
    padding:35px;
    border-radius:12px;
    box-shadow:0px 8px 20px rgba(0,0,0,0.3);
    text-align:center;
}

h2{
    color:#11998e;
}

.info{
    background:#f4f4f4;
    padding:15px;
    border-radius:8px;
    margin-bottom:20px;
    text-align:left;
}

.info p{
    margin:8px 0;
    font-size:16px;
}

input[type=text]{
    padding:10px;
    width:70%;
    border-radius:6px;
    border:1px solid #ccc;
}

input[type=submit]{
    padding:10px 20px;
    border:none;
    background:#11998e;
    color:white;
    border-radius:6px;
    cursor:pointer;
    font-size:15px;
}

input[type=submit]:hover{
    background:#0b6f66;
}

.message{
    font-size:18px;
    color:green;
    margin-top:20px;
}

.back{
    display:inline-block;
    margin-top:20px;
    text-decoration:none;
    color:#11998e;
}

.back:hover{
    text-decoration:underline;
}

</style>

</head>

<body>

<div class="container">

<h2>Driver Dashboard</h2>

<%

Connection con=DBConnection.getConnection();

Statement st=con.createStatement();

ResultSet rs=st.executeQuery(
"select * from complaint where status='Pending' order by id limit 1");

if(rs.next()){

%>

<div class="info">

<p><b>Citizen Name:</b> <%=rs.getString("citizen_name")%></p>
<p><b>Contact:</b> <%=rs.getString("contact")%></p>
<p><b>Complaint:</b> <%=rs.getString("complaint_type")%></p>

</div>

<form action="DriverAssignmentServlet" method="post">

<p><b>Pickup Time</b></p>

<input type="text" name="time" placeholder="Enter Pickup Time" required>

<input type="hidden" name="cid" value="<%=rs.getInt("id")%>">

<br><br>

<input type="submit" value="Assign Pickup">

</form>

<%
}
else{
response.sendRedirect("driverLogin.jsp");
%>
    
<%
}
%>

</div>

</body>
</html>