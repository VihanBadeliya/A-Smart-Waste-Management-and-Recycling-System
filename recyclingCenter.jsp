<html>
<head>
<title>Recycling Centers</title>

<style>

body{
    margin:0;
    font-family:Arial, Helvetica, sans-serif;
    background:linear-gradient(to right,#00b09b,#96c93d);
}

/* Navigation Bar */

.navbar{
    background:#145a32;
    padding:15px;
    text-align:center;
}

.navbar a{
    text-decoration:none;
}

.navbar button{
    padding:10px 20px;
    margin:5px;
    border:none;
    border-radius:6px;
    background:white;
    color:#145a32;
    font-weight:bold;
    cursor:pointer;
    transition:0.3s;
}

.navbar button:hover{
    background:#1b5e20;
    color:white;
}

/* Header */

.header{
    background:#1b5e20;
    color:white;
    padding:20px;
    text-align:center;
    font-size:30px;
    font-weight:bold;
}

/* Cards */

.container{
    display:flex;
    flex-wrap:wrap;
    justify-content:center;
    gap:25px;
    padding:40px;
}

.card{
    background:white;
    width:260px;
    padding:20px;
    border-radius:12px;
    text-align:center;
    box-shadow:0px 6px 15px rgba(0,0,0,0.3);
    transition:0.3s;
}

.card:hover{
    transform:scale(1.05);
}

.card h3{
    color:#2e7d32;
}

.card p{
    font-size:14px;
}

/* Footer */

.footer{
    background:#1b5e20;
    color:white;
    text-align:center;
    padding:15px;
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
Recycling Centers
</div>

<div class="container">

<div class="card">
<h3>Plastic Recycling Center</h3>
<p>Processes plastic bottles, containers, and packaging waste.</p>
<p>Location: Alkapuri, Vadodara</p>
<p>Contact: +91 9876543211</p>
</div>

<div class="card">
<h3>Metal Recycling Center</h3>
<p>Handles scrap metal, aluminum cans, and steel waste.</p>
<p>Location: Makarpura Industrial Area</p>
<p>Contact: +91 9876543212</p>
</div>

<div class="card">
<h3>Organic Waste Compost Plant</h3>
<p>Converts organic waste into compost for agriculture.</p>
<p>Location: Gotri</p>
<p>Contact: +91 9876543213</p>
</div>

<div class="card">
<h3>E-Waste Recycling Unit</h3>
<p>Recycles electronic items like computers, mobiles, and batteries.</p>
<p>Location: Waghodia Road</p>
<p>Contact: +91 9876543214</p>
</div>

<div class="card">
<h3>Glass Recycling Center</h3>
<p>Recycles glass bottles and containers into reusable materials.</p>
<p>Location: Karelibaug</p>
<p>Contact: +91 9876543215</p>
</div>

<div class="card">
<h3>Paper Recycling Unit</h3>
<p>Processes paper waste into recycled paper products.</p>
<p>Location: Akota</p>
<p>Contact: +91 9876543216</p>
</div>

</div>

<div class="footer">

<p><b>Working Hours:</b> 9:00 AM - 6:00 PM</p>
<p>Smart Waste Management & Recycling System</p>

</div>

</body>
</html>