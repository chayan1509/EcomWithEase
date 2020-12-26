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
    <body>
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
            <%                
                Connection con = ConnectionDB.getConnection();
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





      
    </body>
</html>
