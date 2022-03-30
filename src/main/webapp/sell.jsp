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

		<div class="sellText">
			<h2>Sell an Item!</h2>
			<p>Selling an item is easy! All you have to do is upload a high quality photo of the product you wish to sell. Once you have uploaded this photo, you can choose a price to list it at. Make sure it is a reasonable price, something you would pay for! Otherwise you will never make a sale! You can give a brief description of the product, size guide, condition, etc, etc. Use the link below to upload something to sell!</p>
			<a href="upload.jsp">
		  	<button type="button" class="smallBlock" align="center">List a Product</button>
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