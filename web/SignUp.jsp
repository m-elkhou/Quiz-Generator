<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html   Formulaire d'inscription   >
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class='box'>
  <div class='box-form'>
    <div class='box-login-tab'></div>
    <div class='box-login-title'>
      <div class='i i-login'></div><h2>Inscription</h2>
    </div>
    <div class='box-login'>
      <div class='fieldset-body' id='login_form'>
       
          <form method="POST" action= "SignUpManager.jsp">
         <p class='field'>
          <label for='user'>Login</label>
          <input type='text' id='user' name="login" title='Username' />
          
        
      	  
          <label for='pass'>Password</label>
          <input type='password' id='pass' name="mdp" title='Password' />
          
          <label for='user'>E-mail</label>
          <input type='email' id='mail' name="email" title='mail' />
          
          <input type="submit" value="Register" >
        </p>
          </form>
    </body>
</html>
