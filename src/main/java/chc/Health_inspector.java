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
 * Servlet implementation class Health_inspector
 */
@WebServlet("/Health_inspector")
public class Health_inspector extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Health_inspector() {
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
		String inspector=request.getParameter("inspector_id");		
		String name=request.getParameter("name");		
		String address=request.getParameter("off_address");		
		String phone=request.getParameter("off_phone");		
		String pin=request.getParameter("pincode");		
		

		int inspector_id=Integer.parseInt(inspector);		
				
		int pincode=Integer.parseInt(pin);
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/chc","root","root123");
			
			String qry="insert into health_inspector(inspector_id,name,off_address,off_phone,pincode)values(?,?,?,?,?)";
			
			PreparedStatement ps=con.prepareStatement(qry);
			
			ps.setInt(1,inspector_id);ps.setString(2,name);ps.setString(3,address);ps.setString(4,phone);
			ps.setInt(5, pincode);
			
			int res=ps.executeUpdate();
			
			RequestDispatcher dispatch1=request.getRequestDispatcher("admin_home.jsp");
			
			
			if(res!=0) {
				System.out.println("value updated");
				request.setAttribute("mess3", "Inspector "+name+"'s details has been successfully inserted into database.");
				
			}else {
				System.out.println("not logged in");
				request.setAttribute("mess3", "Inspector "+name+"'s details is not inserted into database." );
				
			}
			dispatch1.forward(request,response);
		  }catch(ClassNotFoundException e1){
				e1.printStackTrace();
			}catch(SQLException e1) {
				e1.printStackTrace();
			}
	}

}
