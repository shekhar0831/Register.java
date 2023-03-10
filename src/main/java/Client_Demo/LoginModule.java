package Client_Demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/log")
public class LoginModule extends GenericServlet {

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		String username = req.getParameter("userName");
		String password = req.getParameter("userPassword");
		
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/assignment", "root", "root");
		PreparedStatement ps = con.prepareStatement("select * from register where Username=? and Password=? ");
		
		ps.setString(1, username);
		ps.setString(2, password);
		
		ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				RequestDispatcher rd = req.getRequestDispatcher("Home.jsp");
				rd.forward(req, res);
			}
		
		} catch(Exception e) {
			e.printStackTrace();
		}
	
		res.setContentType("text/html");
		PrintWriter pw = res.getWriter();
		pw.print("Incorrect details: Please enter the details again!!");
		RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
		rd.include(req, res);
	}

}