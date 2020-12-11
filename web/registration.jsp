<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbcon.ConnectionDB"%>
<%@page import="java.sql.Connection"%>
<%@page import="text.EncryptText"%>
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
    String image = request.getParameter("userImage");
    try {
        Connection con = ConnectionDB.getConnection();
        
        PreparedStatement ps = con.prepareStatement("insert into registration values(?,?,?,?,?,?,?,?,?)");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, phone);
        ps.setString(4, gender);
        ps.setString(5, add);
        ps.setString(6, dob);
        ps.setString(7, "default.jpg");
        ps.setString(8, pass);
       
        if (ps.executeUpdate() > 0) {
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