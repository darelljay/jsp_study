<%@page import="java.sql.*"%>
<%@page import="DBPKG.DB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
<h2 align="center">객실예약등록</h2>
<br>
<form action="insert" method="POST">
<table border="1">
<tr>
<th>예약번호(자동생성)</th>
<%
String sql = "select max(resv_no) + 1 from RESERVAION_TBL_202305 ";

ResultSet rs = DB.getRs(sql);

while(rs.next()){
%>
<td><input type="text" value="<%=rs.getInt(1)%>" readonly="readonly" name="resv_no" /></td>
<%} %>
</tr>
<tr>
<th>예약자 성함</th>
<td><input type="input" name="resv_name"/></td>
</tr>
<tr>
<th>예약자 전화번호</th>
<td><input type="text" name="resv_phone"/>(하이픈 미입력)</td>
</tr>
<tr>
<th>예약기간</th>
<td><input type="date" placeholder="yyyymmdd" name="resv_from_ymd"/> 부터 <input type="date" placeholder="yyyymmdd" name="resv_to_ymd"/> 까지</td>
</tr>
<tr>
<th>예약객실번호</th>
<td>
<select name="resv_rm_number">
<%
String sql2 = "select rm_number from ROOM_TBL_202305 where rm_number not in (select rm_number from ROOM_TBL_202305 R1 join RESERVAION_TBL_202305 R2 on R1.rm_number = R2.resv_rm_number group by rm_number)";

ResultSet rs2 = DB.getRs(sql2);

while(rs2.next()){
%>
<option value="<%= rs2.getInt(1) %>" ><%= rs2.getInt(1) %></option>
<%} %>
</select>
</td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="등록">&nbsp;<input type="reset" value="다시스기"/></td>
</tr>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>