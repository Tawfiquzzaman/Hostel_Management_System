package utm.hostel.management;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/activate")
public class UpdateUserStatus extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id=req.getParameter("id");
		HttpSession session=req.getSession();
		
		
		try {
			Connection con=DbUtils.connect();
			PreparedStatement ps=con.prepareStatement("update users set isactive=1 where userid=?");
			ps.setString(1, id);
			ps.executeUpdate();
			
			
			session.setAttribute("msg", "Status updated successfully");
			resp.sendRedirect("users.jsp");
		}catch(Exception ex) {
			System.out.println("Error "+ex.getMessage());
		}
	}
}
