<%@page import="java.sql.*"%>
<%@page import="dbcon.ConnectionDB"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession sess = request.getSession(false);
    if (sess.getAttribute("userName") != null) {

        String carName = request.getParameter("carName");
        String carBrand = request.getParameter("carBrand");
        String carType = request.getParameter("carType");
        String carNumber = request.getParameter("carNumber");
        String carColor = request.getParameter("carColor");
        // String carFuel = request.getParameter("carFuel");
        // String carOwners = request.getParameter("carOwners");
        String carDesc = request.getParameter("carDesc");
        String carPrice = request.getParameter("carPrice");
        String carKM = request.getParameter("carKM");
        // String carImages = request.getParameter("carImages");
        try {
            Connection con = ConnectionDB.getConnection();

            PreparedStatement ps = con.prepareStatement("insert into userCarTable(carName,carBrand,carType,carNumber,carColor,carDesc,carPrice,carKM) values(?,?,?,?,?,?,?,?)");
            ps.setString(1, carName);
            ps.setString(2, carBrand);
            ps.setString(3, carType);
            ps.setString(4, carNumber);
            ps.setString(5, carColor);
            ps.setString(6, carDesc);
            ps.setString(7, carPrice);
            ps.setString(8, carKM);

            if (ps.executeUpdate() > 0) {
                response.sendRedirect("booking.jsp");
                out.print("Car Inserted Successfull");

                con.close();
            } else {
                out.print("Can't Register");
                con.close();
            }
        } catch (Exception e) {
            out.print(e.getMessage());
        }
    } else {
        out.print("<script>alert('Please Log In First')</script>");
        response.sendRedirect("rentyourcar.jsp");
    }
%>

