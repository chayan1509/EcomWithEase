<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="errorPage.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Register Yourself</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
        <link rel="stylesheet" href="css/syle.css">

    </head>

    <body style="background-image: url(images/cool-background.png); background-repeat: no-repeat; background-size: cover;">
        <div class="navbar-light" style="background-color: #fff0d8;">
            <%@include file="header.jsp"%>
        </div>
        <div class="container-fluid pt-3 pb-3"> 
            <div class="row d-flex justify-content-left">   
                <div class="col-4"> 
                    <div class="card">

                        <div class="card bg-light">
                            <article class="card-body mx-auto" style="max-width: 400px;">
                                <h4 class="card-title mt-3 text-center">Create Account</h4>
                                <p class="text-center">Get started with your free account</p>
                                <p>
                                    <a href="" class="btn btn-block btn-google"> <i class="fab fa-google"></i> Login via Google</a>
                                    <a href="" class="btn btn-block btn-facebook"> <i class="fab fa-facebook"></i> Login via facebook</a>
                                </p>
                                <p class="divider-text">
                                    <span class="bg-light">OR</span>
                                </p>
                                <form action="registration.jsp" method="post">
                                    <div class="form-group input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                                        </div>
                                        <input name="userName" class="form-control" placeholder="Full name" type="text">
                                    </div> <!-- form-group// -->
                                    <div class="form-group input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
                                        </div>
                                        <input name="userEmail" class="form-control" placeholder="Email address" type="email">
                                    </div> <!-- form-group// -->
                                    <div class="form-group input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
                                        </div>
                                       
                                        <input name="userPhone" class="form-control" placeholder="Phone number" type="text">
                                    </div> <!-- form-group// -->
                                    <div class="form-group input-group">
                                        <div class="input-group-prepend">
                                            <span class="form-control input-group-text"> <i class="fa fa-calendar"></i> </span>
                                        </div>
                                        <input name="userDOB" class="form-control" placeholder="Date of Birth" type="date">
                                    </div> <!-- form-group end.// -->
                                    <div class="form-group input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"> <i class="fa fa-venus-mars"></i> </span>
                                        </div>
                                        <div class="ui-widget-content text-center">                 
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" name="userGender" value="male">
                                                <label class="form-check-label">
                                                    Male
                                                </label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" name="userGender" value="female" >
                                                <label class="form-check-label">
                                                    Female
                                                </label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" name="userGender" value="trans" >
                                                <label class="form-check-label">
                                                    Other
                                                </label>
                                            </div>
                                        </div>                      

                                    </div>
                                    <div class="form-group input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"> <i class="fa fa-building"></i> </span>
                                        </div>
                                        <input name="userAddress" class="form-control" placeholder="Address" type="text">

                                    </div> <!-- form-group end.// -->

                                    <div class="form-group input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                                        </div>
                                        <input class="form-control" name="userPassword" placeholder="Create password" type="password">
                                    </div> <!-- form-group// -->
                                    
                                    <div class="form-group text-center">
                                        <button type="submit" class="btn btn-primary btn-block">Create Account</button>
                                    </div> <!-- form-group// -->      
                                    <p class="text-center">Have an account? <a href="Login.html">Log In</a> </p>                                                                 
                                </form>
                            </article>
                        </div>
                    </div>  
                </div>
            </div>
        </div>


        <%@include file="footer.html"%>
    </body>
</html>
