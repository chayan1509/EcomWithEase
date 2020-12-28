<%@page import="dbcon.ConnectionDB"%>
<%@page import="java.sql.*"%>
<style> 
    .custom-bg{
        background-color: #73d5e6;
    }
</style> 

<nav class="navbar sticky-top navbar-expand-lg navbar-light custom-bg">


    <a class="navbar-brand" href="#"><img src="images/logo.png" class="d-inline-block align-left" alt=""></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>


    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active"><a class="nav-link" href="index.jsp">Home</a></li>
            <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                   aria-expanded="false">Products</a>
                <ul class="dropdown-menu">
                    <li class="nav-item"><a class="nav-link" href="houserental.html">Housing Services</a></li>
                    <li class="nav-item"><a class="nav-link" href="carzone.jsp">Car Rental</a></li>
                    <li class="nav-item"><a class="nav-link" href="financezone.jsp">Financial Aids</a></li>
                </ul>
            </li>
            <li class="nav-item active"><a class="nav-link" href="about.jsp">About Us</a></li>
            <li class="nav-item active"><a class="nav-link" href="contactus.jsp">Contact Us</a></li>

        </ul> 
        <%
            HttpSession sess = request.getSession(false);
            if (sess.getAttribute("userName") != null) {
        %>
        <div class="navbar-nav text-center" style="color: white">
            Welcome <strong><% out.print(sess.getAttribute("userName"));%></strong>
        </div>
        <div class="dropdown">
            <button class="btn btn-danger dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                My Account
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="userdetails.jsp">User Details</a>
                <a class="dropdown-item" href="#">My Cart</a>
                <a class="dropdown-item" href="#">Wishlist</a>
                <button class="btn btn-sm btn-success" onclick="window.location.href = 'logout.jsp?key=<% out.print(sess.getAttribute("log_key"));%>'">Logout</button>
            </div>
        </div>
        
        
        <%
        } else {
        %>

        <form class="form-inline my-2 my-lg-0">
            <a href="login.jsp">
                <input type="button" class="btn btn-outline-success my-2 my-sm-0" style="margin-right:5px;" value="Login">
            </a>
            <a href="reg.jsp">
                <input type="button" class="btn btn-outline-success my-2 my-sm-0" style="margin-right:5px;" value="Register">
            </a>
        </form>

        <%
            }
        %>


    </div>

</nav>


