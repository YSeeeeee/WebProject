<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="./template.css">
<title>회원가입 화면</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link rel="stylesheet" href="./template.css">
<title>회원가입 화면</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">



<style>
/*  배경색 */
body {
	min-height: 100vh;
	background: -webkit-gradient(linear, left bottom, right top, from(red),
		to(red));
	background: -webkit-linear-gradient(bottom left, red, red);
	background: -moz-linear-gradient(bottom left, red, red);
	background: -o-linear-gradient(bottom left, red, red);
	background: linear-gradient(to top right, red, red);
}

.input-form {
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


</head>
<header>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary ">
		<div class="container-fluid">
			<a class="navbar-brand " href="#"> <img
				src="https://img.insight.co.kr/static/2018/11/05/700/888208025o428h6408hs.jpg"
				alt="" width="30" height="24" class="d-inline-block align-text-top">
				CompAnimal Home
			</a>
			<div class="collapse navbar-collapse" id="navbarText">
				<ul class="nav nav-pills nav-fill">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">CompAnimal 소개</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">동물 정보 조회</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">동물 정보 등록</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">게시판</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">찾아주세요</a></li>
					<button type="button" class="btn btn-info">로그인</button>
					<button type="button" class="btn btn-info">회원가입</button>
				</ul>
			</div>
		</div>
	</nav>
</header>
<body>
	<div class="input-form col-md-12 mx-auto">
		<form class="validation-form" novalidate>

			<div class="container">
				<div class="input-form-backgroud row">
					<div class="input-form col-md-12 mx-auto">
						<h4 class="mb-3">회원가입</h4>
						<form class="validation-form" novalidate>
							<div class="row">
								<div class="col-md-6 mb-3">
									<label for="name">이름</label> <input type="text"
										class="form-control" id="name" placeholder="" value=""
										required>
									<div class="invalid-feedback">이름을 입력해주세요.</div>
								</div>
							</div>

							<div class="mb-3">
								<label for="phnum">전화번호</label> <input type="number"
									class="form-control" id="phnum" placeholder="01012345678"
									required>
								<div class="invalid-feedback">전화번호를 입력해주세요.</div>
							</div>



							<div class="mb-3">
								<label for="email">생년월일</label> <input type="birth"
									class="form-control" id="email" placeholder="220913" required>
								<div class="invalid-feedback">생년월일을 입력해주세요.</div>
							</div>


							<div class="mb-3">
								<label for="address">주소</label> <input type="text"
									class="form-control" id="address" placeholder="광주광역시 대웅동"
									required>
								<div class="invalid-feedback">주소를 입력해주세요.</div>
							</div>

							<div class="mb-3">
								<label for="address2">상세주소<span class="text-muted">&nbsp;(필수
										아님)</span></label> <input type="text" class="form-control" id="address2"
									placeholder="상세주소를 입력해주세요.">
							</div>


							<hr class="mb-4">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input"
									id="aggrement" required> <label
									class="custom-control-label" for="aggrement">개인정보 수집 및
									이용에 동의합니다.</label>
							</div>
							<div class="mb-4"></div>
							<button class="btn btn-primary btn-lg btn-block" type="submit">가입
								완료</button>
						</form>
					</div>
				</div>
			</div>
			<script>
    window.addEventListener('load', () => {
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
    }, false);
    


  		</script>
	</div>
</body>
<footer>
	<div class="container">
    <p class="float-end mb-1">
      <a href="#">Back to top</a>
    </p>
    <p class="mb-1">Album example is &copy; Bootstrap, but please download and customize it for yourself!</p>
    <p class="mb-0">New to Bootstrap? <a href="/">Visit the homepage</a> or read our <a href="/docs/5.1/getting-started/introduction/">getting started guide</a>.</p>
  </div>
</footer>
</html>