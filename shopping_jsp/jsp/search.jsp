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
td:hover{
	cursor: pointer;
}
</style>
</head>
<body>
 <jsp:include page="header.jsp"></jsp:include>
 <section>
 <br>
 <h2 align="center">회원 매출조회</h2>
 <br>
 <form action="update.jsp" method="get">
 <table border="1" style="width: 740px;">
 <tr>
 <th align="center" >회원번호</th>
 <th align="center">회원성명</th>
 <th align="center">전화번호</th>
 <th align="center">주소</th>
 <th align="center">가입날짜</th>
 <th align="center">고객등급</th> 
 <th align="center">도시코드</th> 
 </tr>
 <%
 	String sql = "SELECT custno,custname,phone,adress,TO_CHAR(joindate,'yyyy-mm-dd'),grade,city from member_tbl_02";
 	ResultSet rs = DB.getRs(sql);
 	
 	while(rs.next()){
 		int i = 1;
 		String j = Integer.toString(i)+"st";
 %>
 	
 	<tr>
 	<td class="<%=j%>" align="center"><%= rs.getInt(1) %></td>
 	<td class="<%=j%>" align="center"><%= rs.getString(2) %></td>
 	<td class="<%=j%>" align="center"><%= rs.getString(3) %></td>
 	<td class="<%=j%>" align="center"><%= rs.getString(4) %></td>
 	<td class="<%=j%>" align="center"><%= rs.getString(5) %></td>
 	<td class="<%=j%>" align="center"><%= rs.getString(6) %></td>
 	<td class="<%=j%>" align="center"><%= rs.getString(7) %></td>
 	</tr>
 	<%i++; %>
 <%} %>
 </table>
  </form>
 </section>
 <jsp:include page="footer.jsp"></jsp:include>
 <script type="text/javascript" src='../js/update.js'></script>
</body>
</html>