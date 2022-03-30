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
	            <%Cookie[] cookies = request.getCookies();%>
	            <%String userRole = ""; %> 
	            <%for(int i = 0; i < cookies.length; i++) {%>
               	<% 	Cookie cookie = cookies[i];%>
               	<%	if(("role").equals(cookie.getName( ))) {%>
		        <%  	userRole = cookie.getValue( );%>
		        <%	} %>
        	    <%}%>
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

		<div class="contactText">
			<h2>Reach Out</h2>
			<div class="contactForm">
				<form onsubmit="return validateContactForm()" name="contactForm" action="userContact" method="post">
					<label for="fname">First Name</label>
					<input type="text" id="contact_fname" name="firstname" placeholder="Your name..">
					<label for="lname">Last Name</label>
					<input type="text" id="contact_lname" name="lastname" placeholder="Your last name..">
					<label for="email">Email Address</label>
					<input type="text" id="contact_email" name="email" placeholder="someone@mail.com">
					<h3>Location</h3>
					<div class= "searchBox" id= "searchBox">
						<div class = "searchBar">
						  <input type = "text" id = "input" name = "Location" placeholder = "Enter a location">
						</div>
					</div>
					<div id = "map"></div>
					<div id = "infowindow-content">
						<span id = "place-name" class = "mapTitle"></span><br />
						<span id = "place-address"></span>
					</div>
					<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkByaTcHCjYpF-JPFYdEQx76qdYXMdFc8&callback=initMap&libraries=places&v=weekly" async></script>				  
					<label for="subjectMatter">Subject Matter</label>
					<input type="text" id="contact_subjectMatter" name="subjectMatter" placeholder="Brief Description..">
					<label for="contactDescription">Description</label>
					<textarea id="contact_contactDescription" name="contactDescription" placeholder="Write something.." style="height:200px"></textarea>
					<input type="submit" value="Submit" onclick="storeDataContact()">
				</form>
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