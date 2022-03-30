import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.io.*;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class userLogin
 */
@WebServlet("/userUpload")
public class userUpload extends HttpServlet {	
	private static final long serialVersionUID = 1L;
	
	public static void toSQL(HttpServletRequest request) throws ClassNotFoundException {
        String filename = request.getParameter("filename");
        String description = request.getParameter("description");
        String title = request.getParameter("Title");
        String brand = request.getParameter("Brand");
        String color = request.getParameter("Color");
        String style = request.getParameter("Style");
        String condition = request.getParameter("Condition");
        String location = request.getParameter("Location");
        //int price = Integer.valueOf(request.getParameter("Price"));
        String price = (request.getParameter("Price"));
        try {
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", "root", "");
        	Statement st=conn.createStatement();
        	int i=st.executeUpdate("insert into listings(ADDRESS,BRAND,COLOR,CONDTION,DECRIPTION,IMAGEFILE,PRICE,STYLE,TITLE)values('"+location+"','"+brand+"','"+color+"','"+condition+"','"+description+"','"+filename+"','"+price+"','"+style+"','"+title+"')");
        } catch(SQLException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();        	
        }
	}
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userUpload() {
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
		} catch (ClassNotFoundException e) {
			System.out.println("An Error Occurred"); 
			e.printStackTrace();
		}
		response.sendRedirect("viewAccount.jsp");        			
	}
}
