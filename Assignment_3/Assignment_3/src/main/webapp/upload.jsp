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
                <a href="contact.jsp">Contact</a>
                <a href="storageInfo.jsp">Stored Data</a>
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

		<div class="uploadText">
			<h2>Upload an Item for Sale!</h2>
			<div id = "uploadForm" class="uploadForm">
				<form onsubmit="return validateUploadForm()" action="viewAccount.jsp">
					<h3>Basic Info</h3>
					<label for="image">Upload an Image</label><br><br>
					<input type="file" id="upload_myFile" name="filename" style="width: 250px;"><br><br>
					<label for="decription">Description</label><br>
					<textarea id="upload_decription" name="decription" placeholder="Write something.." style="height:200px;"></textarea><br>
					<label for="title">Title</label><br>
					<input type="text" id="upload_title" name="Title" placeholder="The Name of the product.."><br>
					<label for="brand">Brand</label><br>
					<input type="text" id="upload_brand" name="Brand" placeholder="The Brand is.."><br>
					<h3>Boost your Listing with more Info</h3>
					<label for="color">Color</label><br>
					<input type="text" id="upload_color" name="Color" placeholder="The Color of the product.."><br>
					<label for="style">Style</label><br>
					<input type="text" id="upload_style" name="Style" placeholder="The Style is.."><br>
					<label for="condition">Condition</label><br>
					<input type="text" id="upload_condition" name="Condition" placeholder="The Condition is.."><br>
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
					<h3>Price</h3>
					<label for="price">Price (in €)</label><br>
					<input type="text" id="upload_price" name="Price" placeholder="€0.00"><br>
					<input  type="submit" value="Submit" onclick = "storeDataUpload()">
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