

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
        
    </head>
    <body>
        <%@include file="header.html" %>
        <div class="container">
            <div class="row">                  
                <div class="col">
                    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                            
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="images/car1.jpg" class="d-block w-100 p-3 mw-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>First slide label</h5>
                                    <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="images/car2.jpg" class="d-block w-100 p-3 mw-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Second slide label</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>

            </div>
        </div>
        
        <br>
        
        <!-- CAR CARDS FEATURES -->
        
        <div class="container">
            <div class="row">
                <div class="col-4">
                    <div class="card" style="width: 18rem;">
                        <center> <i class="fas fa-gas-pump fa-3x" style="padding-top:9px;"></i> </center>
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="card" style="width: 18rem;">

                        <center> <i class="fas fa-rupee-sign fa-3x" style="padding-top:9px;"></i> </center>
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="card" style="width: 18rem;">
                        <center> <i class="fa fa-gift fa-3x" style="padding-top:9px;"></i> </center>
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-4">
                     <div class="card" style="width: 18rem;">
                        <center> <i class="fas fa-car-crash fa-3x" style="padding-top:9px;"></i> </center>
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>
                    
                </div>

                <div class="col-4">
                    <div class="card" style="width: 18rem;">
                        <center> <i class="fa fa-map-marker fa-3x" style="padding-top:9px;"></i> </center>
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>
                </div>
                
                <div class="col-4">
                    <div class="card" style="width: 18rem;">
                        <center> <i class="fas fa-road fa-3x" style="padding-top:9px;"></i> </center>
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
        
       
        
    </body>
</html>
