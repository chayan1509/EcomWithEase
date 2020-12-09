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

    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container-fluid" style="background-image: url('images/banner.jpg'); height: 600px; background-repeat: no-repeat; background-size: cover;">
            <div class="row">
                <div class="col-3 mt-2">
                    <div class="card" style="z-index:70; position: absolute; opacity:0.5; ">
                        <div class="card-body">
                            <form>
                                <div class="form-group">
                                    <label>Car Brand</label>
                                    <input name="carBrand" type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Car Brand" aria-describedby="emailHelp">
                                </div>
                                <div class="form-group">
                                    <label>Number Of Seats</label>
                                    <select name="carSeats" class="form-control" id="exampleFormControlSelect1">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select>
                                </div>
                                

                            </form>
                        </div>
                    </div>
                </div> 
            </div>
        </div>
        <%@include file="footer.html" %>
    </body>
</html>
