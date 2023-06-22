package utm.hostel.management;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/updateinfo")
public class UpdateUserServlet   extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("uname");
        String inst=req.getParameter("institution");
        String dob=req.getParameter("dob");
        String gender=req.getParameter("gender");
        HttpSession session=req.getSession();
        String email=session.getAttribute("userid").toString();
        String bk=req.getParameter("bkperiod");
        
        try{
            Connection con=DbUtils.connect();
            PreparedStatement ps=con.prepareStatement("update users set uname=?,gender=?,dob=?,institution=?,bk_period=? where userid=?");
            ps.setString(7,email);
            ps.setString(1,name);
            ps.setString(2,gender);
            ps.setString(3,dob);
            ps.setString(4,inst);
            ps.setString(5,bk);
            
            ps.executeUpdate();  
            con.close();
            session.setAttribute("msg", "User updated Successfully..!");
            resp.sendRedirect("uprofile.jsp");            
        }
        catch(Exception ex){
            System.err.println("Error "+ex.getMessage());
        }
    }
    
}
