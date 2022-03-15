import java.io.*;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class userLogin
 */
@WebServlet("/userRegister")
public class userRegister extends HttpServlet {
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

	public void updateText(List<List<String>> list) {
		try {
            FileWriter myWriter = new FileWriter("D:\\College\\4th Year\\Semester 2\\EE417_Web_Application_Development\\Assignment_3\\Assignment_3\\src\\main\\java\\users.txt");
	    	for(int i = 0; i < list.size(); i++) {
	    		List<String> tmp = list.get(i);
	    		String str = tmp.get(0) + " " + tmp.get(1) + " " + tmp.get(2) + "\n";
	    		myWriter.write(str);
	    	}
	    	myWriter.close();
	    	System.out.println("Successfully wrote to file");
	    }
	    catch(IOException e) {
	    	System.out.println("An error occured");
            e.printStackTrace();
	    }
	}
	
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userRegister() {
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
        String role;
        // Get list of users and their credentials
        List<List<String>> list = updateUsers();
        for(int i = 0; i < list.size(); i++) {
        	String tmpName = list.get(i).get(0);
        	System.out.println(tmpName);
        	if(username.equals(tmpName)) {
        		PrintWriter out = response.getWriter();  
        		response.setContentType("text/html");  
        		out.println("<script type=\"text/javascript\">");  
        		out.println("alert('Username Exists');");  
        		out.println("</script>");
                response.sendRedirect("register.jsp");
        	}
        }
        
        if(list.size() % 2 == 0) {
        	role = "admin";
        }
        else {
        	role = "guest";
        }
        
        List<String> tmp = new ArrayList<String>();
        tmp.add(username);
        tmp.add(password);
        tmp.add(role);
        list.add(tmp);
        updateText(list);
        response.sendRedirect("welcome.jsp");
	}

}
