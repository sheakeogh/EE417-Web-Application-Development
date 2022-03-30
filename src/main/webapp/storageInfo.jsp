<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import = "java.sql.*"%>

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

		<div class="storageInfoText">
			<h2>Contact Info</h2>
            <table id="contactTable">
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Subject Matter</th>
                    <th>Description</th>
                </tr>
				<%try{
			        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase?useSSL=false", "root", "");
					Statement statement=connection.createStatement();
					String sql ="select * from contact";
					ResultSet resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>
					<tr>
					<td><%=resultSet.getString("FNAME") %></td>
					<td><%=resultSet.getString("LNAME") %></td>
					<td><%=resultSet.getString("EMAIL") %></td>
					<td><%=resultSet.getString("CONTACTADDRESS") %></td>
					<td><%=resultSet.getString("SUBJECTMATTER") %></td>
					<td><%=resultSet.getString("CONTACTDESCRIPTION") %></td>	
				</tr>
					<%}
						connection.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
					%>			
            </table>            
            <h2>Listings Info</h2>
            <div id="ListingsTable"></div>
            <table id="itemTable">
                <tr>
                    <th>Image File</th>
                    <th>Description</th>
                    <th>Title</th>
                    <th>Brand</th>
                    <th>Color</th>
                    <th>Style</th>
                    <th>Condition</th>
                    <th>Address</th>
                    <th>Price</th>
                </tr>
				<tr>
				<%try{
			        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase?useSSL=false", "root", "");
					Statement statement=connection.createStatement();
					String sql ="select * from listings";
					ResultSet resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>
					<td><%=resultSet.getString("IMAGEFILE") %></td>	
					<td><%=resultSet.getString("DECRIPTION") %></td>
					<td><%=resultSet.getString("TITLE") %></td>	
					<td><%=resultSet.getString("BRAND") %></td>
					<td><%=resultSet.getString("COLOR") %></td>
					<td><%=resultSet.getString("STYLE") %></td>
					<td><%=resultSet.getString("CONDTION") %></td>
					<td><%=resultSet.getString("ADDRESS") %></td>
					<td><%=resultSet.getString("PRICE") %></td>
				</tr>
					<%}
						connection.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
					%>			
            </table>            

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