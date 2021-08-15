<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="description" content="Loanday Template">
    <meta name="keywords" content="Loanday, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Loanday | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/user/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/user/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/user/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/user/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/user/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/user/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/user/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/user/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/user/css/style.css" type="text/css">
    
     <!-- Js Plugins -->
    <script src="${ pageContext.servletContext.contextPath }/resources/user/js/jquery-3.3.1.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/user/js/bootstrap.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/user/js/jquery.nice-select.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/user/js/jquery-ui.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/user/js/jquery.nicescroll.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/user/js/jquery.magnific-popup.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/user/js/jquery.slicknav.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/user/js/owl.carousel.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/user/js/main.js"></script>
<style>
	header {
 		height: 173.31px;
 	}
	
 	section {
 		height: calc(100% - 173.31px);
 		padding-top: 100px;
 	}
 	.nav-container {
 		width: 100%;
 		height: 100px;
 		display: flex;
 		justify-content: center;	/*수평 정렬*/
 		align-items: flex-start;		/*수직 정렬*/	
 		margin-bottom: 30px;
 	}
 	.nav-req-btn {
		width: 260px;
		height: 70px;
		font-size: 30px;
		border: 3px solid yellowgreen;
		background: white;
		text-align: center;
	}
	.nav-req-btn:nth-child(1) {
		color: white;
		background-color: yellowgreen;
	}
	
 	.req-list-container {
 		width: 100%;
 		height: calc(100% - 130px);
 		display: flex;
 		justify-content: center;
 	}
 	.containerp-list {
 		width: 1000px;
 		height: 100%;
 	}
	.containerp {
		border: 2px solid darkgray;
		border-radius: 20px;
		width: 100%;
		height: 300px;
		margin-bottom: 10px;
	}
	.containerp-top {
		width: 100%;
		height: 20%;
	}
	.containerp-top > div {
		height: 100%;
		display: flex;
		align-items: flex-end;
	}
	.containerp-top > div:nth-child(1) {
		width: 70%;
		float: left;
		padding-left: 25px;
		font-size: 25px;
	}
	.containerp-top > div:nth-child(2) {
		width: 30%;
		float: right;
		justify-content: flex-end;
		padding-right: 10px;
		font-weight: bold;
		font-size: 20px;
	}
	.containerp-section {
		width: 100%;
		height: 63%;
		display: flex;
		justify-content: center;
		align-items: flex-start;
	}
	.containerp-section > div {
		width: 50%;
		height: 100%;
		font-size: 20px;
		padding-top: 20px;
	}
	.containerp-section > div:nth-child(1) {
		width: 25%;
		padding-left: 30px;
		font-weight: bold;
	}
	.containerp-section > div:nth-child(2) {
		width: 75%;
	}
	
	.containerp-bottom {
		width: 100%;
		height: 17%;
		display: flex;
		justify-content: flex-end;
		align-items: center;
		padding-right: 10px;
	}
	.req-work-btn {
		width: 120px;
		height: 30px;
		margin-right: 10px;
	}
	
	.blog__item__text {
		align:center;
	}
	.nav-container p-3 my-3 border {
		height: 500px;
	}
	.blog__item__text {
		width:1110px;
	}
</style>
</head>

<body>
	<header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9">
                    </div>
                    <div class="col-lg-3">
                        <div class="header__top__language">
                            <c:if test="${ empty sessionScope.loginMember }">
                            <span><a href="${ pageContext.servletContext.contextPath }/member/login"></a>로그인</span>
                            </c:if>
                            <c:if test="${ !empty sessionScope.loginMember }">
                            <h6><c:out value="${ sessionScope.loginMember.memName }"/>님 접속</h3>
                            <span><a href="${ pageContext.servletContext.contextPath }/member/logout"></a>로그아웃</span>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     </header>
     <!-- Header Section End -->
    
    <!-- Section Section Start -->
	<section class="blog">
		<div class="nav-container">
			<input type="button" class="nav-req-btn" id="btn1" value="전체" > 
			<input type="button" class="nav-req-btn" id="btn2" value="매칭신청" > 
			<input type="button" class="nav-req-btn" id="btn3" value="매칭완료" > 
			<input type="button" class="nav-req-btn" id="btn4" value="종료된의뢰"> 
		</div>
		<div class="req-list-container">
			<div class="containerp-list">

			<c:forEach items="${ requestScope.myRegistRequest }" var="myRegistReq">
				<div class="containerp">
					<div class="containerp-top">
						<div> <c:out value="${ myRegistReq.reqDate }"/> <c:out value="${ myRegistReq.reqStatus }"/> </div>
						<div class="req_detail">
							<a href="">의뢰상세보기 ></a>
						</div>
					</div>
				<c:forEach items="${ myRegistReq.productList }" var="product">
					<div class="containerp-section">
						<div class="req-name-container">
							<div>상품명 : </div>
							<div>가격 : </div>
							<div>전화번호 : </div>
						</div>
						<div class="req-object-container">
							<div> <c:out value="${ product.serName }"/></div>
							<div> <c:out value="${ product.serPrice }"/></div>
							<div> <c:out value="${ myAllReq.phone.phone }"/></div>
						</div>
					</div>
				</c:forEach>
					<div class="containerp-bottom">
						<button class="req-work-btn req-revise-btn">수정하기</button>
						<button class="req-work-btn req-report-btn">신고하기</button>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</section>
    <!-- Search End -->
</body>

     <script>
     
     
     if(document.getElementById("btn1")) {
		 const $registRequest = document.getElementById("btn1");
		 $registRequest.onclick = function() {
			 location.href = "/pitcrew/user/select/myRequest";
		 }
     }
     
     if(document.getElementById("btn3")) {
         const $endRegistRequest = document.getElementById("btn3");
    	 $endRegistRequest.onclick = function() {
			 location.href = "/pitcrew/user/end/regist/request";
		 }
     } 

     if(document.getElementById("btn4")) {
    	 const $endRequest = document.getElementById("btn4");
    	 $endRequest.onclick = function() {
			 location.href = "/pitcrew/user/end/request";
		 }
     } 
     
     </script>
     
     
</body>
</html>