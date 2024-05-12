<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰 회원관리 프로그램</title>
<style type="text/css">
section{
width: 100%;
height: 100%;
position: fixed; 
top: 100px;
left: 0;
}
ol{
paddingL 20px;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<br>
<p align="center">쇼핑몰 회원관리 프로그램</p>
<br>
<div>
쇼핑몰 회원정보와 회원매출정보 데이터베이스를 구축하고 회원관리 프로그램을 작성하는 프로그램이다.
프로그램 작성순서
<ol >
<li>1.회원정보 테이블을 생성한다.</li>
<li>2.매출정보 테이블을 생성한다.</li>
<li>3.회원정보 매출정보 테이블에 제시된 문제지의 참조데이터를 추가 생성한다.</li>
<li>4.회원정보 입력 화면프로그램을 작성한다.</li>
<li>5.회원정보 조회 프로그램을 작성한다.</li>
<li>6.회원매출정보 조회 프로그램을 작성한다.</li>
</ol>
</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>