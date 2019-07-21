<%@page import="java.io.FileNotFoundException"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.sql.DriverManager"%>
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
                String url="C:\\Users\\mhmh2\\Desktop\\"+request.getParameter("file");
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/progetquizz","root","");
		BufferedReader flot=null;
		String str,question,ch1,ch2,ch3,rep;
                int pipe1,pipe2,vir1,vir2;
                
		try {
			flot=new BufferedReader(new FileReader(url));
			while((str=flot.readLine())!=null)
                        {
                         pipe1 = str.indexOf('|');
                         pipe2 =str.lastIndexOf('|');
                         vir1 =str.indexOf(',');
                         vir2 =str.lastIndexOf(',');
                         question = str.substring(0, pipe1);
                         ch1=str.substring(pipe1+1,vir1);
                         ch2=str.substring(vir1+1,vir2);
                         ch3=str.substring(vir2+1,pipe2);
                         rep=str.substring(pipe2+1);
                         PreparedStatement ps = (PreparedStatement)con.prepareStatement("insert into question (question,c1,c2,c3,reponse) values( ? , ?, ?, ?, ?) ");
                                ps.setString(1, question);
                                ps.setString(2, ch1);
                                ps.setString(3, ch2);
                                ps.setString(4, ch3);
                                ps.setString(5, rep);
                                ps.execute();
                        }
                        
		} catch (FileNotFoundException exc) {
			// TODO: handle exception
			out.println("Erreur D'ouverture du fichier");
		}
		finally {
                        out.println("succes");
                         response.setHeader("refresh","1;URL=admin.jsp" );
			flot.close();
		}
	
                %>
    </body>
</html>
