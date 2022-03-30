import java.io.*;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class userLogin
 */
@WebServlet("/userLogin")
public class userLogin extends HttpServlet {
	public List<List<String>> updateUsers() {
		// Nested list of users and their data
		List<List<String>> list = new ArrayList<List<String>>();
		List<String> tmp = new ArrayList<String>();
		
	    try {
	        // Read from file to create list
	    	File myObj = new File("D:\\College\\4th Year\\Semester 2\\EE417_Web_Application_Development\\Assignment_3\\Assignment_3\\src\\main\\java\\users.txt");
	        Scanner myReader = new Scanner(myObj);
	        while (myReader.hasNextLine()) {
	          String data = myReader.nextLine();
	          tmp = Arrays.asList(data.split("\\s+"));
	          list.add(tmp);
	        }
	        myReader.close();
	      } catch (FileNotFoundException e) {
	        System.out.println("An error occurred.");
	        e.printStackTrace();
	      }
		
	    return list;
	}
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// read form fields
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        // Get list of users and their credentials
        List<List<String>> list = updateUsers();
        
		//Cookie ck = new Cookie("username", username);//creating cookie object
       	//response.addCookie(ck);//adding cookie in the response
        
        // Iterate through list to find the user, if there is a match 
        // check if the password is correct. If the password is correct 
        // bring to the home page else retry
        for(int i = 0; i < list.size(); i++) {
        	List<String> tmp = list.get(i);
        	if(username.equals(tmp.get(0))) {
        		if(password.equals(tmp.get(1))) {
            		Cookie cookie = new Cookie("role", tmp.get(2));
        			response.addCookie(cookie);
        			response.sendRedirect("home.jsp?hello=" + username);
        			//HttpSession session = request.getSession();
        			//session.setAttribute("role", tmp.get(2));
        		}
        		else {
            		response.sendRedirect("welcome.jsp");
        		}
        	}
        }   		
	}

}
