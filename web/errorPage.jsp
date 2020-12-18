

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error!!</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">

    </head>
    <body>
        <%@include file="header.jsp"%>
        
        <div class="jumbotron">
            <h1 class="display-4">Error !</h1>
            <p class="lead">There is an issue from our side</p>
            <hr class="my-4">
            <p><%= exception %></p>
            <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
        </div>


        <%@include file="footer.html"%>
    </body>
</html>
