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
* {
	margin: 0;
	padding: 0;
}

section {
	width: 100%;
	height: 100%;
	position: fixed;
	left: 0;
	top: 90px;
	display: flex;
	flex-direction: column;
	align-items: center;
}

table{
width: 600px;
}
ol {
	padding: 18px;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<br>
		<h1 align="center">독서실 회원관리 프로그램</h1>
		<br>
		<form action="insert" method="post">
		<table border='1'>
			<tr>
			<th>회원아이디(자동발생)</th>
			 <%
			 	String sql = "select max(id)+1 from MEM_TBL_202205";
			 	ResultSet rs = DB.getRs(sql);
			 	
			 	while(rs.next()){
			 %>
			 	<td><input type='text' readonly name='id' value="<%= rs.getInt(1)%>"/></td>
			 <%} %>
			</tr>
			<tr>
			<th>회원성명</th>
			<td><input type="text" name='name'/></td>
			</tr>
			<tr>
			<th>주민번호</th>
			<td><input type="text" name='jumin'/></td>
			</tr>
			<tr>
			<th>가입일자</th>
			<td><input type="date" name='indate'/></td>
			</tr>
			<tr>
			<th>정기회원여부[0:정기,1:비정기]</th>
			<td><input type="text" name='grade'/></td>
			</tr>
			<tr>
			<td colspan="2" align="center"><input type="submit" value="등록" />&nbsp;<input type="reset" value="조회"/></td>
			</tr>
		</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>