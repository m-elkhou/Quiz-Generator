<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    <body>
                 
<div class="form-style-5">
<form  method="POST" action="Login.jsp">
    <fieldset>
    <legend><span class="number"></span> </legend>
    <input type="text" name="login" placeholder="Your Name ">
    
    <input type="password" name="password" placeholder="password "> 
    </fieldset>
    <input type="submit" value=" Connecter " />
</form>
<form action="SignUp.jsp">
        <input type="submit" value="inscription">
</form>
</div>
    </body>
</html>