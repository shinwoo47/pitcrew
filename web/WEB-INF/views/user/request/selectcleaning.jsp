<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<style>
	.btn-yq {
	 	width: 200px;
	 	height: 50px;
	 	background-color : blue;
	 	font-size : 28px;
	 	color : white;
	}
	.checa {
		font-size : 30px;d
	}
	.checb {
		width: 25px;
	 	height: 25px;
	}
	.names {
		float: center;
	}
	.nss {
		width: 800px;
	 	height: 1700px;
	    margin-right: auto;
        margin-left: auto;
        background: rgb(186, 237, 255);
        font-size : 20px;
	}
	.line {
         width: 800px;
         border: 1px solid rgba(0, 0, 0, 0.466);
         margin-right: auto;
         margin-left: auto;
     }
    .btn_requ {
	 	 width: 220px;
	 	 height: 70px;
	 	 background-color : red;
	 	 font-size : 33px;
	 	 color : white;
	
	}
	.imgq {
		 width: 600px;
	 	 height: 400px;
	}
	</style>
</head>

<body>
  
   <jsp:include page="../userMenubar.jsp"/>
    
    <section class="services spad">
    
				<script>
					var time = ${ clean.time }; 
					var price = ${ clean.price };
					var opt1 = 0;
				</script>
				
				<script>
				window.onpageshow = function(event) {
				    if ( event.persisted || (window.performance && window.performance.navigation.type == 2)) {
						var chk = $("#clea").is(":checked");
						if(chk) {$("#clea").prop("checked", false).attr("checked", false).removeAttr("checked");}
						var chk = $("#cleb").is(":checked");
						if(chk) {$("#cleb").prop("checked", false).attr("checked", false).removeAttr("checked");}
				    }
				};
				
				</script>
				
				<div class="nss"><br><br><div align="center">
        		<img src="${ pageContext.servletContext.contextPath }/resources/user/img/user/${clean.imgNo }" alt="" class= "imgq">
        		</div><br>
       			<h1 align = "center"><c:out value="${ clean.name }"/></h1>
       			<h4 align = "right">?????? : <c:out value="${ clean.price }"/>&nbsp;???</h4><br>
        		<div class="line"></div>
        		<form align="center" action="${ pageContext.servletContext.contextPath }/user/clean/payment" method="post" onsubmit="return check()">
        		<br><br>
        		<c:if test="${ clean.cleanNo < 3 }">
        		
        	    <input type="checkbox" name="optionNo1" value="4" id="clea" class="checb" >
      			<label for="baseball" class="checa">?????????&nbsp;&nbsp;5000???</label>
   				<br>
        		<input type="checkbox" name="optionNo2" value="5" id="cleb" class="checb" >
     		    <label for="football" class="checa">??????&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5000???</label>
				</c:if>
     		    <br><br>
     		    <label>????????? &nbsp;</label>
     		    <input type="date" name="start" id="start"><br><br>
        		<label>???????????? &nbsp;</label>
        		<input type="time" name="startTime" id="startTime">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br>
        		<textarea name="content" id="content" cols="60" rows="15" placeholder="?????? ??????????????? ??????????????????"></textarea><br><br>
        		<h4 align = "left" id="timea" >?????????????????? : <c:out value="${ clean.time }"/>??????</h4><br>
        	    <h4 align = "left" id=pricea>???????????? : &nbsp;<c:out value="${ clean.price }"/>???</h4>
      			
      			<input type="hidden"  name="cleanNo" value= "${ clean.cleanNo }"/>
      			<input type="hidden"  name="CleanPrice" value= "${ clean.price }"/>
      			<input type="hidden"  name="CleanTime" value= "${ clean.time }"/>
      		
      			<button type="submit" class="btn_requ" value="????????????" id="payment">????????????</button>
        		</form>
        		</div>
        		
        		<script>
        		$(document).ready(function(){
        			$('#clea').change(function(){ 
        			      if($('#clea').is(":checked")){ 
        			    	  time += 0.5;
        			    	  price += 5000;
        			    	  console.log(time)
        			          $("#timea").html("?????????????????? : " + time + "??????")
        			          $("#pricea").html("???????????? : " + price + "???")
        			      }else{
        			    	  time += - 0.5;
        			    	  price -= 5000;
        			    	  $("#timea").html("?????????????????? : " + time + "??????")
        			    	  $("#pricea").html("???????????? : " + price + "???")
        			      }
        			   });
        			});	
        		
        		$(document).ready(function(){
        			$('#cleb').change(function(){ 
        			      if($('#cleb').is(":checked")){ 
        			    	  time +=  0.5;
        			    	  price += 5000;
        			    	  console.log(time)
        			          $("#timea").html("?????????????????? : " + time + "??????")
        			          $("#pricea").html("???????????? : " + price + "???")
        			      }else{
        			    	  time += - 0.5;
        			    	  price -= 5000;
        			    	  $("#timea").html("?????????????????? : " + time + "??????")
        			    	  $("#pricea").html("???????????? : " + price + "???")
        			      }
        			   });
        			});	
        		</script>
        		<script>
        		
        		
        		</script>
		</section>
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