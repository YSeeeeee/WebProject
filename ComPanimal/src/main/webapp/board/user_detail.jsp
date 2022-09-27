<%@page import="ca.board.dao.userVO"%>
<%@page import="ca.board.dao.ProjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!-- 테스트하는 중 이것부터 -->
<%!ProjectDAO dao = new ProjectDAO(); %>
<%!userVO vo = new userVO(); %>

<% String userid = request.getParameter("user_id");
   String userpw = request.getParameter("user_pw");
%>
<!-- 이것까지 -->
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>메인</title>
<link rel="stylesheet" href="${cpath }/css/bootstrap.css">
<link rel="stylesheet" href="${cpath }/css/bootstrap-grid.css">
<link rel="stylesheet" href="${cpath }/css/bootstrap-reboot.css">
<link rel="stylesheet" href="${cpath }/css/bootstrap-utilities.css">

<!-- 부트스트랩 아이콘 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<style>
/* 공통 style */
ul li {
	list-style: none;
	font-weight: 700;
}

a {
	text-decoration: none;
	color: #150906;
}

a:hover {
	color: orange;
	transition: background-color 0.5s;
}

.search {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
</style>



<title>로그인</title>

</head>
<body>
	<%@ include file="header.jsp" %>

	<div class="form-signin">
		<form class="search rounded-4 p-5 mx-auto h-100" style="width: 650px;"
			action="${cpath }/board/user_update.do">
			<a class="logo" href="${cpath }/mainpage.do"> <img class="mx-5"
				src="${cpath }/images/logo.png" alt="로고" width="80%">
			</a> <br> <br> <br>
			<table class="form-control">
				<tr>
					<td>이름 :</td>
					<td> ${uvo.user_name }</td>
				</tr>
				<tr>
					<td>아이디 :</td>
					<td>${uvo.user_id }</td>
					<td><input type = "checkbox" name = "check_update" value = 1></td>
				</tr>
				<tr>
					<td>비밀번호 :</td>
					<td>${uvo.user_pw }</td>
					<td><input type = "checkbox" name = "check_update" value = 2></td>
				</tr>
				<tr>
					<td>주소 :</td>
					<td>${uvo.user_addr}</td>
				</tr>
				<tr>
					<td>생년월일 :</td>
					<td>${uvo.user_birth}</td>
					<td><input type = "checkbox" name = "check_update" value = 3></td>
				</tr>
				<tr>
					<td>전화번호 :</td>
					<td>${uvo.user_tel}</td>
					<td><input type = "checkbox"  name = "check_update" value = 4></td>
				</tr>
				<tr>
					<td>가입일자 :</td>
					<td>${uvo.user_joindate}</td>
				</tr>
				<tr>
					<td>개인정보동의(동의:1 비동의:0) :</td>
					<td>${uvo.user_type}</td>
					<td><input type = "checkbox" name = "check_update" value = 5></td>
				</tr>
			</table>
			<!-- 임시적으로 전송 -->
			<input type = "submit" value = "제출">
			<button class="w-100 btn btn-lg btn-primary mb-4"
				onclick="location.href='${cpath }/mainpage.do'" type="button">확인</button>
			<button class="w-100 btn btn-lg btn-primary mb-4"
				onclick="location.href='${cpath }/user_updateform.do'" type="button">수정</button>
		</form>
	</div>



	<!-- footer -->
	<div class="container">
		<footer class="py-5" style="color:#555;">
			<div class="d-flex justify-content-between py-4 my-4 border-top">
				
				<div class="float-start pt-2 pe-5" style="border-right:1.4px solid; border-color:#DEE2E6;"><img src="${cpath }/images/black_symbol.jpg" alt="#" style="width:120px;"></div>
				
				<div class="col px-5 pt-3" style ="width: 300px;">
					<ul class="list-unstyled" style="color:#858789;">
						<li class="fw-bold"><h4>COMPANIMAL</h3></li>
						<li class="fw-normal">주소ㅣ광주 동구 예술길 31-15 3층</li>
						<li class="fw-normal">번호ㅣ062-123-4567</li>
						<li class="fw-normal">Copyright 2022. Companimal Co., Ltd. all Rights reserved.</li>
					</ul>
				</div>
				
				<div>
					<ul class="list-unstyled d-flex float-end mt-2" style="height:54px;">					
						<li class="btn btn-primary me-2"  onclick="location.href='https://twitter.com/?lang=ko'" style="width:56px; line-height:38px;"><i class="bi bi-twitter" style="font-size:1.3em"></i></li>					
						<li class="btn btn-primary me-2" onclick="location.href='https://www.instagram.com'" style="width:56px; line-height:38px;"><i class="bi bi-instagram" style="font-size:1.3em"></i></li>
						<a href="#"  title="Popover title" data-bs-content="Popover body content is set in this attribute.">
						<li class="btn btn-primary me-2" style="width:56px; line-height:38px;"><i class="bi bi-arrow-up-circle-fill" style="font-size:1.3em"></i></li>
						</a>
						
					
					</ul>
				</div>
				</div>				
			</footer>
		</div>
			<!-- footer end -->
</body>
</html>