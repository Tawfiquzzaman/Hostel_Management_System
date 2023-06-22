package utm.hostel.management;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class DbUtils {
	public static Connection connect() throws Exception {
		//Class.forName("com.mysql.jdbc.Driver");
		Class.forName("com.mysql.cj.jdbc.Driver");
		final String URL="jdbc:mysql://localhost/hosteldb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
		Connection con=DriverManager.getConnection(URL, "root", "root");
		return con;
	}
	
	public static boolean checkEmail(String email,String table) throws Exception {
		Connection con=connect();
		ResultSet rs=con.createStatement().executeQuery("select count(*) from "+table+" where email='"+email+"'");
		rs.next();
		boolean result=rs.getInt(1)>0;
		con.close();
		return result; 
	}
	
	
}
