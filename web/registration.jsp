<%@page import="java.sql.*"%>
<%@page import="dbcon.ConnectionDB"%>
<%@page import="text.EncryptText"%>
<%@page import="java.text.SimpleDateFormat"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String name = request.getParameter("userName");
    String email = request.getParameter("userEmail");
    String phone = request.getParameter("userPhone");
    String pass = request.getParameter("userPassword");
    pass = EncryptText.getEncrypted(EncryptText.getEncrypted(EncryptText.getEncrypted(pass, "MD5"), "SHA-1"), "MD5");
    String gender = request.getParameter("userGender");
    String add = request.getParameter("userAddress");
    String dob = request.getParameter("userDOB");
    try {
        Connection con = ConnectionDB.getConnection();
        
        PreparedStatement ps = con.prepareStatement("insert into registration(userName,userEmail,userPhone,userGender,userAddress,userDOB,userPassword) values(?,?,?,?,?,?,?)");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, phone);
        ps.setString(4, gender);
        ps.setString(5, add);
        ps.setString(6, dob);
        ps.setString(7, pass);
       
        if (ps.executeUpdate() > 0) {
            response.sendRedirect("index.jsp");
            out.print("Registration Successfull");
            
            con.close();
        } else {
            out.print("Can't Register");
            con.close();
        }
    } catch (Exception e) {
        out.print(e.getMessage());
    }
%>