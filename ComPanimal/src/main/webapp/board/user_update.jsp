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
<title>회원정보 수정</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	
	
	<div class="container" align="center">
		<div class="form-signin">
			<form class="search rounded-4 p-5 mx-auto h-100"
				style="width: 650px;" action="${cpath }/user_update.do"
				method="post" enctype="multipart/form-data">
				<input type="hidden" class="form-control" name="user_id"
					value="${uvo.user_id }"> <a class="logo"
					href="${cpath }/mainpage.do"> <img class="mx-5"
					src="${cpath }/images/logo.png" alt="로고" width="80%"></a> <br>
				<div class="title">
					<p class="text-center m-0">회원정보 수정</p>
				</div>
				<br> <br>
				<table>
					<tr>
						<td>이름:</td>
						<td>${uvo.user_name }</td>
					</tr>
					<tr>
						<td>아이디:</td>
						<td>${uvo.user_id }</td>
					</tr>
					<tr>
						<td>비밀번호:</td>
						<td><input type="text" class="form-control" name="user_pw"
							value="${uvo.user_pw }"></td>
					</tr>
					<tr>
						<td>주소:</td>
						<td><input type="text" class="form-control" name="user_addr"
							value="${uvo.user_addr }"></td>
					</tr>
					<tr>
						<td>생년월일:</td>
						<td><input type="text" class="form-control" name="user_birth"
							value="${uvo.user_birth }"></td>
					</tr>
					<tr>
						<td>전화번호:</td>
						<td><input type="text" class="form-control" name="user_tel"
							value="${uvo.user_tel }"></td>
					</tr>
					
					<tr><td>분실시연락처<br>공 개&nbsp 여 부</td>					
						<!-- radioBox -->
						<div>			
						<c:if test="${uvo.user_type eq '1'}">
						 <td>
						 <font color="red">공개 </font>
						 <input class="form-check-input" type="radio" name="user_type" value="1" checked='checked' style="height:16px;">
						 <font color="blue"> 비공개</font> 
						 <input class="form-check-input" type="radio" name="user_type" value="2" style="height:16px;">
						 </td></tr>
						 </c:if>
						 
						 <c:if test="${uvo.user_type eq '2'}">
						 <td>
						 <font color="red">공개</font> 
						 <input class="form-check-input" type="radio" name="user_type" value="1" style="height:16px;">
						 <font color="blue">비공개</font> 
						 <input class="form-check-input" type="radio" name="user_type" value="2" checked='checked' style="height:16px;">
						 </td></tr>
						 </c:if>						 
						</div>
					
					</table>
					<hr>
					<c:set var="i" value="0" />
					<c:forEach var="pvo" items="${plist }">
						<table>
						<tr>
							<td>강아지 이름 </td>
							<td>${pvo.dognm }</td>
						</tr>

						<tr>
							<td>QR 코드 </td>
							<td><img src="${pvo.pet_QR }" width="150px" height="150px"></td>
						</tr>

						<tr>
							<td>강아지 사진 </td>
							<td><img src="${cpath}/img/${pvo.pet_img}" width="150px"
								height="150px"><br> <input class="form-control"
								type="file" name="pet_img_${i }" required></td>
						</tr>

						<tr>
							<td>등 록 번 호</td>
							<td><input type="text" class="form-control"
								name="pet_regno_${i }" value="${pvo.pet_regno }" readonly></td>
						</tr>
						<input type="hidden" class="form-control" name="i_cnt"
							value="${i}" />
							
						<tr><td>현재 상태</td>
						<!-- radioBox -->
						<div>			
						<c:if test="${pvo.pet_sta eq '1'}">
						 <td>
						 보유중 
						 <input class="form-check-input" type="radio" name="pet_sta_${i }" value="1" checked='checked' style="height:16px;">
						 분실중 
						 <input class="form-check-input" type="radio" name="pet_sta_${i }" value="2" style="height:16px;">
						 </td></tr>
						 </c:if>
						 
						 <c:if test="${pvo.pet_sta eq '2'}">
						 <td>
						 보유중 
						 <input class="form-check-input" type="radio" name="pet_sta_${i }" id="pet_sta_${i }" value="1" style="height:16px;">
						 분실중 
						 <input class="form-check-input" type="radio" name="pet_sta_${i }" id="pet_sta_${i }" value="2" checked='checked' style="height:16px;">
						 </td></tr>
						 </c:if>						 
						</div>
					<!-- 상태 정보 텍스트박스
					<td>					
					<input type="text" class="form-control" name="pet_sta_${i }" value="${pvo.pet_sta }"/></td>			
					
					 -->
					</tr>
						</table>
						<hr>
						<c:set var="i" value="${i+1}" />
					</c:forEach>
				<button class="w-100 btn btn-lg btn-primary mb-4" type="submit">Update
					in</button>
			</form>
		</div>
	</div>
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
	<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
		alert('회원 정보 수정시 다시 로그인 합니다');
	});
</script>
</body>
</html>