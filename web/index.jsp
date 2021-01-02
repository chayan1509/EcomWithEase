<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="errorpage.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <title>EcomWithEase</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/finance/style.css" rel='stylesheet' type='text/css'/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
        
        <style> 
            .banner{
                background-image: url('images/conut.jpg');
                background-repeat: no-repeat;
                background-size: cover;
            }

        </style>
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <div class="alert alert-primary" role="alert" style="height: 50px;">
            <marquee direction="left" width="100%">
                <p style="font-family: Impact; font-size: 14pt;">
                    E commerce has evolved in many ways since its start, and it’s changing
                    the way we live, shop and do business. Let’s dive into the history and the future of ecommerce.
                </p>
            </marquee>
        </div>


        <div class="container">
            <div class="row">
                <div class="col"></div>   
                <div class="col-10">
                    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                        
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="images/car.jpg" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>First slide label</h5>
                                    <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="images/house.jpg" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Second slide label</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="images/finance.jpg" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Third slide label</h5>
                                    <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
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
                <div class="col"></div> 
            </div>
        </div>

        <%@include file="service_provided.html" %>

        <!-- stats -->
        <section class="stats pb-5 banner" >
            <div class="container py-md-4 mt-md-3">
                <div class="row inner_w3l_agile_grids-1">
                    <div class="col-lg-3 col-sm-6 w3layouts_stats_left w3_counter_grid">
                        <p class="counter">2001</p>
                        <h3 style="color: whitesmoke;">Year of Foundation</h3>
                    </div>
                    <div class="col-lg-3 col-sm-6 w3layouts_stats_left w3_counter_grid1">
                        <p class="counter">765</p>
                        <h3 style="color: whitesmoke;">Issued Loans</h3>
                    </div>
                    <div class="col-lg-3 col-sm-6 w3layouts_stats_left w3_counter_grid2">
                        <p class="counter">125</p>
                        <h3 style="color: whitesmoke;">Business Partners</h3>
                    </div>
                    <div class="col-lg-3 col-sm-6 w3layouts_stats_left w3_counter_grid2">
                        <p class="counter">150</p>
                        <h3 style="color: whitesmoke;">Happy Clients</h3>
                    </div>
                </div>
            </div>	
        </section>
        <!-- //stats -->

        <%@include file="footer.html"%>
    </body>
     <script src="js/finance/jquery.waypoints.min.js"></script>
        <script src="js/finance/jquery.countup.js"></script>
        <script>
                            $('.counter').countUp();
        </script>
</html>
