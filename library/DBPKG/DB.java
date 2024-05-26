package DBPKG;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import Library.LibraryDAO;

public class DB {
	
	
 public static ResultSet getRs(String sql) throws Exception {
	 Connection conn = LibraryDAO.getConn();
	 Statement stmt = conn.createStatement();
	 
	 ResultSet rs = stmt.executeQuery(sql);
	 
	 return rs;
	 
 }
}
