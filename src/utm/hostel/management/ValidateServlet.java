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


@WebServlet("/validate")
public class ValidateServlet extends HttpServlet {

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
			ps=con.prepareStatement("SELECT * FROM users WHERE userid=? and pwd=?");
			ps.setString(1, userid);
			ps.setString(2,pwd);
			rs=ps.executeQuery();
			if(rs.next()) {
				session.setAttribute("userid", userid);
				session.setAttribute("uname", rs.getString("uname"));
				session.setAttribute("role", rs.getBoolean("isadmin")?"Admin":"User");
				if(rs.getBoolean("isadmin")) {
				resp.sendRedirect("dashboard.jsp");
				}
				else {
					resp.sendRedirect("uprofile.jsp");
				}
			}
			else {
				session.setAttribute("error", "Invalid username or password");
				resp.sendRedirect("loginfail.jsp");
			}
			
		}
		catch(Exception ex) {
			System.out.println("error "+ex.getMessage());
		}
	}
}
