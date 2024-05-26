package Library;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class LibraryDAO {
	public static Connection getConn() throws Exception{
		 Class.forName("oracle.jdbc.OracleDriver");
		 Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:system","system","1234");
		 
		 return conn;
	 }
	
	 public static int insert(LibraryVO VO) throws Exception{
		 Connection conn = getConn();
		 PreparedStatement pstmt = null;
		 String sql = "insert into MEM_TBL_202205 (id,name,jumin,indate,grade) values (?,?,?,?,?)";
		 
		 pstmt = conn.prepareStatement(sql);
		 pstmt.setInt(1, VO.getId());
		 pstmt.setNString(2, VO.getName());
		 pstmt.setString(3, VO.getJumin());
		 pstmt.setString(4, VO.getIndate());
		 pstmt.setString(5,VO.getGrade());
		 
		 return pstmt.executeUpdate();
		 
	 }
}
