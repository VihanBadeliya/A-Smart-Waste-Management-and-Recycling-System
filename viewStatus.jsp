<%@page import="java.sql.*"%>
<%@page import="com1.DBConnection"%>

<html>
<head>
<title>Complaint Status</title>

<style>

body{
    margin:0;
    font-family:Arial, Helvetica, sans-serif;
    background:linear-gradient(to right,#11998e,#38ef7d);
}

.container{
    width:700px;
    margin:auto;
    margin-top:60px;
    background:white;
    padding:30px;
    border-radius:12px;
    box-shadow:0px 8px 20px rgba(0,0,0,0.3);
    text-align:center;
}

h2{
    color:#11998e;
}

input[type=text]{
    padding:10px;
    width:200px;
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
    font-size:14px;
}

input[type=submit]:hover{
    background:#0b6f66;
}

table{
    width:100%;
    margin-top:25px;
    border-collapse:collapse;
}

th{
    background:#11998e;
    color:white;
    padding:10px;
}

td{
    padding:10px;
    border-bottom:1px solid #ddd;
}

tr:hover{
    background:#f2f2f2;
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

<h2>Check Complaint Status</h2>

<form method="post">

Enter Citizen ID :
<input type="text" name="cid" required>

<input type="submit" value="Check Status">

</form>

<table>

<tr>
<th>Status</th>
<th>Driver Name</th>
<th>Driver Contact</th>
<th>Pickup Time</th>
</tr>

<%

String cid=request.getParameter("cid");

if(cid!=null){

Connection con=DBConnection.getConnection();

PreparedStatement ps=con.prepareStatement(
"select * from complaint where citizen_id=?");

ps.setInt(1,Integer.parseInt(cid));

ResultSet rs=ps.executeQuery();

while(rs.next()){
%>

<tr>

<td><%=rs.getString("status")%></td>

<td><%=rs.getString("driver_name")%></td>

<td><%=rs.getString("driver_contact")%></td>

<td><%=rs.getString("pickup_time")%></td>

</tr>

<%
}
}
%>

</table>

<a href="citizenDashboard.jsp" class="back">Back to Dashboard</a>

</div>

</body>
</html>