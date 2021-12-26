package chc;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.io.IOException;



import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




public class PatientDao {

	public HttpServletResponse validate(int pincode,HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, ServletException, IOException{
		boolean status = false;

		

		List<patient_modal> store=new ArrayList<patient_modal>();// dynamic storage to keep objects
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/chc","root","root123");
			
			String qry="select * from patients where pincode="+pincode+"";
			PreparedStatement ps=con.prepareStatement(qry);
			ResultSet rs = ps.executeQuery();
			patient_modal tmp=null;// initalize
			while(rs.next())
			{
				// convert row into object
				tmp=new patient_modal();
				//tmp=new Student(rs.getString("name"), rs.getString("dept"), qry, qry, qry, qry, qry, qry, qry, serialVersionUID, serialVersionUID, null, null);
				// rs.getType("columnname")
				tmp.setPatient_id(rs.getInt("patient_id"));tmp.setName(rs.getString("name"));tmp.setAge(rs.getInt("age"));
				tmp.setCon(rs.getString("con"));tmp.setAddress(rs.getString("address"));
				tmp.setPhone(rs.getString("phone"));tmp.setPincode(rs.getInt("pincode"));
				
			}
			
			
			RequestDispatcher dis=request.getRequestDispatcher("patient_details.jsp");
			request.setAttribute("data", store);
			
		
			dis.forward(request, response);
			status = rs.next();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return response;
	}

	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}
}