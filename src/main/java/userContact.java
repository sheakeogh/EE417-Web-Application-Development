import java.io.IOException;
import java.io.*;
import java.util.*;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class userLogin
 */
@WebServlet("/userContact")
public class userContact extends HttpServlet {	
	private static final long serialVersionUID = 1L;
       
	public static void  toSQL(HttpServletRequest request) throws ClassNotFoundException {
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String location = request.getParameter("Location");
        String subjectMatter = request.getParameter("subjectMatter");
        String contactDescription = request.getParameter("contactDescription");
        try {
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", "root", "");
        	Statement st=conn.createStatement();
        	int i=st.executeUpdate("insert into contact(CONTACTADDRESS,CONTACTDESCRIPTION,EMAIL,FNAME,LNAME,SUBJECTMATTER)values('"+location+"','"+contactDescription+"','"+email+"','"+firstname+"','"+lastname+"','"+subjectMatter+"')");
        } catch(SQLException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();        	
        }
	}

	/**
     * @see HttpServlet#HttpServlet()
     */
    public userContact() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
    		toSQL(request);
		} catch(ClassNotFoundException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
		}        
		response.sendRedirect("home.jsp");        			
	}
}
