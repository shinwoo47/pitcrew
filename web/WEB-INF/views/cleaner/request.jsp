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
    <title>Clean Home</title>
	
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
   

    <!-- ?????? -->
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
                        	<input type="hidden" name="reqDate" id="reqDate" value=<fmt:formatDate value="${ request.reqDate }" type="date" pattern="yyyy-MM-dd(E)hh???"/>>
                        	<c:set var="address" value="${ request.address.address }"/>
                        	<c:set var="address1" value="${ fn:substring(address, fn:indexOf(address,'$') + 1, 30) }"/>
                        	<c:set var="address2" value="${ fn:substring(address1, 0, fn:indexOf(address1,'$')) }"/>
                            <h3><c:out value="${ address2 }"/></h3>
                            <ul>
                                <li><i class="fa fa-clock-o"></i> <fmt:formatDate value="${ request.reqDate }" type="date" pattern="yyyy/MM/dd(E) hh???"/></li>
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
                                                            ?????????????????? :<c:out value="${ sumTime }"/> ??????<br>
                                                              ?????? ?????? : <c:out value="${ sumPrice }"/> ???
                            <button style="float: right;" class="selectbtn" id="ok">???????????? </button>
                        	
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
                           	<input type="date" id="searchDate" name="searchDate" class="fa fa-search" placeholder="?????? ??????">
                           	<input type="text" id="searchValue" name="searchValue" placeholder="?????? ??????"/>
                           	<button type="submit">??????</button>  	   
                        </div>
                        </form>
                        <h3>??????</h3>	
                        <div class="blog__sidebar__categories" id="map" style="width:300px;height:250px;">
                            
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog End -->

    <jsp:include page="../cleaner/footer.jsp"/>

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
				var mapContainer = document.getElementById('map'), // ????????? ????????? div 
				mapOption = {
				    center: new kakao.maps.LatLng(33.450701, 126.570667), // ????????? ????????????
				    level: 3 // ????????? ?????? ??????
			    };  
	
				// ????????? ???????????????    
				var map = new kakao.maps.Map(mapContainer, mapOption); 
	
				// ??????-?????? ?????? ????????? ???????????????
				var geocoder = new kakao.maps.services.Geocoder();
	
				// ????????? ????????? ???????????????
				geocoder.addressSearch(address, function(result, status) {
	
				    // ??????????????? ????????? ??????????????? 
				    if (status === kakao.maps.services.Status.OK) {
							
				    	var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	
				    	// ??????????????? ?????? ????????? ????????? ???????????????
				    	var marker = new kakao.maps.Marker({
				    	    map: map,
				    	    position: coords
				    	});
	
				      	// ?????????????????? ????????? ?????? ????????? ???????????????
				       	var infowindow = new kakao.maps.InfoWindow({
				      	content: '<div style="width:150px;text-align:center;padding:6px 0;">?????? ??????</div>'
				        });
				        infowindow.open(map, marker);
	
				        // ????????? ????????? ??????????????? ?????? ????????? ??????????????????
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
      			
      			msg = "?????? ?????? ???????????????????";      			
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
	    							alert("????????? ??? ????????????. ?????? ????????? ?????? 6???????????????.")
	    							return false;
	    						} else {
	    							location.href = "${ pageContext.servletContext.contextPath }/cleaner/request/accept?no=" + no + "&status=" + status;
	    						}
	    					}, 
	    				error : function() {
	    						return
	    						console.log("??????");
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