<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
 	<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/common/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/common/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/common/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/common/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/common/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/common/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/common/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/common/css/slicknav.min.css" type="text/css"> 
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/common/css/style.css" type="text/css"> 
    <style>
    	.blog__item__text {
	padding: 20px 20px 20px 20px;
	margin : 20px 20px 20px 20px;
}
	.selectbtn {
		font-size: 10px;
		padding: 10px 10px 10px 10px;
		color: #ffffff;

		background: #20df29;
		border-radius: 1px;
		border-color: #ffff00;
	}
    </style>
</head>

<body>
   

    <!-- 네비 -->
	<jsp:include page="../cleaner/cleanermenubar.jsp"/>

    

    <!-- Blog Section Begin -->
    <section class="blog spad">
    
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-7">	
                    <div class="blog__item">
                    <c:forEach var="request" items="${ requestScope.requestList }" varStatus="status">
                        <div style="height: auto; width: 80%; border:3px solid yellowgreen;" class="blog__item__text" id="request${status.count}">
                        	<input type="hidden" name="reqNo" id="reqNo" value="${ request.reqNo }"/>
                        	<input type="hidden" name="reqStatus" id="reqStatus" value="${ request.reqStatus }"/>
                        	<input type="hidden" name="reqDate" id="reqDate" value=<fmt:formatDate value="${ request.reqDate }" type="date" pattern="yyyy-MM-dd(E)hh시"/>>
                        	<c:set var="address" value="${ request.address.address }"/>
                        	<c:set var="address1" value="${ fn:substring(address, fn:indexOf(address,'$') + 1, 30) }"/>
                        	<c:set var="address2" value="${ fn:substring(address1, 0, fn:indexOf(address1,'$')) }"/>
                            <h3><c:out value="${ address2 }"/></h3>
                            <ul>
                                <li><i class="fa fa-clock-o"></i> <fmt:formatDate value="${ request.reqDate }" type="date" pattern="yyyy/MM/dd(E) hh시"/></li>
                                <li>  
                                	<c:set var="sumPrice" value="0"/>
                                	<c:set var="sumTime" value="0"/>
                                	<i class="fa fa-user"></i> 
                                	<c:forEach var="product" items="${ request.productList }">             		
                                		<c:out value="${ product.serName } "/><c:set var="price" value="${ product.serPrice }"/>
                                		<c:set var="sumPrice" value="${ sumPrice + product.serPrice }"/>
                                		<c:set var="sumTime" value="${ sumTime + product.serTime }"/>
                                	</c:forEach>
                                </li>
                            </ul>
                                                            예상소요시간 :<c:out value="${ sumTime }"/> 시간<br>
                                                              합계 가격 : <c:out value="${ sumPrice }"/> 원
                            <button style="float: right;" class="selectbtn" id="ok">선택하기 </button>
                        	
                        </div>
                        </c:forEach>
                    </div>
                    
                    
                    <div class="blog__pagination">
                        	<jsp:include page="../common/paging.jsp"/>
                    </div>
                </div>
                <div class="col-lg-4 col-md-5">
                    <div class="blog__sidebar">
                    <form action="${ pageContext.servletContext.contextPath }/cleaner/request/enroll" method="get">
                        <div class="blog__sidebar__search">
                            <h5>Search</h5>
                           	<input type="date" id="searchDate" name="searchDate" class="fa fa-search" placeholder="날짜 선택">
                           	<input type="text" id="searchValue" name="searchValue"/>   
                           	<button type="submit">검색</button>  	   
                        </div>
                        </form>
                        <h3>지도</h3>	
                        <div class="blog__sidebar__categories" id="map" style="width:300px;height:250px;">
                            
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog End -->

    <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="./index.html"><img src="img/footer-logo.png" alt=""></a>
                        </div>
                        <p>Please remember though that how far you go is up to you. There is no substitute for your own
                            work and effort in succeeding in this business.</p>
                    </div>
                </div>
                <div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h5>Services</h5>
                        <div class="footer__widget">
                            <ul>
                                <li><a href="#">Personal Loans</a></li>
                                <li><a href="#">Business Loans</a></li>
                                <li><a href="#">Online Cash Loans</a></li>
                                <li><a href="#">Cash Advance</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h5>Socials</h5>
                        <div class="footer__widget footer__widget--social">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i> Facebook</a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i> Instagram</a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i> Twitter</a></li>
                                <li><a href="#"><i class="fa fa-skype"></i> Skype</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1 col-md-6 col-sm-6">
                    <div class="footer__widget footer__widget--address">
                        <h5>Open Hours</h5>
                        <p>We work all days a week, Please contact us for any inquiry.</p>
                        <ul>
                            <li>Monday - Friday: 11:00 am - 8:00 pm</li>
                            <li>Saturday: 10:00 am - 6:00 pm</li>
                            <li>Sunday: 11:00 am - 6:00 pm</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer__copyright">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <ul class="footer__copyright__links">
                            <li><a href="#">Terms of use</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Community</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <div class="footer__copyright__text">
                            <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
                        </div>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Search Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch">+</div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search End -->

    <!-- Js Plugins -->
    <script src="${ pageContext.servletContext.contextPath }/resources/common/js/jquery-3.3.1.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/common/js/bootstrap.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/common/js/jquery.nice-select.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/common/js/jquery-ui.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/common/js/jquery.nicescroll.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/common/js/jquery.magnific-popup.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/common/js/jquery.slicknav.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/common/js/owl.carousel.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/common/js/main.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=572342b1ef19fad40c1a5ac213542717&libraries=services"></script>
	<script>
		window.onload = function() {
		
			$("body").on("click", "[id^=request]", function(){ 

				var address = $(this).children("h3").text();
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				mapOption = {
				    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
				    level: 3 // 지도의 확대 레벨
			    };  
	
				// 지도를 생성합니다    
				var map = new kakao.maps.Map(mapContainer, mapOption); 
	
				// 주소-좌표 변환 객체를 생성합니다
				var geocoder = new kakao.maps.services.Geocoder();
	
				// 주소로 좌표를 검색합니다
				geocoder.addressSearch(address, function(result, status) {
	
				    // 정상적으로 검색이 완료됐으면 
				    if (status === kakao.maps.services.Status.OK) {
							
				    	var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	
				    	// 결과값으로 받은 위치를 마커로 표시합니다
				    	var marker = new kakao.maps.Marker({
				    	    map: map,
				    	    position: coords
				    	});
	
				      	// 인포윈도우로 장소에 대한 설명을 표시합니다
				       	var infowindow = new kakao.maps.InfoWindow({
				      	content: '<div style="width:150px;text-align:center;padding:6px 0;">의뢰 장소</div>'
				        });
				        infowindow.open(map, marker);
	
				        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
				        map.setCenter(coords);
				    } 
				});  
			 
			});		
			
			$("body").on("click", "[id^=ok]", function() {
				
				const no = this.parentNode.children[0].value;
				const status = this.parentNode.children[1].value;
				const reqDate = this.parentNode.children[2].value;
				
				
      			console.log(status);
      			console.log(reqDate)
      			
      			msg = "정말 선택 하시겠습니까?";      			
		        if (confirm(msg) == true) {	
		        	
		        	$.ajax({
	    				url : "${pageContext.request.contextPath}/cleaner/request/accept/check",
	    				type : 'get',
	    				data : {
	    					date : reqDate
	    				},
	    				success : function(data) {
	    					console.log(data);							
	    					
	    					if (data == 1) {
	    							alert("선택할 수 없습니다. 시간 간격이 최소 6시간입니다.")
	    							return false;
	    						} else {
	    							location.href = "${ pageContext.servletContext.contextPath }/cleaner/request/accept?no=" + no + "&status=" + status;
	    						}
	    					}, 
	    				error : function() {
	    						return
	    						console.log("실패");
	    				}
	    			});
		        	
		        } else {
		           	return
		        }
		        
      			
		        
			
			});
	
	}
	
	</script>
</body>

</html>