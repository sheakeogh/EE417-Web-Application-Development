import java.io.IOException;
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
@WebServlet("/userContact")
public class userContact extends HttpServlet {	
	private static final long serialVersionUID = 1L;
       
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
		
		// read form fields                
        try {
            String name = request.getParameter("firstname") + "_" + request.getParameter("lastname");
        	File myObj = new File("D:\\College\\4th Year\\Semester 2\\EE417_Web_Application_Development\\Assignment_3\\Assignment_3\\src\\main\\java\\contacts\\" + name + ".txt");
            if (myObj.createNewFile()) {
              FileWriter myWriter = new FileWriter("D:\\College\\4th Year\\Semester 2\\EE417_Web_Application_Development\\Assignment_3\\Assignment_3\\src\\main\\java\\contacts\\" + name + ".txt");
              myWriter.write(request.getParameter("firstname") + "\n");
              myWriter.write(request.getParameter("lastname") + "\n");
              myWriter.write(request.getParameter("email") + "\n");
              myWriter.write(request.getParameter("Location") + "\n");
              myWriter.write(request.getParameter("subjectMatter") + "\n");
              myWriter.write(request.getParameter("contactDescription") + "\n");
              myWriter.close();
            } else {
              System.out.println("File already exists.");
            }
          } catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
          }
        
		response.sendRedirect("home.jsp");        			
	}
}
