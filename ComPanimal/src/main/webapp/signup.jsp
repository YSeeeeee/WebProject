<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<<<<<<< HEAD
<link rel ="stylesheet" href="./template.css">
  <title>회원가입 화면 </title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
=======
<link rel="stylesheet" href="./template.css">
<title>회원가입 화면</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
>>>>>>> branch 'master' of https://github.com/ProjectsmhrdteamYS/Companimal.git


<style>
body {
	min-height: 100vh;
	background: -webkit-gradient(linear, left bottom, right top, from(#92b5db),
		to(#1d466c));
	background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
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


<body>
	<div id="wrap">
		<div id="header">
			<header id="headerType" class="header__wrap nexon">
				<div class="header__inner">
					<div class="header__logo">
						<a href="#">web <em>site</em></a>
					</div>
					<nav class="header__menu">
						<ul>
							<li><a href="#">헤더영역</a></li>
							<li><a href="#">슬라이드 영역</a></li>
							<li><a href="#">컨텐츠 영역</a></li>
							<li><a href="#">푸터 영역</a></li>
						</ul>
					</nav>
					<div class="header__member">
						<a href="#">로그인</a>
					</div>
				</div>
			</header>
		</div>
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
									<div class="col-md-6 mb-3">
										<label for="nickname">반려견 이름</label> <input type="text"
											class="form-control" id="nickname" placeholder="" value=""
											required>
										<div class="invalid-feedback">반려견 이름을 입력해주세요.</div>
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
										class="form-control" id="email" placeholder="220913"
										required>
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
					<footer class="my-3 text-center text-small"> </footer>
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

				<div id="footer">
					<footer id="footerType" class="footer__wrap section gmarket gray">
						<div class="footer__inner container">
							<address class="footer__right">어거 왜 안사라짐?</address>
						</div>
					</footer>
				</div>
		</div>
</body>
</html>