<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>\
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Loanday Template">
    <meta name="keywords" content="Loanday, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  
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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  	
  	<style>
	.blog__details__text {
	margin-bottom: 65px;
	border: 1px solid black;
	padding: 10px 10px 10px 10px;
	}
	.requestReq {
	margin-bottom: 20px;
	}
	.btn-detail {
	display: inline-block;
	margin: 30px 10px;
	}
	.picture {
	border: 1px solid #f6f6f6;
	}
	.picture label {
	 position:relative;
    cursor:pointer;
    display:inline-block;
    vertical-align:middle;
    overflow:hidden;
    width:100px;
    height:30px;
    background:#777;
    color:#fff;
    text-align:center;
    line-height:30px;
	}
	.picture label input{
    position:absolute;
    width:0;
    height:0;
    overflow:hidden;
	}
	.picture input[type=text] {
    vertical-align:middle;
    display:inline-block;
    width:400px;
    height:28px;
    line-height:28px;
    font-size:11px;
    padding:0;
    border:0;
    border:1px solid #777;
}
	.picture button[type=submit] {
	background-color: green;
	color: white;
	border: none;
	padding: 2px 5px;
	margin: 5px 5px;
}
	.report {
	background-color: red;
	color: white;
	border: none;

	}
	.complete {
	background-color: red;
	color: white;
	border: none;

	}

  	</style>
</head>

<body>
    
    <!-- ?????? -->
	<jsp:include page="../cleaner/cleanermenubar.jsp"/>

    

    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-8">
                    <div class="blog__details__title">
                        <div class="container">
							  <h2>?????? ?????? ??????</h2>
							  <p>*?????? ??????*</p>            
							  <table class="table table-hover">
							    <thead>
							      <tr>
							        <th>??????</th>
							        <th>??????</th>
							      </tr>
							    </thead>
							    <tbody>
							      <tr>
							        <td>??????</td>
							        <td>
							        	<c:set var="address" value="${ requestDetail.address.address }"/>
                        				<c:set var="address1" value="${ fn:substring(address, fn:indexOf(address,'$') + 1, 30) }"/>
                        				<c:set var="address2" value="${ fn:replace(address1, \"$\", \" \") }"/>
                        				<c:out value="${ address2 }"/>
                        			</td>
							      </tr>
							      <tr>
							        <td>?????????</td>
							        <td>${ requestDetail.phone.phone }</td>
							      </tr>
							      <tr>
							        <td>??????</td>
							        <td>${ requestDetail.reqDate }</td>
							      </tr>
							      <tr>
							      <tr>
							        <td>??????</td>
							        <td><c:set var="sum2" value="0"/>
							        	<c:forEach var="product" items="${ requestDetail.productList }">
                                		<input type=hidden value="${ product.serTime}"/>
                                		<c:set var="sum2" value="${ sum2 + product.serTime }"/>
                                		</c:forEach>
                                		<c:out value="${ sum2 }"/> ??????
                                	</td>
							      </tr>
							      <tr>
							        <td>????????????</td>
							        <td><c:set var="sum" value="0"/>
                                	<c:forEach var="product" items="${ requestDetail.productList }">
                                		<c:out value="${ product.serName }"/><input type=hidden value="${ product.serPrice }"/>
                                		<c:set var="sum" value="${ sum + product.serPrice }"/>
                                	</c:forEach>
                                	</td>
							      </tr>
							      <tr>
							        <td>??????</td>
							        <td><c:out value="${ sum }"/> ???</td>
							      </tr>
							      <tr>
							        <td>????????????</td>
							        <td>${ requestDetail.reqStatus }</td> 
							      </tr>
							    </tbody>
							  </table>
							</div>
                    </div>
                    <h4 class="requestReq">????????????</h4>
                    <div class="blog__details__text" style="text-align:left;">
                        <p>${ requestDetail.reqReq }</p>

                    </div>
                    <div class="blog__details__text">
                        <h4>?????? ??? ????????????</h4>
                        <p class="first-para">
                        	???????????? 10?????? ????????? ??????.<br>
                        	????????? ????????? ?????? ??? ?????? ?????? ??? ?????? ?????? ??????!<br>
                        	?????? ????????? ?????? ?????? ????????? ???????????? ?????????<br>
						</p> 
                    </div>
                    <h4>??????</h4>
                    <div class="blog__sidebar__categories" id="map" style="width:700px;height:400px;">
                    
                    </div>
                   
                    <div class="btn-detail picture">
	                    <form action="${ pageContext.servletContext.contextPath }/cleaner/request/attach" method="post" encType="multipart/form-data">
	                    <input type="hidden" name="reqNo" id="reqNo" value="${ requestDetail.reqNo }"/>
						<label>????????? ??????<input type="file" name="before"  multiple></label><br>
						<label>????????? ??????<input type="file" name="after" class="picture" multiple></label><br>
						<button type="submit">?????? ??????</button>
						</form>
                    </div>
                    <div class="btn-detail report">
                    	<c:if test="${ requestDetail.reqStatus eq '??????              ' }">
                    	<button id="report" class="report">?????? ??????</button>
                    	</c:if>
                    </div>
                    <div class="btn-detail complete">
                    	<c:if test="${ requestDetail.reqStatus ne '??????              ' }">
                    	<button id="complete" class="complete">????????????</button>
                    	</c:if>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->

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
		
		/* ????????? ????????? ??? ???????????? ???????????? ?????? ?????? ?????? ?????? ???????????? ????????? if????????? ????????? ??????????????? ?????? ???????????? ???????????? ????????????. */
			
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
		geocoder.addressSearch('${ address2 }', function(result, status) {
	
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
		
		$("#report").on("click", function(){ 
			const no = $("#reqNo").val();
			console.log(no)
			location.href = "${ pageContext.servletContext.contextPath }/cleaner/request/report?no=" + no;

		});
		
		$("#complete").on("click", function(){ 
			const no = $("#reqNo").val();
			console.log(no)
        	msg = "?????? ?????? ???????????????????";
        	if (confirm(msg) == true) {	
        		$.ajax({
    				url : "${pageContext.request.contextPath}/cleaner/request/complete/check?no=" + no,
    				type : 'get',
    				data: {
    					reqNo : no
    				},
    				success : function(data) {
    					console.log(data);							
    					
    					if (data != 1) {
    							alert("?????? ????????? ??? ????????????. ???????????? ?????? ?????? ????????? ????????? ???????????????.")
    							return;
    						} else {
    							location.href = "${ pageContext.servletContext.contextPath }/cleaner/request/complete?no=" + no;
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