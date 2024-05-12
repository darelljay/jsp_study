<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
</head>
<body>
<style>
*{
margin: 0;
padding: 0;
text-decoration: none;
}

header{
width: 100%;
height: 50px;
line-height: 50px;
text-align: center;
color: #fff;
font-size: 30px;
background: blue;
font-weight: bold;
position: fixed;
top: 0;
left: 0;
}

nav{
width: 100%;
height: 40px;
line-height: 40px;
padding: 5px;
background: skyblue;
position: fixed;
top: 50px;
left: 0;
}
a{
color: #fff;
}
</style>
<header>
쇼핑몰 회원관리 ver 1.0
</header>
<nav>
<a href="register.jsp">회원등록</a> &nbsp;
<a href="search.jsp">회원목록조회/수정</a> &nbsp;
<a href="searchSales.jsp">회원매출조회</a> &nbsp;
<a href="index.jsp">홈으로</a>
</nav>
</body>
</html>