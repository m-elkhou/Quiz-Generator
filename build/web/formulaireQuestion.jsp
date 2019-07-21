<%@page import="javafx.scene.control.Alert"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<link rel="stylesheet" href="style/css1.css" type="text/css">

    
        <%
         String id = request.getParameter("id");
             Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/progetquizz","root","");
              PreparedStatement pss = conn.prepareStatement("select * from question where id = ? ");
            pss.setString(1, id);
            ResultSet res = pss.executeQuery();
             
              if(res.next()){
                  String ques = res.getString("question");
                  String c1 = res.getString("c1");
                  String c2 = res.getString("c2");
                  String c3 = res.getString("c3");
                  String reponse = res.getString("reponse");
                  %>
                  <% int ids = Integer.parseInt(id)+1; %>
                 
                  <div >
                  <form method="POST" action="Question.jsp?id=<%=ids%>">
                      
                      <fieldset>
                          <legend> question <span class="number"></span></legend>
<p><% out.print(ques);    %></p>     
<input type="radio" name="c" value="c1"> <% out.print(c1);   %>
<input type="radio" name="c" value="c2"> <% out.print(c2);   %>
<input type="radio" name="c" value="c3"> <% out.print(c3);   %> 

</fieldset>
                        <input type="submit" name="valider" value="Répondre"  >
                 </form>
                    </div>
                        <%
                            }
                         else
                            response.sendRedirect("fin.jsp");
                        %>
                        <%
if(request.getParameter("valider")!=null){
    String choix = request.getParameter("c");
     int id1 = Integer.parseInt(id)-1; 
     PreparedStatement pss2 = conn.prepareStatement("select * from question where id = ?");
            pss2.setInt(1, id1);
            ResultSet res2 = pss2.executeQuery();
            if(res2.next()){
          
            String reponse = res2.getString("reponse");
            
            if(res2.getString(choix).equals(reponse)){
                
               out.print("Votre réponse du Question précédente est correcte");
                }
            else{
                
               out.print("Votre réponse du Question précédente est incorrecte");
            }
            }
            
            
            
                   
                    
               
            
            
            
    
    
}
        
        
%>
    
