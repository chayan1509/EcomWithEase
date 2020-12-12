
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">

    </head>
    <body>
        <form action="logincheck.jsp" method="post">
        <h1>Login</h1>

        <div class="txtb">
          <input name="userEmail" type="text" placeholder="Email">
        </div>
        <div class="txtb">
          <input name="userPassword" type="password" placeholder="Password" id="myInput">
          
          
        </div>
        <button type="submit" class="btn btn-primary btn-block">Create Account</button>
        <div class="bottom-text">
           <a href="#">Forgot Password ?</a>
        </div>
        <div class="bottom-text">
          Don't have account? <a href="register.html">Sign up</a>
        </div>
      </form>
    </body>
</html>
