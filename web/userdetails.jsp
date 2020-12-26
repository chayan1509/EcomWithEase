<%@page import="registration.registration"%>
<%@page import="java.sql.*"%>
<%@page import="dbcon.ConnectionDB"%>
<%@page errorPage="errorPage.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <style>
            .img1{
                border-radius: 250px;
            }
            .container {
                position: relative;
                width: 100%;
            }
            .image {
                opacity: 1;
                display: block;
                transition: .5s ease;
                backface-visibility: hidden;
            }
            .middle {
                transition: .5s ease;
                opacity: 0;
                position: absolute;
                top: 50%;
                left: 50%;
                color: white;
                font-size: 16px;
                padding: 16px 32px;
                transform: translate(-50%, -50%);
                -ms-transform: translate(-50%, -50%);
                text-align: center;
            }
            .container:hover .image {
                opacity: 0.3;
            }
            .container:hover .middle {
                opacity: 1;
            }

        </style>
    </head>
    <body>
        <%@include file="header.jsp"%>
                   
        <%
            
            if (sess.getAttribute("userName") != null) {
        
            Connection con = ConnectionDB.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from registration where userEmail=?");
            ps.setString(1, sess.getAttribute("userEmail").toString());
            ResultSet rs = ps.executeQuery();
            rs.next();
            registration s = new registration();
            s.setUserName(rs.getString("userName"));
            s.setUserEmail(rs.getString("userEmail"));
            s.setUserPhone(rs.getString("userPhone"));
            s.setUserGender(rs.getString("userGender"));
            s.setUserAddress(rs.getString("userAddress"));
            s.setUserDOB(rs.getString("userDOB"));
            s.setUserImage(rs.getString("userImage"));
           


        %>
    <center>
        <div style="width: 75%;margin: 20px">
            <table class="table table-striped" border="6">
                <tr>
                    <td><% out.print("Name: " + s.getUserName() + "<br/>"); %></td>
                    <td rowspan="6" style="width:450px;">
                        <div class="container">  
                            <img src="<% out.print(s.getUserImage()); %>" width="450" height="450" class="image" alt="Responsive image">
                            <button class="middle btn btn-primary" data-toggle="modal" data-target="#exampleModal">Upload Image</button>
                        </div>

                    </td>
                </tr>
                <tr>
                    <td><% out.print("Email: " + s.getUserEmail() + "<br/>"); %></td> 
                </tr>
                <tr>
                    <td><% out.print("Phone: " + s.getUserPhone() + "<br/>"); %></td>   
                </tr>
                <tr>
                    <td><% out.print("Gender: " + s.getUserGender() + "<br/>"); %></td>   
                </tr>
                <tr>
                    <td><% out.print("Address: " + s.getUserAddress() + "<br/>"); %></td> 
                </tr>
                <tr>
                    <td><% out.print("DOB: " + s.getUserDOB() + "<br/>"); %></td> 
                </tr>
                
            </table>
        </div>
    </center>
    <%
        } else {
            response.sendRedirect("login.jsp");
        }
    %>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Upload Profile Image</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="uploadImage.jsp" method="post" enctype="multipart/form-data">
                        <input type="file" class="form-control" name="image"/>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
     <%@include file="footer.html"%>
</body>
</html>
