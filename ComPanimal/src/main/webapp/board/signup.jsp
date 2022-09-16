<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>회원가입</title>
<style>
/*  배경색 */
body {
	background-color: #fff;
}

.input-form {
	max-width: 500px;
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
<link rel="stylesheet" href="${cpath }/board/basic.css">
</head>
<body>
	<header>
		<!-- 여기서 헤드바 컬러수정 -->
		<!-- <nav class="navbar navbar-expand-lg navbar-dark bg-light  "> -->
		<nav class="navbar">
			<!-- 로고 -->
			<a class="logo" href="${cpath }/mainpage.do"> <img
				src="${cpath }/images/logo.png" alt="" width="380px"
				class="d-inline-block align-text-top">
			</a>
			<!-- 네비 -->
			<!-- <div class="collapse navbar-collapse" id="navbarText"> -->
			<div id="navbarText">
				<!-- 여기서 nav수정 컬러수정 -->
				<!-- <ul class="nav nav-pills nav-fill"> -->
				<ul class="nav">
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="${cpath }/companimal.do">CompAnimal
							소개</a></li>
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="${cpath }/searchform.do">동물 정보 조회</a></li>
					<li class="nav-item"><a class="nav-link active  text-dark"
						aria-current="page" href="${cpath }/checkform.do">동물 정보 등록</a></li>
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="${cpath }/boardform.do">게시판</a></li>
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="${cpath }/findboardform.do">찾아주세요</a></li>
				</ul>
				<!-- 버튼 -->
				<ul id="btn-basic">
					<li><button type="button" class="btn btn-dark"
							onclick="location.href='${cpath }/signinform.do'">로그인</button></li>
					<li><button type="button" class="btn btn-dark"
							onclick="location.href='${cpath }/signupform.do'">회원가입</button></li>
				</ul>
			</div>
		</nav>
	</header>
	<main id="wrap">
		<!-- <div class="input-form col-md-12 mx-auto"> -->
		<div class="container"></div>
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<br>
				<!--사진 크기조절  -->
				<div style="text-align: center";>
					<img alt="erorr" src="${cpath }/images/logo.png" width="320">
				</div>
				<br> <br>
				<form class="validation-form" action="${cpath}/signup.do"
					method="get">
					<div class="row">
						<div class="mb-3">
							<label for="id">ID</label> <input type="text"
								class="form-control" name="user_id" placeholder="" required>
							<div class="invalid-feedback">아이디를 입력해주세요.</div>
						</div>
						<div class="mb-3">
							<label for="pw">비밀번호</label> <input type="text"
								class="form-control" name="user_pw"
								placeholder="8~16자 영문 소문자, 숫자를 사용하세요." required>
							<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="name">이름</label> <input type="text"
								class="form-control" name="user_name" placeholder="" value=""
								required>
							<div class="invalid-feedback">이름을 입력해주세요.</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="birth">생년월일</label> <input type="text"
								class="form-control" name="user_birth" placeholder="220913"
								value="" required>
							<div class="invalid-feedback">생년월일을 입력해주세요.</div>
						</div>
						<div class="mb-3">
							<label for="phnum">전화번호</label> <input type="text"
								class="form-control" name="user_tel" placeholder="01012345678"
								required>
							<div class="invalid-feedback">전화번호를 입력해주세요.</div>
						</div>
						<div class="mb-3">
							<label for="address">주소</label> <input type="text"
								class="form-control" name="user_addr" placeholder="광주광역시 대웅동"
								required>
							<div class="invalid-feedback">주소를 입력해주세요.</div>
						</div>
					</div>
					<hr class="mb-4">
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="aggrement"
							required> <label class="custom-control-label"
							for="aggrement">개인정보 수집 및 이용에 동의합니다</label>
					</div>
					<div class="mb-4"></div>
					<button class="btn-lg btn-block"
						style="background-color: #ff7530; border: none; color: white"
						type="submit">가입 하기</button>
				</form>
				<!-- 	</div> -->
			</div>
		</div>
		<script>window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');
      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }
          form.classList.add('was-validated');
        }, false);
      });
    }, false);</script>
	</main>
	<footer>
		<div class="container">
			<p class="float-end mb-1">
				<a href="#">Back to top</a>
			</p>
			<p class="mb-1">Album example is &copy; Bootstrap, but please
				download and customize it for yourself!</p>
			<p class="mb-0">
				New to Bootstrap? <a href="/">Visit the homepage</a> or read our <a
					href="/docs/5.1/getting-started/introduction/">getting started
					guide</a>.
			</p>
		</div>
	</footer>
</body>
</html>