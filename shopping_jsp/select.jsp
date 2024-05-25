<%@page import="java.sql.ResultSet"%>
<%@page import="DBPKG.DB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
margin: 0;
padding: 0;
}
section{
width: 100%;
height: 100%;
position: fixed; 
top: 100px;
left: 0;
display:flex;
flex-direction: column;
align-items:center;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<table border='1'>
		<tr>
		<th>예약번호</th>
		<th>예약자 성명</th>
		<th>예약자전화번호</th>
		<th>예약기간</th>
		<th>객실번호</th>
		<th>객실유형</th>

		</tr>
			<%
			String sql = "SELECT r.resv_no AS \"예약번호\", " +
		             "r.resv_name AS \"예약자 성명\", " +
		             "SUBSTR(r.resv_phone, 1, 3) || '-' || " +
		             "SUBSTR(r.resv_phone, 4, 4) || '-' || " +
		             "SUBSTR(r.resv_phone, 8, 4) AS \"예약자전화번호\", " +
		             "SUBSTR(r.resv_from_ymd, 1, 4) || '/' || " +
		             "SUBSTR(r.resv_from_ymd, 5, 2) || '/' || " +
		             "SUBSTR(r.resv_from_ymd, 7, 2) || '~' || " +
		             "SUBSTR(r.resv_to_ymd, 1, 4) || '/' || " +
		             "SUBSTR(r.resv_to_ymd, 5, 2) || '/' || " +
		             "SUBSTR(r.resv_to_ymd, 7, 2) AS \"예약기간\", " +
		             "r.resv_rm_number, " +
		             "CASE rt.rm_type " +
		             "    WHEN 'a' THEN '2인실' " +
		             "    WHEN 'b' THEN '4인실' " +
		             "    ELSE '기타' " +
		             "END AS \"객실유형\" " +
		             "FROM RESERVAION_TBL_202305 r " +
		             "JOIN ROOM_TBL_202305 rt ON r.resv_rm_number = rt.rm_number";
		             
		 ResultSet rs = DB.getRs(sql);
		 
		 while(rs.next()){
%>
	<tr>
	<td><%= rs.getInt(1) %></td>
	<td><%= rs.getString(2) %></td>
	<td><%= rs.getString(3) %></td>
	<td><%= rs.getString(4) %></td>
	<td><%= rs.getInt(5) %></td>
	<td><%= rs.getString(6) %></td>
	</tr>

<%} %>
		</table>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>