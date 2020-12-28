<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Wanna Rent Your Car</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
        <style>
            label{
                font-size: 20px;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container-fluid" style="background-image: url('images/car4.jpg'); height: 550px; background-repeat: no-repeat; background-size: cover; ">
            <!-- Button trigger modal -->
            <div class="row">
                <div class="col pt-4" style="opacity: 0.5">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body text-center">
                            <h5 class="card-title"><i class="fa fa-car fa-2x" aria-hidden="true"></i></h5>
                            <h6 class="card-subtitle mb-2 text-muted">Rent Your Car</h6>
                            <p class="card-text"></p>
                            <a class="card-link btn btn-danger" data-toggle="modal" data-target="#exampleModal">Rent</a>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col pt-3" style="opacity: 0.5">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body text-center">
                            <h5 class="card-title"><i class="fas fa-car-side fa-2x" aria-hidden="true"></i></h5>
                            <h6 class="card-subtitle mb-2 text-muted">Select Your Car</h6>
                            <p class="card-text"></p>
                            <a href="carselect.jsp" class="card-link btn btn-danger">Select</a>
                        </div>
                    </div>
                </div>
            </div>           
        </div>
        <%@include file="footer.html" %>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable ">
                <div class="modal-content">
                    <div class="modal-header" style="background-color:#9419e6">
                        <h4 class="modal-title" id="exampleModalLabel">Post Your Car</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>

                    </div>
                    <div class="modal-body">
                        <form action="rentUser.jsp" method="post">
                            <div class="form-group ">
                                <label> Name</label>
                                <input name="carName" class="form-control" placeholder="car name" type="text" required>
                            </div> <!-- form-group// -->
                            <div class="form-group ">
                                <label> Brand</label>
                                <input name="carBrand" class="form-control" placeholder="car brand" type="text" required>
                            </div> <!-- form-group// -->
                            <div class="form-group ">
                                <label> Type</label>
                                <input name="carType" class="form-control" placeholder="car type" type="text" required>
                            </div> <!-- form-group// -->
                            <div class="form-group ">
                                <label> Number</label>
                                <input name="carNumber" class="form-control" placeholder="car number" type="text" required>
                            </div> <!-- form-group// -->
                            <div class="form-group ">
                                <label> Color</label>
                                <input name="carColor" class="form-control" placeholder="car color" type="text" required>
                            </div> <!-- form-group end.// -->
                            <div class="form-group ">
                                <label>Fuel Type</label>
                                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                                    <div class="btn-group" role="group" aria-label="first group">
                                        <input name="carFuel" type="button" class="btn btn-info" value="Diesel">&nbsp;&nbsp;
                                    </div>
                                    <div class="btn-group" role="group" aria-label="second group">
                                        <input name="carFuel" type="button" class="btn btn-info" value="Petrol">&nbsp;&nbsp;
                                    </div>
                                    <div class="btn-group" role="group" aria-label="third group">
                                        <input name="carFuel" type="button" class="btn btn-info" value="CNG">&nbsp;&nbsp;
                                    </div>
                                </div>
                            </div>
                            <div class="form-group ">
                                <label>No. Of Owners</label>
                                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                                    <div class="btn-group" role="group" aria-label="first group">
                                        <input name="carOwner" type="button" class="btn btn-info" value="1st">&nbsp;&nbsp;
                                    </div>
                                    <div class="btn-group" role="group" aria-label="second group">
                                        <input name="carOwner" type="button" class="btn btn-info" value="2nd">&nbsp;&nbsp;
                                    </div>
                                    <div class="btn-group" role="group" aria-label="third group">
                                        <input name="carOwner" type="button" class="btn btn-info" value="3rd">&nbsp;&nbsp;
                                    </div>
                                    <div class="btn-group" role="group" aria-label="fourth group">
                                        <input name="carOwner" type="button" class="btn btn-info" value="3+">&nbsp;&nbsp;
                                    </div>
                                </div>
                            </div>
                            <div class="form-group ">
                                <label>Description</label>
                                <textarea name="carDesc" class="form-control" placeholder="car description" type="text" required></textarea>

                            </div> <!-- form-group end.// -->


                            <div class="form-group ">
                                <label>Price</label>
                                <input class="form-control" name="carPrice" placeholder="car price" type="text" required>
                            </div> <!-- form-group// -->
                            <div class="form-group ">
                                <label>Kms Driven</label>
                                <input class="form-control" name="carKM" placeholder="car kms driven" type="text" required>
                            </div> <!-- form-group// -->

                            <div class="form-group">
                                <label>Upload Images</label>
                                <input type="file" class="form-control-file" id="exampleFormControlFile1">
                            </div>

                            <div class="form-group text-center">
                                <button type="submit" class="btn btn-primary">Confirm</button>&nbsp;&nbsp;&nbsp;    
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                            </div> <!-- form-group// -->      

                        </form>
                    </div>

                </div>
            </div>
        </div>
    </body>
</html>
