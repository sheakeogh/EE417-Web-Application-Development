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
@WebServlet("/userUpload")
public class userUpload extends HttpServlet {	
	private static final long serialVersionUID = 1L;
       
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
		
		// read form fields
	    String fileName = request.getParameter("filename");
	    String fileLocation = "D:\\College\\4th Year\\Semester 2\\EE417_Web_Application_Development\\Assignment_3\\Assignment_3\\src\\main\\webapp\\Images\\" + fileName;
                
        try {
            File myObj = new File("D:\\College\\4th Year\\Semester 2\\EE417_Web_Application_Development\\Assignment_3\\Assignment_3\\src\\main\\java\\uploads\\" + fileName + ".txt");
            if (myObj.createNewFile()) {
              FileWriter myWriter = new FileWriter("D:\\College\\4th Year\\Semester 2\\EE417_Web_Application_Development\\Assignment_3\\Assignment_3\\src\\main\\java\\uploads\\" + fileName + ".txt");
              myWriter.write(fileLocation + "\n");
              myWriter.write(request.getParameter("description") + "\n");
              myWriter.write(request.getParameter("Title") + "\n");
              myWriter.write(request.getParameter("Brand") + "\n");
              myWriter.write(request.getParameter("Color") + "\n");
              myWriter.write(request.getParameter("Style") + "\n");
              myWriter.write(request.getParameter("Condition") + "\n");
              myWriter.write(request.getParameter("Location") + "\n");
              myWriter.write(request.getParameter("Price") + "\n");
              myWriter.close();
            } else {
              System.out.println("File already exists.");
            }
          } catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
          }
        
		response.sendRedirect("viewAccount.jsp");        			
	}
}
