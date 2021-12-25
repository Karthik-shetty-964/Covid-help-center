package chc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UsersSignUp
 */
@WebServlet("/UsersSignUp")
public class UsersSignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsersSignUp() {
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
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String conpass=request.getParameter("conpass");
		
		if(pass.equals(conpass)) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/chc","root","root123");
				
				String qry="insert into users(username,email,password)values(?,?,?)";
				
				PreparedStatement ps=con.prepareStatement(qry);
				
				ps.setString(1,username);ps.setString(2, email);ps.setString(3, pass);
				
				int res=ps.executeUpdate();
				
				RequestDispatcher dispatch1=request.getRequestDispatcher("home.jsp");
				RequestDispatcher dispatch2=request.getRequestDispatcher("index.jsp");
				
				if(res!=0) {
					System.out.println("logged in");
					request.setAttribute("mess1", username+" has sucessfully created the account.");
					dispatch1.forward(request,response);
				}else {
					System.out.println("not logged in");
					request.setAttribute("mess1", "Something went wrong while creating account for"+username );
					dispatch2.forward(request,response);
				}
				
			  }catch(ClassNotFoundException e1){
					e1.printStackTrace();
				}catch(SQLException e1) {
					e1.printStackTrace();
				}
			
		}else {
			RequestDispatcher dispatch=request.getRequestDispatcher("index.jsp");
			request.setAttribute("mess1","Password mismatch");
			dispatch.forward(request,response);
		}
	}

}
