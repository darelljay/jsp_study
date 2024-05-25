<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 예약 프로그램</title>
<style type="text/css">
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
<br>
<br>
<h2 align="center">객실예약 프로그램</h2>
<br>
<p>본 과제는 객실예약 등록 및 현황조회 프로그램입니다.</p>
<p>메뉴는 객실예약등록 객실예약현황 홈으로가 존재합니다</p>
<p>객실예약등록 메뉴에서 등록한 내역을 객실현황 메뉴에서 확인할수 있습니다.</p>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>