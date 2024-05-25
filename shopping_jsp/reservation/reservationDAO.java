package reservation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class reservationDAO {
	
	public static Connection getConn() throws Exception{
		 Class.forName("oracle.jdbc.OracleDriver");
		 Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:system","system","1234");
		 
		 return conn;
	 }
//	resv_no,resv_name,resv_phone,resv_from_ymd,resv_to_ymd,resv_rm_number
	public int insert(reservationVO vo) throws Exception {
			PreparedStatement pstmt = null;
			Connection conn = getConn();
			String sql = "insert into  RESERVAION_TBL_202305 (resv_no,resv_name,resv_phone,resv_from_ymd,resv_to_ymd,resv_rm_number) values (?,?,?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getResv_no());
			pstmt.setString(2, vo.getResv_name());
			pstmt.setString(3, vo.getResv_phone());
			pstmt.setString(4, vo.getResv_from_ymd());
			pstmt.setString(5, vo.getResv_to__ymd());
			pstmt.setInt(6,  Integer.parseInt(vo.getResv_rm_number()));
			
			int result = pstmt.executeUpdate();
			
			return result;
	}
}
