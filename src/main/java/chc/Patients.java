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
 * Servlet implementation class Patients
 */
@WebServlet("/Patients")
public class Patients extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Patients() {
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
		String patient=request.getParameter("patient_id");
	
		String name=request.getParameter("name");
		
		String a=request.getParameter("age");
		
		String condition=request.getParameter("condition");
		
		String address=request.getParameter("address");
		
		String phone=request.getParameter("phone");
		
		String pin=request.getParameter("pincode");
		
		int patient_id=Integer.parseInt(patient);
		
		int age=Integer.parseInt(a);
		
		int pincode=Integer.parseInt(pin);
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/chc","root","root123");
			
			String qry="insert into patients(patient_id,name,age,con,address,phone,pincode)values(?,?,?,?,?,?,?)";
			
			PreparedStatement ps=con.prepareStatement(qry);
			
			ps.setInt(1,patient_id);ps.setString(2,name);ps.setInt(3,age);ps.setString(4,condition);
			ps.setString(5,address);ps.setString(6,phone);ps.setInt(7,pincode );
			
			int res=ps.executeUpdate();
			
			RequestDispatcher dispatch1=request.getRequestDispatcher("admin_home.jsp");
			
			
			if(res!=0) {
				System.out.println("value updated");
				request.setAttribute("mess1", name+"'s details has been successfully inserted into database.");
				
			}else {
				System.out.println("not logged in");
				request.setAttribute("mess1", name+"'s details is not inserted into database." );
				
			}
			dispatch1.forward(request,response);
		  }catch(ClassNotFoundException e1){
				e1.printStackTrace();
			}catch(SQLException e1) {
				e1.printStackTrace();
			}
		
	}

}
