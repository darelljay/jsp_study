<%@page import="DBPKG.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 매출 죄회</title>
<style type="text/css">
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
 <br>
 <h2 align="center">회원 매출조회</h2>
 <br>
 <table border="1" style="width: 650px;">
 <tr>
 <th align="center" >회원번호</th>
 <th align="center">회원성명</th>
 <th align="center">고객등급</th>
 <th align="center">매출</th> 
 </tr>
 <%
 	String sql = "SELECT m.custno, m.custname, m.grade, SUM(j.price) AS total_price FROM member_tbl_02 m JOIN money_tbl_02 j ON m.custno = j.custno GROUP BY m.custno, m.custname, m.grade ORDER BY total_price DESC";
 	ResultSet rs = DB.getRs(sql);
 	
 	while(rs.next()){
 %>
 	
 	<tr>
 	<td><%= rs.getInt(1) %></td>
 	<td><%= rs.getString(2) %></td>
 	<td><%= rs.getString(3) %></td>
 	<td><%= rs.getInt(4) %></td>
 	
 	</tr>
 <%} %>
 </table>
 </section>
 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>