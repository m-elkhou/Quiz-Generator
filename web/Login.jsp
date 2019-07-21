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
          Class.forName("com.mysql.jdbc.Driver");
          Connection con;
		Statement stmt;
		ResultSet res;
		con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost/progetquizz","root","");
		stmt=(Statement) con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
                   String login= request.getParameter("login");
                   String pswd= request.getParameter("password");
                         PreparedStatement ps = con.prepareStatement("select * from users where username= ? and password= ?  ");
                         ps.setString(1,login);
                         ps.setString(2,pswd);
                         
                         res = ps.executeQuery();
                    if(res.next()){
                        if(res.getInt("status")==1){
                            response.sendRedirect("admin.jsp");
                        }
                        else{
                         response.sendRedirect("Question.jsp?id=1");
                         
                       }}
                        else
                         response.sendRedirect("index.jsp");

         
         %>
        
    </body>
</html>
