This is my submission for Assignment 4. In this submission I have included the folder used for the eclipse project and a file containing the SQL Queries.

I initialized the SQL Databse, it has two different tables which are used throughout the site. This was dine by running the sqlQuery.sql script.

The first page of the website is the welcome.jsp page. This is a login page. The user must login with the correct credentials. This is done by using the userLogin.java servlet. If the user wants to register an account they can by clicking the register button. They can set up their account and their details will be added to a text file. They will be redirected to the login page. 

The home page has a brief intro into the idea of the web application. It also has some links for the user to follow easily to navigate around the site. Including the links in the body there is a navbar and a footer which allows the user to navigate the site with ease. If the user is an admin they will not have access to the contact.jsp page on the menu bar however they do have access to the storageInfo.jsp page.

The forSale.jsp site contains all the products which are for sale. For the time being stock images with prices and a button to add to cart.

The sell.jsp page gives the user an insight in how to simply upload there products to sell on the site. This page is acessed by the dropdown menu from the My Account tab on the navbar. On this site there is a button which allows the user to list their product for sale. This brings the user to the upload.jsp page.

The upload.jsp page has an option to upload an image to the site, it has a number of fields to upload the info about the item. When the user wants to list the item they click the button. This then brings them to the viewAccount.jsp page. When the form is submitted each field is checked, if there is a field missing then an alert appears with a prompt. The forms data is stored in the SQL database.

The viewAccount.jsp page displays the users personal account. It has a profile picture, name, bio, and has all the list items. If the user hasn't listed any items for sale, it will display so. 

The about.jsp page displays the details about the people in charge of the company. The three chiefs of the company have their images, title, and a brief description of their role within the company.

The contact.jsp page contains a few text boxes which allow the user to contact the company. They can submit their name, email, location, and information on why they are reaching out. When the form is submitted each field is checked, if there is a field missing then an alert appears with a prompt. The forms data is stored in the SQL database.

The stored data page has two tables listing data from each form. This is done by getting data from the SQL Database and printing in a tabular format.

The header has some animations for a more dynamic menu. The footer also a new link DOM Tree which prints the DOM Tree below the footer when clicked.

There is the use of cookies on the home page. This page dispalys the username in a greeting. 

