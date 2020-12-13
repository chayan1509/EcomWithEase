<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import="dbcon.ConnectionDB"%>
<%@page import="text.EncryptText"%>
<%@page import="dbcon.ConnectionDB"%>
<!DOCTYPE html>
<%
            Connection con = ConnectionDB.getConnection();
            String email = request.getParameter("userEmail");
            String pass = request.getParameter("userPassword");
//            out.print(con+"<br>");
//            out.print(pass+"<br>");
//            out.print(email+"<br>");

            pass = EncryptText.getEncrypted(EncryptText.getEncrypted(EncryptText.getEncrypted(pass, "MD5"), "SHA-1"), "MD5");
            RequestDispatcher rd;
            PreparedStatement ps = con.prepareStatement("select * from registration where userEmail=?");
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                out.print(rs.getString("userPassword"));
                if (pass.equals(rs.getString("userPassword"))) {
                    out.print("Success");
                    HttpSession sess = request.getSession();
                    Random r = new Random();
                    int x = (r.nextInt(900) + 100) * 100;
                    String key = EncryptText.getEncrypted(x + "", "MD5");
                    sess.setAttribute("userName", rs.getString("userName"));
                    sess.setAttribute("userEmail", rs.getString("userEmail"));
                    sess.setAttribute("log_key", key);
                    response.sendRedirect("index.jsp");
                } else {
                    rd = request.getRequestDispatcher("login.jsp");
                    out.print("<script>alert('Invalid Password')</script>");
                    //rd.include(request, response);
                }
            } else {
                rd = request.getRequestDispatcher("login.jsp");
                out.print("<script>alert('Invalid User Please Register')</script>");
                //rd.include(request, response);            
            }
        %>