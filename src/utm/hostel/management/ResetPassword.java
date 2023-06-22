package utm.hostel.management;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/reset")
public class ResetPassword extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String userid=req.getParameter("userid");
		String pwd=req.getParameter("pwd");
		try {
			HttpSession session=req.getSession();
			Connection con=DbUtils.connect();
			PreparedStatement ps=null;
			ResultSet rs=null;
			ps=con.prepareStatement("SELECT * FROM users WHERE userid=?");
			ps.setString(1, userid);
			rs=ps.executeQuery();
			if(rs.next()) {
				ps=con.prepareStatement("update users set pwd=? WHERE userid=?");
				ps.setString(1, pwd);
				ps.setString(2, userid);
				resp.sendRedirect("Login.jsp");
			}
			else {
				session.setAttribute("error", "Invalid username");
				resp.sendRedirect("resetfail.jsp");
			}
			
		}
		catch(Exception ex) {
			System.out.println("error "+ex.getMessage());
		}
	}
}
