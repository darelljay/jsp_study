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
top: 90px;
left: 0;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2>객실예약등록</h2>
<table border="1">
<tr>
<th>예약번호(자동생성)</th>
<%
String sql = "select max(resv_no) + 1 from RESERVAION_TBL_202305 ";

ResultSet rs = DB.getRs(sql);

while(rs.next()){
%>
<td><%=rs.getInt(1) %></td>
<%} %>
</tr>
</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>