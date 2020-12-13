
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">

    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="jumbotron pt-3 mt-2" style="background-color:#ba1616; color: white;">
            <div class="container">
                <div class="row">  
                    <div class="col-8">
                        <h1 class="display-4">Sorry! Error Occurred</h1>
                        <p class="lead"><%= exception%></p>
                        <hr class="my-4">
                        <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>

                        <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
                    </div>
                        <div class="col-4  pt-3">
                            <img src="images/error.jpg" style="width: 100%; height: 100%">
                        </div>    
                </div>
            </div>
        </div>

        <%@include file="footer.html" %>
    </body>
</html>
