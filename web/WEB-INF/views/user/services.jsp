<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Loanday Template">
    <meta name="keywords" content="Loanday, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Clean Home</title>

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
	<script src="${ pageContext.servletContext.contextPath }/resources/user/js/event.js"></script>	
<style>
	.btn_z {
		width: 120px;
		height: 40px;
		color: #fff;
		font_size: 16px;
		positon: absolute;
	}
	.cass {
		padding: 38px 0px 33px;
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
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                <div class="cass">
                <a href="${ pageContext.servletContext.contextPath }/main"><img src="${ pageContext.servletContext.contextPath }/resources/images/main/logo.png" alt=""></a>
                </div>
                    <div class="header__logo">
                        <a><br><br><br><img src=" ${ pageContext.servletContext.contextPath }/resources/user/img/user/infor.png" alt="pit"></a>  
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="header__nav">
                        <nav class="header__menu">
                            <ul>
                                <li><a href="${ pageContext.servletContext.contextPath }/user/clean/services">?????????</a></li>
                                <li><a href="#">??????????????????</a>
                                    <ul class="dropdown">
                                        <li><a href="${ pageContext.servletContext.contextPath }/user/board/notice?category=??????">????????????</a></li>
                                        <li><a href="${ pageContext.servletContext.contextPath }/user/board/notice?category=FAQ">FAQ</a></li>
                                        <li><a href="${ pageContext.servletContext.contextPath }/user/board/notice?category=PERSONAL">????????????</a></li>
                                    </ul>
                                </li>
                                <li><a href="./contact.html">MY</a>
                                    <ul class="dropdown">
                                        <li><a href="${ pageContext.servletContext.contextPath }/user/select/myRequest">????????????</a></li>
                                        <li><a href="${ pageContext.servletContext.contextPath }/user/select/myInfo">????????????</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                        <div class="header__top__language">
                            <c:if test="${ empty sessionScope.loginMember }">
                            <span><a href="${ pageContext.servletContext.contextPath }/member/login">?????????</a></span>
                            </c:if>
                            <c:if test="${ !empty sessionScope.loginMember }">
                            <h6><c:out value="${ sessionScope.loginMember.memName }"/>??? ??????</h6>
                            <span><a href="${ pageContext.servletContext.contextPath }/member/logout">????????????</a></span>
                            </c:if>
                        </div>
                        <div class= "reqs_rs" align="center"><br><br>
                        <h3 id="rses">??????  ???  ??????  ??????</h3><br>
                        <h3>?????????????????????????????????.</h3><br>
                        <p>??? ????????? ?????? ???????????? ????????? ?????? ??? ????????????. <br><br>
                      	  ?????????, ?????? ??? ????????? ?????? ??????????????????. ?????? ?????????<br>
                       	  ?????? ?????? ??? ????????? ????????? ?????????????????????.<br><br>
						??????????????? ?????? ?????? ??????????????? ????????????.</p></div>
                        
                    </div>
                    
                </div>
            </div>
            <div class="canvas__open">
                <span class="fa fa-bars"></span>
            </div>
        </div>
    </header><br><br><br><br><br>
    <!-- Header Section End -->


    <!-- Services Section Begin -->
    <section class="services spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="services__item">
                        <div class="services__item__img">
                            <img src="${ pageContext.servletContext.contextPath }/resources/user/img/user/roomClean.png" alt="">
                        </div>
                        <div class="services__item__text">
                            <h4><span>01.</span>?????????</h4>
                            <button id="popup" class="btn_z">???????????????</button>
                         
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="services__item">
                        <div class="services__item__img">
                            <img src="${ pageContext.servletContext.contextPath }/resources/user/img/user/bathroomClean.png" alt="">
                        </div>
                        <div class="services__item__text">
                            <h4><span>02.</span>????????? ??????</h4>
                             <button id="popup2" class="btn_z">???????????????</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="services__item">
                        <div class="services__item__img">
                            <img src="${ pageContext.servletContext.contextPath }/resources/user/img/user/allClean.png" alt="">
                        </div>
                        <div class="services__item__text">
                            <h4><span>03.</span>????????????</h4>
                             <button id="popup3" class="btn_z">???????????????</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="services__item">
                        <div class="services__item__img">
                            <img src="${ pageContext.servletContext.contextPath }/resources/user/img/user/washDish.png" alt="">
                        </div>
                        <div class="services__item__text">
                            <h4><span>04.</span>?????????</h4>
                             <button id="popup4" class="btn_z">???????????????</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="services__item">
                        <div class="services__item__img">
                            <img src="${ pageContext.servletContext.contextPath }/resources/user/img/user/windowClean.png" alt="">
                        </div>
                        <div class="services__item__text">
                            <h4><span>05.</span>????????????</h4>
                             <button id="popup5" class="btn_z">???????????????</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Services End -->


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
</body>

</html>