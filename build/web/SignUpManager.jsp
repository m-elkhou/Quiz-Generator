<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   
        <%
            String login = request.getParameter("login");
            String mdp = request.getParameter("mdp");
            String email = request.getParameter("email");
           
             try {
                Class.forName("com.mysql.jdbc.Driver");
		Connection cc =(Connection) DriverManager.getConnection("jdbc:mysql://localhost/progetquizz","root","");
	        PreparedStatement ps=(PreparedStatement) cc.prepareStatement("insert into users (username,email,password,status)  values (?,?,?,?)");
			ps.setString(1, login);
		        ps.setString(2, email);
                        ps.setString(3, mdp);
                        ps.setInt(4, 0);
					
		        ps.execute();
	       response.sendRedirect("index.jsp");
	} catch (Exception e) {
            // TODO: handle exception
            System.err.println("non");
	}
           
             %>
    
    </body>
</html>
