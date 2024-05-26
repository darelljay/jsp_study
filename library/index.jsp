<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
margin: 0;
padding: 0;
}
section{
width: 100%;
height: 100%;
position: fixed;
left: 0;
top: 90px;
}
ol{
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
	<p>독서실 회원정보와 출석정보 데이터베이스를 구축하고 독서실 회원관리 프로그램을 작성하는 프로그램이다.</p>
	<P>프로그램 순서</P>
	<ol>
	<li>회원정보 테이블을 생성한다.</li>
	<li>출석정보 테이블을 생성한다.</li>
	<li>회원정보, 출석정보  테이블에 제시된 문제지의참조데이터를 추가 생성한다.</li>
	<li>회원정보 입력화면 프로그램을 자성한다.</li>
	<li>회원정보 조회 프로그램을 작성한다.</li>
	<li>출석정보 조회 프로그램을 작성한다.</li>
	</ol>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>