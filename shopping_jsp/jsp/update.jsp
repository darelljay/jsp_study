<%@page import="java.sql.*"%>
<%@page import="DBPKG.DB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈쇼핑 회원 등록</title>
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
table{

}
tr{
width: 200px;
}
input[type=button]{
width: 50px;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<br>
<h2 align="center"> 홈쇼핑 회원 등록 </h2>
<br>
<form action="updateAction.jsp" method="post">
<table border="1" style="width: 650px;">
	<tr>
		<th>회원번호</th>
		<% 
		 request.setCharacterEncoding("UTF-8");
		 
		  String custno = request.getParameter("0");
		  String custname = request.getParameter("1");
		  String phone = request.getParameter("2");
		  String adress = request.getParameter("3");
		  String joindate = request.getParameter("4");
		  String grade = request.getParameter("5");
		  String city = request.getParameter("6");
		  
		
		%>
	<td><input type="text" name="custno"  value="<%= custno %>" readonly="readonly" /></td>
	</tr>
	<tr>
	<th>회원성명</th>
	<td><input type="text" class="input"  value="<%= custname %>" name="custname"/></td>
	</tr>
	<tr>
	<th>회원전화</th>
	<td><input type="text"  class="input"  value="<%= phone %>" name="phone"/></td>
	</tr>
	<tr>
	<th>회원주소</th>
	<td><input type="text"  class="input"  value="<%= adress %>"  name="adress"/></td>
	</tr>
	<tr>
	<th>가입일자</th>
	<td><input type="text" name="joindate" value="<%= joindate %>" readonly /></td>		
	</tr>
	<tr>
	<th>고객등급[A:VIP,B:일반,C:직원]</th>
	<td><input type="text"  class="input"  value="<%= grade %>" name="grade"/></td>
	</tr>
	<tr>
	<th>도시코드</th>
	<td><input type="number"  class="input" value="<%= city %>" name="city"/></td>
	</tr>
	<tr>
	<td colspan="2" align="center"><input type="button" value="수정"/> <input type="button" value="조회"/></td>
	</tr>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript" src="../js/updateAction.js"></script>
</body>
</html>