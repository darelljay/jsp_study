package DBPKG;
import java.sql.*;
public class DB {
	
	public static Connection getConnection() throws Exception{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/system","system","1234");
		return conn;
	}
	
	public static ResultSet getRs(String sql) throws Exception{
		Connection conn = getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);		
		return rs;
	}
}
