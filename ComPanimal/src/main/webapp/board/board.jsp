<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html lang="ko">
<head>
<<<<<<< HEAD
<meta charset="EUC-KR">
<<<<<<< HEAD
<title>커뮤니티 게시판</title>
=======
<title>게시판</title>
>>>>>>> branch 'master' of https://github.com/ProjectsmhrdteamYS/Companimal.git
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<!-- 외부 CSS -->
<link rel="stylesheet" href="${cpath }/board/basic.css">
=======
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title>而ㅻ�ㅻ땲�떚 寃뚯떆�뙋</title>


   <link rel="stylesheet" href="${cpath }/css/bootstrap.css">
   <link rel="stylesheet" href="${cpath }/css/bootstrap-grid.css">
   <link rel="stylesheet" href="${cpath }/css/bootstrap-reboot.css">
   <link rel="stylesheet" href="${cpath }/css/bootstrap-utilities.css">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

>>>>>>> branch 'master' of https://github.com/ProjectsmhrdteamYS/Companimal.git
</head>
<body>
	<!-- header -->
    <header class=" container-fluid p-3 bg-white ">
        <div class="container p-3">
          <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start ">
            <a class="navbar-brand me-4" href="${cpath }/mainpage.do"  >
                <img src="${cpath }/images/logo.png" alt="" width="286" class="d-inline-block align-text-top ">
            </a>
    
            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
              
              <li><a href="${cpath }/companimal.do" class="nav-link px-3 link-dark">COMPANIMAL</a></li>
              <li><a href="${cpath }/searchform.do" class="nav-link px-3 link-dark">諛섎젮寃ъ“�쉶</a></li>
              <li><a href="${cpath }/checkform.do" class="nav-link px-3 link-dark">諛섎젮寃щ벑濡�</a></li>
              <li><a href="${cpath }/boardform.do" class="nav-link px-3 link-dark">寃뚯떆�뙋</a></li>
              <li><a href="${cpath }/findboardform.do" class="nav-link px-3 link-dark">李얠븘二쇱꽭�슂</a></li>
            </ul>
    
            <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-2">
              <input type="search" class="form-control form-control-dark" placeholder="Search..." aria-label="Search">
            </form>
    
            <div class="text-end">
              <button type="button" class="btn btn-outline-secondary me-1" onclick="location.href='${cpath }/signinform.do'">Login</button>
              <button type="button" class="btn btn-primary" onclick="location.href='${cpath }/signupform.do'">Sign-up</button>
            </div>
          </div>
        </div>
      </header>
      
	<main id="wrap" class="position-relative">
		<div class="container">
			<img src="${cpath }/images/mongja.jpg" alt="" width="380px"
				class="d-inline-block align-text-top">
			<h2>�씠�빞湲�</h2>
			<BR>
			<HR>
			<table class="table">
				<thead>
					<tr>
						<th scope="col">踰덊샇</th>
						<th scope="col">�젣紐�</th>
						<th scope="col">�궡�슜</th>
						<th scope="col">�옉�꽦�옄</th>
						<th scope="col">�옉�꽦�씪</th>
						<th scope="col">議고쉶�닔</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach begin="0" end="2">
						<tr>
							<th>1</th>
							<td><A CLASS="fw-bold text-dark"
								HREF="${cpath }/cdetailform.do">�삤�뒛�쓽 �씪湲�</A></td>
							<td>�씪湲곕궡�슜</td>
							<td>�꽑寃쎌＜</td>
							<td>20220914</td>
							<td>1</td>
						</tr>
					</c:forEach>
			</table>
		<p> </p>
		<div align="right">
			<button type="button" class="btn btn-primary"
				onclick="location.href='${cpath }/boardwriteform.do'">寃뚯떆臾�
				�옉�꽦</button>
		</div>
		</div>
	</main>
<footer class="py-5 " >


    <div class="d-flex justify-content-between py-4 my-4 border-top">
        
        <div class="row">
        <div class="col">
        <ul>
            <li>짤 2022 Company, Inc. All rights reserved.</li>
            <li>二쇱떇�쉶�궗 而댄뙣�땲硫� �뼱姨뚭뎄 ���姨뚭뎄</li>
            <li>洹몃옒�꽌 留뚮뱺�궗�엺 �뼱姨뚭뎄���姨뚭뎄</li>
        </ul>
    </div>
        
        <div class="col">
        <ul>
            <li>짤 2022 Company, Inc. All rights reserved.</li>
            <li>二쇱떇�쉶�궗 而댄뙣�땲硫� �뼱姨뚭뎄 ���姨뚭뎄</li>
            <li>洹몃옒�꽌 留뚮뱺�궗�엺 �뼱姨뚭뎄���姨뚭뎄</li>
        </ul>
    </div>
</div>
      

      <ul class="list-unstyled d-flex ">
        <li class="btn btn-primary py-4 me-2" >吏뱀㏏�씠</li>
        <li class="btn btn-outline-secondary py-4 me-2">�씤�꽌���</li>
        <li class="btn btn-primary py-4 me-2">�냽�냽�냽</li>
      </ul>


  </footer>
</body>

</html>