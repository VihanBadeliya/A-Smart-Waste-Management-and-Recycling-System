<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>Citizen Login</title>

<style>

body{
    margin:0;
    font-family:Arial, Helvetica, sans-serif;
    background:linear-gradient(to right,#43cea2,#185a9d);
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.login-box{
    background:white;
    padding:40px;
    width:350px;
    border-radius:12px;
    box-shadow:0px 8px 20px rgba(0,0,0,0.3);
    text-align:center;
}

h2{
    color:#185a9d;
    margin-bottom:30px;
}

input[type=text],input[type=password]{
    width:90%;
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
    background:#185a9d;
    border:none;
    color:white;
    font-size:16px;
    border-radius:6px;
    cursor:pointer;
    transition:0.3s;
}

input[type=submit]:hover{
    background:#0f3c6e;
}

.error{
    color:red;
    margin-top:15px;
}

.back{
    margin-top:15px;
    display:block;
    color:#185a9d;
    text-decoration:none;
}

.back:hover{
    text-decoration:underline;
}

</style>

</head>

<body>

<div class="login-box">

<h2>Citizen Login</h2>

<form action="CitizenLoginServlet" method="post">

<input type="text" name="username" placeholder="Enter Username" required>

<input type="password" name="password" placeholder="Enter Password" required>

<input type="submit" value="Login">

</form>

    <%
    String error=(String)request.getAttribute("error");

    if(error!=null){
    %>

    <p class="error"><%=error%></p>

    <%
        }
    %>

    <a href="index.html" class="back">← Back to Home</a>

</div>

</body>
</html>