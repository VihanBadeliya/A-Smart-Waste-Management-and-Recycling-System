<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>Register Complaint</title>

<style>

body{
    margin:0;
    font-family:Arial, Helvetica, sans-serif;
    background:linear-gradient(to right,#11998e,#38ef7d);
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.form-box{
    background:white;
    padding:35px;
    width:380px;
    border-radius:12px;
    box-shadow:0px 8px 20px rgba(0,0,0,0.3);
    text-align:center;
}

h2{
    color:#11998e;
    margin-bottom:25px;
}

input[type=text], select{
    width:95%;
    padding:12px;
    margin:10px 0;
    border-radius:6px;
    border:1px solid #ccc;
    font-size:15px;
}

input[type=submit]{
    width:100%;
    padding:12px;
    margin-top:15px;
    background:#11998e;
    border:none;
    color:white;
    font-size:16px;
    border-radius:6px;
    cursor:pointer;
    transition:0.3s;
}

input[type=submit]:hover{
    background:#0b6f66;
}

.back{
    display:block;
    margin-top:15px;
    color:#11998e;
    text-decoration:none;
}

.back:hover{
    text-decoration:underline;
}

</style>

</head>

<body>

<div class="form-box">

<h2>Register Complaint</h2>

<form action="ComplaintServlet" method="post">

<input type="text" name="name" placeholder="Enter Your Name" required>

<input type="text" name="address" placeholder="Enter Address" required>

<input type="text" name="contact" placeholder="Enter Contact Number" required>

<select name="type" required>

<option value="">Select Complaint Type</option>
<option>Dustbin is overflowing</option>
<option>Dustbin is damaged or missing</option>
<option>Wrong waste type placed in bin</option>
<option>Vehicle skipped the area</option>
<option>Waste scattered after collection</option>

</select>

<input type="submit" value="Submit Complaint">

</form>

<a href="citizenDashboard.jsp" class="back">← Back to Dashboard</a>

</div>

</body>
</html>