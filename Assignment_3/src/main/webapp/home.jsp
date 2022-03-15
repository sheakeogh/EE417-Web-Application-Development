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

		<div class="homeText">
			<% Cookie ck[]=request.getCookies(); %>
			<h2>Welcome <% out.println(ck[0].getValue()); %>!</h2>
			<p>THRFTR is an online resource which allows people to buy and resell clothes. If you wish to view the items for sale just visit go to the Sale Items tab or click <a href="forSale.jsp">here</a></p>
			<p>If you wish to learn some more about our company and our story please visit our <a href="about.jsp">about</a>
			section</p>
			<p>We recently sponsored an event, Fly Open Air. This was a great event and we gave away some free bits to the crowd. It gave us some brilliant recognition. Below you can see the brilliant Folamour, who was styled by us, at the event!</p>
			<video class="video" width="360" height="200" controls>
			  <source src="Images\video.mp4" type="video/mp4">
			  Your browser does not support the video tag.
			</video>
			<p>We hope you enjoy your time on THRFTR and feel free to reach out to us anytime <a href="contact.jsp">here</a></p>
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