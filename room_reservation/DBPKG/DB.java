package DBPKG;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;

public class DB {
 public static Connection getConn() throws Exception{
	 Class.forName("oracle.jdbc.OracleDriver");
	 Connection conn = DriverManager.getConnection("jdbc/oracle/thin/@/localhost:1521/system","system","1234");
	 
	 return conn;
 }
 
 public static ResultSet getRs(String sql) throws Exception{
	 ResultSet rs = null;
	 Statement stmt = null;
	 Connection conn = getConn();
	 
	 stmt = conn.createStatement();
	 rs = stmt.executeQuery(sql);
	 
	 return rs;
 }
 
}