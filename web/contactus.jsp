<!DOCTYPE html>

<html>
    <head>
        <title>Contact Ecom With Ease</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
        <link rel="stylesheet" href="https://drive.google.com/uc?export=view&id=1rJXqJ2v1njuVnxnJoYSA2XpKrhbtVwIu">
        <style>
            body{
                background-color: #25274d;
            }
            .contact{
                padding: 1%;
                padding-bottom: 2%;
                height: 400px;
            }
            .col-md-3{
                background: #ff9b00;
                padding: 4%;
                border-top-left-radius: 0.5rem;
                border-bottom-left-radius: 0.5rem;
            }
            .contact-info{
                margin-top:10%;
            }
            .contact-info img{
                margin-bottom: 15%;
            }
            .contact-info h2{
                margin-bottom: 10%;
            }
            .col-md-9{
                background: #fff;
                padding: 3%;
                border-top-right-radius: 0.5rem;
                border-bottom-right-radius: 0.5rem;
            }
            .contact-form label{
                font-weight:600;
            }
            .contact-form button{
                background: #25274d;
                color: #fff;
                font-weight: 600;
                width: 25%;
            }
            .contact-form button:focus{
                box-shadow:none;
            }
        </style>
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <div class="container contact">
            <div class="row">
                <div class="col-md-3">
                    <div class="contact-info">
                        <img src="https://image.ibb.co/kUASdV/contact-image.png" alt="image"/>
                        <h2>Contact Us</h2>
                        <h4>We would love to hear from you !</h4>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="contact-form">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="fname">First Name:</label>
                            <div class="col-sm-10">          
                                <input type="text" class="form-control" id="fname" placeholder="Enter First Name" name="fname">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="lname">Last Name:</label>
                            <div class="col-sm-10">          
                                <input type="text" class="form-control" id="lname" placeholder="Enter Last Name" name="lname">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="email">Email:</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="comment">Comment:</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" rows="5" id="comment"></textarea>
                            </div>
                        </div>
                        <div class="form-group">        
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-default">Submit</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <%@ include file="footer.html" %>
    </body>
</html>
