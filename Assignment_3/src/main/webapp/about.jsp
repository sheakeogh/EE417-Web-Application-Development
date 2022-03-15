<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>THRFTR</title>
		<link rel="stylesheet" href="style.css">
	</head>
	
	<body>
		<div class="navbar">
			<a href="home.jsp"><b style="font-size: 16px;">T H R F T R</b></a>
		  	<div id="nav-items">
    			<a href="home.jsp">Home</a>
                <a href="forSale.jsp">Sale Items</a>
                <div class="dropdown">
                    <button class="dropbtn">My Account<i class="fa fa-caret-down"></i></button>
                    <div class="dropdown-content">
                        <a href="sell.jsp">Sell Items</a>
                        <a href="viewAccount.jsp">View My Account</a>
                    </div>
                </div> 
                <a href="about.jsp">About</a>
	            <% String userRole = (String)request.getSession().getAttribute("role"); %>
	            <%if(userRole.equals("guest")){%>
	            	<a href="contact.jsp">Contact</a>
	            <%} %>
	            <%if(userRole.equals("admin")){%>
	                <a href="storageInfo.jsp">Stored Data</a>
	            <%} %>
            </div>
			<div class="icon-menu" onclick="myMenu(this)">
				<div class="bar1"></div>
				<div class="bar2"></div>
				<div class="bar3"></div>
			</div>
			<div class="icon-cart">
				<a href="cartPage.jsp">
					<div class="cart-line-1" style="background-color: white"></div>
					<div class="cart-line-2" style="background-color: white"></div>
					<div class="cart-line-3" style="background-color: white"></div>
					<div class="cart-wheel" style="background-color: white"></div>
				</a>
			</div>
		</div>

		<div class="header">
			<img src="Images\headerImg.jpg" alt="HeaderImg" style="width:100%">
			<div class="headerText">
				<h1>THRFTR</h1>
			</div>
		</div>

		<div class="aboutText">
			<h2>Our Team</h2>
			<div class="row">
				<div class="column">
					<img src="Images\JohnDoe.jpg" alt="JohnDoe" style="width:100%">
					<h3 align="center">John Doe</h3>
					<h4 align="center" style="opacity:0.75;">CEO</h4>
					<p>Mr. Doe is the CEO of THRFTR. He is the man that originally came up with the idea of this company. He is the driving power behinf the company. He makes all the big decisions for our company and points the company in the right direction.</p>
				</div>
				<div class="column">
					<img src="Images\JaneDoe.jpg" alt="JaneDoe" style="width:100%">
					<h3 align="center">Jane Doe</h3>
					<h4 align="center" style="opacity:0.75;">BDO</h4>
					<p>Ms. Doe is the BDO for THRFTR. She is in charge of all of THRFTR's marketing and branding. It is crucial that THRFTR gets gloabl recognition and Ms. Doe is a key part of this company and she is helping THRFTR grow in the fashion industry.</p>
				</div>
				<div class="column">
					<img src="Images\DanStar.jpg" alt="DanStar" style="width:100%">
					<h3 align="center">Dan Star</h3>
					<h4 align="center" style="opacity:0.75;">CTO</h4>
					<p>Mr. Star is the CTO of THRFTR. He is in charge of all technical operations. He is the tech wizard here at THRFTR. He and his team designed the website and make sure it is always performing as it should. Mr. Star and his team are constantly drafting up new ideas and developing new tools for our site.</p>
				</div>
			</div>
		</div>

		<footer class="footer">
			<p>Thanks for Visiting</p>
			<a href="home.jsp">Home</a>
			<a href="about.jsp">About</a>
			<a href="contact.jsp">Contact</a>
			<a onclick="printDOM()">DOM Tree</a>
			<p>Powered by Shea Keogh</p>
			<p><%= (new java.util.Date()).toLocaleString()%></p>
		  </footer>
  
		  <div class="domTree">
			  <ul id="tree"></ul>
		  </div>
	</body>
    <script src="script.js"></script>
</html>