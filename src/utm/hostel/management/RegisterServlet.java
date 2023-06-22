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

@WebServlet("/register")
public class RegisterServlet   extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("uname");
        String inst=req.getParameter("institution");
        String dob=req.getParameter("dob");
        String gender=req.getParameter("gender");
        String email=req.getParameter("email");
        String pwd=req.getParameter("pwd");
        String bk=req.getParameter("bkperiod");
        
        HttpSession session=req.getSession();
        try{
            Connection con=DbUtils.connect();
            PreparedStatement ps=con.prepareStatement("INSERT INTO users(userid,pwd,uname,gender,dob,institution,bk_period) VALUES(?,?,?,?,?,?,?)");
            ps.setString(1,email);
            ps.setString(2,pwd);
            ps.setString(3,name);
            ps.setString(4,gender);
            ps.setString(5,dob);
            ps.setString(6,inst);
            ps.setString(7,bk);
            
            ps.executeUpdate();  
            con.close();
            session.setAttribute("msg", "User Registered Successfully..!");
            resp.sendRedirect("home.jsp");            
        }
        catch(Exception ex){
            System.err.println("Error "+ex.getMessage());
        }
    }
    
}
