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

@WebServlet("/bookprocess")
public class BookingProcessServlet   extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String bdate=req.getParameter("bdate");
        String btime=req.getParameter("btime");
        String room=req.getParameter("room");
        String roomno=req.getParameter("roomno");
        String rent=req.getParameter("rent");
        
        HttpSession session=req.getSession();
        String userid=session.getAttribute("userid").toString();
        try{
            Connection con=DbUtils.connect();
            PreparedStatement ps=con.prepareStatement("INSERT INTO booking(userid,bdate,btime,room,roomno,rent) VALUES(?,?,?,?,?,?)");
            ps.setString(1,userid);
            ps.setString(2,bdate);
            ps.setString(3,btime);
            ps.setString(4,room);
            ps.setString(5,roomno);
            ps.setString(6,rent);
            
            ps.executeUpdate();  
            con.close();
            session.setAttribute("msg", "User Registered Successfully..!");
            resp.sendRedirect("successbooking.jsp");            
        }
        catch(Exception ex){
            System.err.println("Error "+ex.getMessage());
        }
    }
    
}
