
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/finance/style.css" rel='stylesheet' type='text/css' />

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">

    </head>
    <body style="background-color: #e2e2e2;">
        <script>
            $(window).bind("pageshow", function (event) {
                if (event.originalEvent.persisted) {
                    window.location.reload();
                }
            });

        </script>
        <style> 
            .banner{
                background-image: url('images/conut.jpg');
                background-repeat: no-repeat;
                background-size: cover;
            }

        </style>
        <%@include file="header.jsp" %>

        <div id="carouselExampleCaptions" class="carousel slide pt-1" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>

            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/car4.jpg" class="d-block w-100"style="height: 450px;" alt="Car">
                    <div class="carousel-caption d-none d-md-block">
                        <button class="btn btn-primary" onclick="window.location.href = 'carselect.jsp'">Select Your Car</button>
                        <button class="btn btn-primary" onclick="window.location.href = 'rentyourcar.jsp'">Rent Your Car</button>
                        <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/car5.jpg" class="d-block w-100 " style="height: 450px;" alt="Car">
                    <div class="carousel-caption d-none d-md-block">
                        <button class="btn btn-primary" onclick="window.location.href = 'carselect.jsp'">Select Your Car</button>
                        <button class="btn btn-primary" onclick="window.location.href = 'rentyourcar.jsp'">Rent Your Car</button>

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

        <br>

        <!-- CAR CARDS FEATURES -->

        <div class="container">
            <center>    <h2>THE ZOOMCAR ADVANTAGE</h2><br/>
                <h5>We simplified car rentals, so you can focus on what's important to you.</h5></center><hr>
            <div class="row"> 
                <div class="col">
                    <div class="card text-center" style="width: 18rem;">
                        <i class="fas fa-gas-pump fa-3x" style="padding-top:9px;"></i>

                        <div class="card-body">
                            <h5>Fuel Cost Included</h5>
                            <hr>
                            <p class="card-text">Don't worry about mileage! All fuel costs are included. If you refill fuel, we'll pay you back!</p>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card text-center" style="width: 18rem;">

                        <center> <i class="fas fa-rupee-sign fa-3x" style="padding-top:9px;"></i> </center>
                        <div class="card-body">
                            <h5>No Hidden Charges</h5>
                            <hr>
                            <p class="card-text">Our prices include taxes and insurance. What you see is what you really pay!</p>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card text-center" style="width: 18rem;">
                        <center> <i class="fa fa-gift fa-3x" style="padding-top:9px;"></i> </center>
                        <div class="card-body">
                            <h5>Flexi Pricing Packages</h5>
                            <hr>
                            <p class="card-text">One size never fits all! Choose a balance of time and kilometers that works best for you.

                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col">
                    <div class="card text-center" style="width: 18rem;">
                        <center> <i class="fas fa-car-crash fa-3x" style="padding-top:9px;"></i> </center>
                        <div class="card-body">
                            <h5>Damage Insurance</h5>
                            <hr>
                            <p class="card-text">All your bookings include damage insurance! Drive safe, but don’t worry!</p>
                        </div>
                    </div>

                </div>

                <div class="col">
                    <div class="card text-center" style="width: 18rem;">
                        <center> <i class="fa fa-map-marker fa-3x" style="padding-top:9px;"></i> </center>
                        <div class="card-body">
                            <h5>Go Anywhere</h5>
                            <hr>
                            <p class="card-text">Our cars have all-India permits.  Just remember to pay state tolls and entry taxes.</p>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card text-center" style="width: 18rem;">
                        <center> <i class="fas fa-road fa-3x" style="padding-top:9px;"></i> </center>
                        <div class="card-body">
                            <h5>24x7 Roadside Assistance</h5>
                            <hr>
                            <p class="card-text">We have round-the-clock, pan India partners. Help is never far away from you.</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <!--   Car Availability  -->

        <div id="carouselExampleCaptions" class="carousel slide pt-3" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>

            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/carananya.jpg" class="d-block w-100"style="height: 350px;" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>First slide label</h5>
                        <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/bannercar1.jpg" class="d-block w-100 " style="height: 350px;" alt="...">
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
        <!--   Car Availability End -->

        <!--  How Carzone Works -->

        <div class="container pt-3">
            <center><h3><strong> How CarZone Works </strong></h3> </center>
            <center><h5>Drive yourself to an adventure and back in 5 simple steps</h5> </center>

            <hr>
            <div class="row pt-2 pb-3">
                <div class="col-sm">
                    <div class="card text-center h-100" >
                        <center> <i class="fas fa-car fa-3x" style="padding-top:9px;"></i> </center>
                        <div class="card-body">
                            <h6>BOOK</h6>
                            <p class="card-text">Search for and book a car on our site!</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm">
                    <div class="card text-center h-100" >
                        <center> <i class="fa fa-id-card fa-3x" style="padding-top:9px;"></i> </center>
                        <div class="card-body">
                            <h6>UPLOAD LICENSE</h6>
                            <p class="card-text">Upload your driver’s license, and pay a small security deposit.</p>
                        </div>
                    </div>

                </div>
                <div class="col-sm">
                    <div class="card text-center h-100">
                        <center> <i class="fas fa-unlock-alt fa-3x" style="padding-top:9px;"></i> </center>
                        <div class="card-body">
                            <h6>UNLOCK</h6>
                            <p class="card-text">We SMS your car details 20 minutes before pickup. Unlock it via the Zoomcar app.</p>
                        </div>
                    </div>

                </div>
                <div class="col-sm">
                    <div class="card text-center h-100">
                        <center> <i class="fa fa-car fa-3x" style="padding-top:9px;"></i> </center>
                        <div class="card-body">
                            <h6>ZOOM</h6>
                            <p class="card-text">Fill the start checklist in the Zoomcar app. Grab the keys from the glove-box and drive.</p>
                        </div>
                    </div>

                </div>
                <div class="col-sm">
                    <div class="card text-center h-100">
                        <center> <i class="fa fa-undo fa-3x" style="padding-top:9px;"></i> </center>
                        <div class="card-body">
                            <h6>RETURN</h6>
                            <p class="card-text">Return the car to the same location and fill the end checklist to end your trip.</p>
                        </div>
                    </div>

                </div>

            </div>

        </div> 

        <br>

        <div class="container">
            <%@include  file="carbanner.html" %>
        </div>

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
        <br>


        <%@include file="footer.html" %>
        <!-- //Modal -->
        <!-- js-->
        <script src="js/finance/jquery-2.2.3.min.js"></script>
        <!-- js-->
        <!-- Banner Responsiveslides -->
        <script src="js/finance/responsiveslides.min.js"></script>
        <script>
                            // You can also use "$(window).load(function() {"
                            $(function () {
                                // Slideshow 4
                                $("#slider3").responsiveSlides({
                                    auto: true,
                                    pager: true,
                                    nav: false,
                                    speed: 500,
                                    namespace: "callbacks",
                                    before: function () {
                                        $('.events').append("<li>before event fired.</li>");
                                    },
                                    after: function () {
                                        $('.events').append("<li>after event fired.</li>");
                                    }
                                });

                            });
        </script>
        <!-- // Banner Responsiveslides -->
        <!-- stats -->
        <script src="js/finance/jquery.waypoints.min.js"></script>
        <script src="js/finance/jquery.countup.js"></script>
        <script>
                            $('.counter').countUp();
        </script>
        <!-- //stats -->
        <!--pop-up-box -->
        <script src="js/finance/jquery.magnific-popup.js"></script>

        <!-- //pop-up-box -->
        <!-- Bootstrap Core JavaScript -->
        <script src="js/finance/bootstrap.js ">
        </script>
        <!-- //Bootstrap Core JavaScript -->
    </body>
</html>
