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

		<div class="viewAccount">
			<h2>My Account</h2>
			<div style="display:inline-block;vertical-align:top;">
				<img src="Images\MikeRoss.jpg" alt="MikeRoss" style="width: 100%;"/>
			</div>
			<div style="display:inline-block; padding-left: 150px;" align="right">
				<h3>Mike Ross</h3>
				<p style="opacity: 0.75;">Bio</p>
				<p>Hi I'm Mike I am a vintage and thrift reseller!</p>
			</div>
			<div class="listedItems">
				<h2 align="center" style="opacity: 0.5;">This user has no items listed!</h2>
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