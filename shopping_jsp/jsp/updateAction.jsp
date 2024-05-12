<%@page import="DBPKG.DB"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 request.setCharacterEncoding("UTF-8");
Connection conn = null;
PreparedStatement pstmt = null;

String custno = request.getParameter("custno");
String custname = request.getParameter("custname");
String phone = request.getParameter("phone");
String adress = request.getParameter("adress");
String joindate = request.getParameter("joindate");
String grade = request.getParameter("grade");
String city = request.getParameter("city");

String sql = "update member_tbl_02 set custno = ?,custname = ?,phone = ?,adress = ?,joindate = ?,grade = ?, city = ? where custno = ? ";

conn = DB.getConnection();
pstmt = conn.prepareStatement(sql);
pstmt.setInt(1, Integer.parseInt(custno));
pstmt.setString(2,custname);
pstmt.setString(3,phone);
pstmt.setString(4,adress);
pstmt.setString(5,joindate);
pstmt.setString(6,grade);
pstmt.setString(7,city);
pstmt.setInt(8, Integer.parseInt(custno));

pstmt.executeUpdate();

response.sendRedirect("search.jsp");


%>
</body>
</html>