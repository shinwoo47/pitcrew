<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Clean Home</title>

    <meta charset="UTF-8">
    <meta name="description" content="Loanday Template">
    <meta name="keywords" content="Loanday, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">


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
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>
   
    <script src="${ pageContext.servletContext.contextPath }/resources/user/js/jquery-3.3.1.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/user/js/bootstrap.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/user/js/jquery.nice-select.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/user/js/jquery-ui.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/user/js/jquery.nicescroll.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/user/js/jquery.magnific-popup.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/user/js/jquery.slicknav.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/user/js/owl.carousel.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/user/js/main.js"></script>
        
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
  
   
    .section {
       width : 1000px;
        margin-right: auto;
        margin-left: auto;
       padding-top: 100px;
       
    }
   
 table.type05 {
  border-collapse: separate;
  border-spacing: 1px;
  text-align: left;
  line-height: 1.5;
  border-top: 1px solid #ccc;
  margin: auto;
}
table.type05 th {
  width: 300px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  background: #efefef;
}
table.type05 td {
  width: 1080px;
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
}
.pay {
    width: 100px;
    height: 100px;;
    margin: auto;

}
.btn-yb {
	width: 200px;
	 	height: 50px;
	 	background-color : blue;
	 	font-size : 28px;
	 	color : white;
}  
.btn_requ {
	 	 width: 220px;
	 	 height: 70px;
	 	 background-color : red;
	 	 font-size : 33px;
	 	 color : white;
	
	} 
.btn_q {
	 margin: auto;

 	  width: 10%;
     
}
</style>
</head>

<body>

   <jsp:include page="../userMenubar.jsp"/>
    <!-- Header Section End -->
    
    <!-- Section Section Start -->
   <body>
   <div class="section">
   <input type="button" class="btn-yb" value="???????????? ??????" id="information">
      <h2 ><br>????????? ??????</h2> 
           <table class="type05" >
               <tr>
                    <th scope="row" >??????</th>
                    <td><c:out value="${ clean.memName }"/></td>
               </tr>
               <tr>
                    <th scope="row">?????????</th>
                    <td><c:out value="${ clean.email }"/></td>
               </tr>
               <tr>
                    <th scope="row">????????? ??????</th>
                    <td><c:out value="${ clean.phone }"/></td>
               </tr>
         </table>
         
   <br>
   <div class="article"></div>
      <h2>????????????</h2>
         <table class="type05">
            <tr>
                    <th scope="row">?????????</th>
                    <td><c:out value="${ clean.rewDate }"/>&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;(<c:out value="${ clean.time }"/>)??????</td>
               </tr>
                <tr>
                    <th scope="row">??????</th>
                    <td><c:out value="${ fn:replace(clean.address, \"$\" , \" \") }"/></td>
                    
               </tr>
                <tr>
                    <th scope="row">??????</th>
                    <td><c:out value="${ clean.proPrice }"/></td>
                    
            </tr>
            </table>
      <br><br>
      </div>
      <div class="btn_q">
      <button type="submit" class="btn_requ" value="????????????" id="paymentProceed" >????????????</button>
      </div>
      <script>
	$("#paymentProceed").click(function() {
		var IMP = window.IMP; // ????????????0
		IMP.init('imp80360263');
		// 'iamport' ?????? ???????????? "????????? ????????????"??? ??????
		// i'mport ????????? ????????? -> ????????? -> ?????????????????????
		IMP.request_pay({
			pg: 'html5_inicis', // version 1.1.0?????? ??????.
			/*
			'inicis' : ????????? IE?????? ??????!!
			'kakao':???????????????,
			'html5_inicis':????????????(???????????????)
			'nice':???????????????
			'jtnet':????????????
			'uplus':LG????????????
			'danal':??????
			'payco':?????????
			'syrup':????????????
			'paypal':?????????
			*/
			pay_method: 'card',
			/*
			'samsung':????????????,
			'card':????????????,
			'trans':?????????????????????,
			'vbank':????????????,
			'phone':?????????????????????
			*/
			merchant_uid: 'merchant_' + new Date().getTime(),
			/*
			merchant_uid??? ??????
			https://docs.iamport.kr/implementation/payment
			?????? url??? ??????????????? ?????? ??? ?????? ????????? ????????????.
			???????????????.
			????????? ????????? ????????????.
			*/
			name: '?????????:???????????????',
			//??????????????? ????????? ??????
			amount: '${ clean.proPrice }',

			//??????
			buyer_email: "${ clean.email }",
			buyer_name: "${ clean.memName}",
			buyer_tel: "${ clean.phone }",
			/*
			????????? ?????????,
			????????? ????????? ???????????? URL??? ??????
			(???????????????, ?????????, ????????? ????????? ????????????. PC??? ??????????????? callback????????? ????????? ?????????)
			*/
		}, function (rsp) {
			console.log(rsp);
			if (rsp.success) {
				console.log("${ clean.reqDate }");
				$.ajax({
					url: "${pageContext.servletContext.contextPath}/user/pay/request",
					type: 'POST',
					data: {
						impUid : rsp.imp_uid,
						serPrice: rsp.paid_amount,
						reqDate: "${ clean.rewDate }",
						productNo: "${ clean.productNo }",
						reqOption1: "${ clean.optionNo1 }",
						reqOption2: "${ clean.optionNo2 }",
						reqReq: "${ clean.reqReq }",
					},
					
					success : function(data, textStatus, xhr) {
						var msg = '????????? ?????????????????????.';
						alert(msg);
						location.href = "${pageContext.servletContext.contextPath}/user/home"; 
					},
					
					error: function(xhr, status, error){}
					
				});
									
			} else {
				var msg = '????????? ?????????????????????.';
				msg += '???????????? : ' + rsp.error_msg;
				alert(msg);
			}
		});
	});
</script>

      

</html>