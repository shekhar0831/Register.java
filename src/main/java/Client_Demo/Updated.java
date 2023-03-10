package Client_Demo;

import java.awt.Window;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/updated")
public class Updated extends GenericServlet {

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		String userId = req.getParameter("userId");
		String userName = req.getParameter("userName");
		String userEmail = req.getParameter("userEmail");
		String userAge = req.getParameter("userAge");
		String userAddress = req.getParameter("userAddress");
		String userNumber = req.getParameter("userNumber");
		
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/assignment", "root", "root");
		PreparedStatement ps = con.prepareStatement("update register set Username=?, Email=?, Age=?, Address=?, MobileNumber=? where ID=? ");
		
		System.out.println("Your id is: "+userId);
		ps.setString(1, userName);
		ps.setString(2, userEmail);
		ps.setInt(3, Integer.parseInt(userAge));
		ps.setString(4, userAddress);
		ps.setInt(5, Integer.parseInt(userNumber));
		ps.setInt(6, Integer.parseInt(userId));
		
		ps.executeUpdate();
		RequestDispatcher rd = req.getRequestDispatcher("Home.jsp");
		PrintWriter pw = res.getWriter();
		pw.print("Updated successfully!!");
		rd.forward(req, res);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		res.setContentType("text/html");
		PrintWriter pw = res.getWriter();
		pw.print("Incorrect details: Details not matching, Please enter the details again!!");
		RequestDispatcher rd = req.getRequestDispatcher("UpdateUser.jsp");
		rd.include(req, res);
	}
	
}