<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dbcon.ConnectionDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="errorPage.jsp" %>
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

        <link rel="stylesheet" href="https://drive.google.com/uc?export=view&id=1mJd75EqIl3zN36hkCartGrrVMpdSpJaI" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">

    </head>
    <body style="background-color: rosybrown">
        <%@include file="header.jsp" %>
        <section class="banner-area organic-breadcrumb" style="background:url(images/car4.jpg) center no-repeat; background-size: cover; width:100%; height:450px;">
            <div class="container">
                <center>
                    <h1 style="font-family:Sofia, sans-serif; color:#eb86a6;">FIND THE RIGHT CAR</h1><br/><br/><br/><br/>
                    <form class="form-inline d-flex justify-content-center md-form form-sm active-cyan active-cyan-2 mt-2">
                        <i class="fas fa-search" aria-hidden="true"></i>
                        <input class="form-control form-control-sm ml-3 w-75" type="text" placeholder="Search" aria-label="Search">
                        <button class="btn btn-danger btn-rounded btn-sm my-0" type="submit">Search</button>
                    </form>
                </center>
            </div>
        </section>

        <div class="container pt-5">
            <%                Connection con = ConnectionDB.getConnection();
                PreparedStatement ps = con.prepareStatement("select * from cardetails");
                ResultSet rs = ps.executeQuery();
                int i;
                while (rs.next()) {
                    i = 0;
            %>
            <div class="row pt-2">
                <!-- single product -->
                <%
                    do {
                %>
                <div class="col-lg-4">
                    <div class="card" style="width: 18rem;">
                        <img src="<% out.print(rs.getString("carPhoto"));%>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><% out.print(rs.getString("carName"));%></h5>
                            <p class="card-text"><% out.print("Car Type: " + rs.getString("carType") + "<br/>" + rs.getString("carColor") + "<br/>" + rs.getString("carSeat"));%></p>
                            <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Book Now</a>
                        </div>
                    </div>
                </div>
                <%
                        i++;
                        if (i == 3) {
                            break;
                        }
                    } while (rs.next());

                %>

            </div>


            <% }%>

        </div>
        <div class="container pt-1">
            <%
                PreparedStatement ps1 = con.prepareStatement("select * from usercartable");
                ResultSet rs1 = ps1.executeQuery();
                int j;
                while (rs1.next()) {
                    j = 0;
            %>
            <div class="row pt-2">
                <!-- single product -->
                <%
                    do {
                %>
                <div class="col-lg-4">
                    <div class="card" style="width: 18rem;">
                        <img src="<% out.print(rs1.getString("carImages"));%>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><% out.print(rs1.getString("carName"));%></h5>
                            <p class="card-text"><% out.print("Car Type: " + rs1.getString("carType") + "<br/>" + rs1.getString("carColor") + "<br/>" + rs1.getString("carPrice"));%></p>
                            <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Book Now</a>
                        </div>
                    </div>
                </div>
                <%
                        j++;
                        if (j == 3) {
                            break;
                        }
                    } while (rs1.next());

                %>

            </div>


            <% }%>

        </div>





        <br/>
        <%@include file="footer.html"%>
        <!-- Button trigger modal -->


        <!-- Modal Book Your Car -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <form>
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
                                    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                                </div>
                                <input name="userLicense" class="form-control" placeholder="License Details" type="text">
                            </div>

                            <div class="form-group input-group">
                                <label for="exampleFormControlFile1">Example file input</label>
                                <input type="file" class="form-control-file" id="exampleFormControlFile1">
                            </div>

                            <center>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary" data-dismiss="modal"  data-toggle="modal" data-target="#payment" >Confirm</button>
                            </center>

                        </form>

                    </div>

                    <div class="modal-footer">

                    </div>
                </div>
            </div>
        </div>


        <!-- Modal Payment-->
        <div class="modal fade" id="payment" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Select Your Payment Method</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                                <label class="form-check-label" for="exampleRadios1">
                                    Credit Card
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
                                <label class="form-check-label" for="exampleRadios2">
                                    Debit Card
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios3" value="option3">
                                <label class="form-check-label" for="exampleRadios3">
                                    UPI
                                </label>
                            </div>
                            <center>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary" onclick="window.location.href = 'payment.jsp'">Pay Now</button>
                            </center>
                        </form>
                    </div>



                </div>
            </div>
        </div>
    </body>
</html>
