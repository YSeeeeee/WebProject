<%@page import="ca.board.dao.ProjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!-- 테스트하는 중 이것부터 -->
<%!ProjectDAO dao = new ProjectDAO();%>

<%
String userid = request.getParameter("user_id");
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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
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

/* 세부디자인 */
.title {
	margin: 0 auto;
	width: 443px;
	font-size: 30px;
	color: #FC9364;
	font-weight: 700;
	border: solid 1px #FC9364;
	border-radius: 28px;
	margin-top: 14px;
}
</style>



<title>로그인</title>

</head>
<body>
	<%@ include file="header.jsp"%>

	<div class="form-signin">
		--jk---------------------------------------------<br>
		<form class="search rounded-4 p-5 mx-auto h-100" style="width: 650px;"
			action="${cpath }/user_update2.do" enctype="multipart/form-data"
			method="post">
			<a class="logo" href="${cpath }/mainpage.do"> <img class="mx-5"
				src="${cpath }/images/logo.png" alt="로고" width="80%">
			</a>
			<div class="title">
				<p class="text-center m-0">회원정보 수정</p>
			</div>
			<br>
			<table class="form-control">
				<tr>
					<td>이 름</td>
					<td>${uvo.user_name }</td>
				</tr>
				<tr>
					<td>아 이 디</td>
					<td>${uvo.user_id }</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="text" name='user_pw' value="${uvo.user_pw }"
						class="form-control" /></td>

				</tr>
				<tr>
					<td>주 소</td>
					<td><input type="text" name='user_addr'
						value="${uvo.user_addr}" class="form-control" /></td>

				</tr>
				<tr>
					<td>생년월일</td>
					<td><input type="text" name='user_birth'
						value="${uvo.user_birth}" class="form-control" /></td>

				</tr>

				<tr>
					<td>전화 번호</td>
					<td><input type="text" name='user_tel' value="${uvo.user_tel}"
						class="form-control" /></td>

				</tr>
				<tr>
					<td>개인정보동의</td>
					<!-- radioBox -->
					<c:if test="${uvo.user_type eq '1'}">
						<td>공개 <input class="form-check-input" type="radio"
							name="user_type" value="1" checked='checked'
							style="height: 16px;"> 비공개 <input
							class="form-check-input" type="radio" name="user_type" value="2"
							style="height: 16px;">
						</td>
					</c:if>

					<c:if test="${uvo.user_type eq '2'}">
						<td>공개 <input class="form-check-input" type="radio"
							name="user_type" value="1" style="height: 16px;"> 비공개 <input
							class="form-check-input" type="radio" name="user_type" value="2"
							checked='checked' style="height: 16px;">
						</td>
					</c:if>
				</tr>
			</table>
			<!-- 동물정보 리스트 -->
			<br>
			<table class="form-control">
				<c:forEach var="pvo" items="${plist }">

					<tr>
						<td>동물 QR</td>
						<td><img src="${pvo.pet_QR }"></td>
					</tr>
					<tr>
						<td>동물 번호</td>
						<td>${pvo.pet_regno }</td>
					</tr>
					<tr>
						<td>동물 이름</td>
						<td>${pvo.dognm }</td>
					</tr>
					<tr>
						<td>동물 상태</td>
						<td>user_updateFrom 수정예정</td>
					</tr>
					<tr>
						<td>동물 사진</td>
						<td><img src="${pvo.pet_img }" width='150px' height='150px'><input
							type='file' name='pet_img' /></td>
					</tr>
					<tr>
						<td colspan=2><hr></td>
				</c:forEach>


			</table>
			<input type="hidden" class="form-control" id="floatingPassword"
				name="user_id" placeholder="addr" value="${uvo.user_id }">
			<button class="w-100 btn btn-lg btn-primary mb-4" type="submit">Update
				in</button>

			-----이하 연승----------------------------------
			<form class="search rounded-4 p-5 mx-auto h-100"
				style="width: 650px;" action="${cpath }/user_update.do">
				<a class="logo" href="${cpath }/mainpage.do"> <img class="mx-5"
					src="${cpath }/images/logo.png" alt="로고" width="80%">
				</a> <br>
				<div class="title">
					<p class="text-center m-0">회원정보 수정</p>
				</div>
				<br> <br>
				<p>id: ${uvo.user_id }</p>
				<p>${uvo.user_pw }</p>
				<p>${uvo.user_name }</p>
				-------------------------
				<c:forEach var="pvo" items="${plist }">
					<p>${pvo.dognm }</p>
					<p>${pvo.pet_regno }</p>
				</c:forEach>

				<div class="form-floating mb-2">
					<input type="password" class="form-control" id="floatingPassword"
						name="user_pw" placeholder="Password"> <label
						for="floatingPassword">비밀번호 수정</label>
				</div>
				<input type="hidden" class="form-control" id="floatingPassword"
					name="user_id" placeholder="addr" value="${uvo.user_id }">
				<button class="w-100 btn btn-lg btn-primary mb-4" type="submit">Update
					in</button>
			</form>
	</div>
	-----이상 연승	----------------------

	<!-- footer -->
	<div class="container">
		<footer class="py-5" style="color: #555;">
			<div class="d-flex justify-content-between py-4 my-4 border-top">

				<div class="float-start pt-2 pe-5"
					style="border-right: 1.4px solid; border-color: #DEE2E6;">
					<img src="${cpath }/images/black_symbol.jpg" alt="#"
						style="width: 120px;">
				</div>

				<div class="col px-5 pt-3" style="width: 300px;">
					<ul class="list-unstyled" style="color: #858789;">
						<li class="fw-bold"><h4>
								COMPANIMAL
								</h3></li>
						<li class="fw-normal">주소ㅣ광주 동구 예술길 31-15 3층</li>
						<li class="fw-normal">번호ㅣ062-123-4567</li>
						<li class="fw-normal">Copyright 2022. Companimal Co., Ltd.
							all Rights reserved.</li>
					</ul>
				</div>

				<div>
					<ul class="list-unstyled d-flex float-end mt-2"
						style="height: 54px;">
						<li class="btn btn-primary me-2"
							onclick="location.href='https://twitter.com/?lang=ko'"
							style="width: 56px; line-height: 38px;"><i
							class="bi bi-twitter" style="font-size: 1.3em"></i></li>
						<li class="btn btn-primary me-2"
							onclick="location.href='https://www.instagram.com'"
							style="width: 56px; line-height: 38px;"><i
							class="bi bi-instagram" style="font-size: 1.3em"></i></li>
						<a href="#" title="Popover title"
							data-bs-content="Popover body content is set in this attribute.">
							<li class="btn btn-primary me-2"
							style="width: 56px; line-height: 38px;"><i
								class="bi bi-arrow-up-circle-fill" style="font-size: 1.3em"></i></li>
						</a>


					</ul>
				</div>
			</div>
		</footer>
	</div>
	<!-- footer end -->
</body>
</html>