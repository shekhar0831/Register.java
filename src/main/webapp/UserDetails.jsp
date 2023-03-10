<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
	button a {
	text-decoration: none;
}
button {
	margin: 10px;
	padding: 10px;
}
button:hover {
	background-color: cyan;
}
</style>
<body>
	
	<%
		String idnumber = request.getParameter("idNumber");
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/assignment", "root", "root");
		PreparedStatement ps = con.prepareStatement("select * from register where id =?");
		
		ps.setInt(1, Integer.parseInt(idnumber));
		
		
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			
			out.println("Your id is : "+rs.getInt("ID"));
			out.println("Your Name is : "+rs.getString("Username"));
			out.println("Your Email-Id is : "+rs.getString("Email"));
			out.println("Your Age is : "+rs.getInt("Age"));
			out.println("Your Address is : "+rs.getString("Address"));
			out.println("Your Mobile Number is : "+rs.getInt("Mobilenumber"));
		}
		} catch(Exception e) {
			e.printStackTrace();
		}
	%>
	<br>
	<button><a href="./Home.jsp">Home</a></button>
</body>
</html>