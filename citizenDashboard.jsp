<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>Citizen Dashboard</title>

<style>

body{
    margin:0;
    font-family:Arial, Helvetica, sans-serif;
    background:linear-gradient(to right,#56ab2f,#a8e063);
}

/* Navigation Bar */

.navbar{
    background:#1e5714;
    padding:12px;
    text-align:center;
}

.navbar a{
    text-decoration:none;
}

.navbar button{
    padding:10px 18px;
    margin:5px;
    border:none;
    border-radius:6px;
    background:white;
    color:#1e5714;
    font-weight:bold;
    cursor:pointer;
    transition:0.3s;
}

.navbar button:hover{
    background:#145a32;
    color:white;
}

/* Header */

.header{
    background:#2c7a1f;
    color:white;
    padding:20px;
    text-align:center;
    font-size:28px;
    font-weight:bold;
}

/* Dashboard Cards */

.container{
    display:flex;
    justify-content:center;
    align-items:center;
    height:70vh;
    gap:40px;
}

.card{
    background:white;
    width:250px;
    padding:30px;
    border-radius:12px;
    text-align:center;
    box-shadow:0px 6px 15px rgba(0,0,0,0.3);
    transition:0.3s;
}

.card:hover{
    transform:scale(1.05);
}

.card h3{
    color:#2c7a1f;
}

button{
    margin-top:20px;
    padding:12px 20px;
    border:none;
    border-radius:6px;
    background:#2c7a1f;
    color:white;
    font-size:16px;
    cursor:pointer;
}

button:hover{
    background:#1e5714;
}

/* Footer */

.footer{
    position:fixed;
    bottom:0;
    width:100%;
    text-align:center;
    padding:10px;
    background:#2c7a1f;
    color:white;
}

</style>

</head>

<body>

<!-- Navigation Bar -->

<div class="navbar">

    <a href="index.html">
        <button>Home</button>
    </a>

    <a href="citizenLogin.jsp">
        <button>Citizen Login</button>
    </a>

    <a href="driverLogin.jsp">
        <button>Driver Login</button>
    </a>

</div>


<div class="header">
Citizen Dashboard
</div>

<div class="container">

<div class="card">

<h3>Register Complaint</h3>

<p>Report waste issues like overflowing bins, garbage piles, or missed pickups.</p>

<a href="complaintForm.jsp">
<button>Register</button>
</a>

</div>


<div class="card">

<h3>View Complaint Status</h3>

<p>Track the status of your submitted complaint and see assigned drivers.</p>

<a href="viewStatus.jsp">
<button>View Status</button>
</a>

</div>

</div>

<div class="footer">
Smart Waste Management System
</div>

</body>
</html>