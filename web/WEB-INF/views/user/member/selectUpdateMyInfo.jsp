<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Clean Home</title>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>

body {
	background-color: #ddd;
}

table.type09 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;

}
table.type09 thead th {
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #369;
    border-bottom: 3px solid #036;
}
table.type09 tbody th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: skyblue;
}
table.type09 td {
    width: 430px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}
.section {
	padding: 100px;
}

.updateButton {
	text-align: center;
	margin: auto;
	width: 50%;
}
</style> 
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
</head>
<body>

	<jsp:include page="../userMenubar.jsp"/>
	
	<section class="section">
	<h2 align="center">?????? ??????</h2>
	<br><br><br><br>
	<form name="updateInfo" action="${ pageContext.servletContext.contextPath }/user/member/selectUpdate/myInfo" method="post" onsubmit="return check()">
	<table class="type09" align="center">
        <c:forEach items="${ selectUpdateMyInfo }" var="selectUpdateMyInfo">
        <tbody>        
            <tr>
                <th scope="row">??????</th>
                <td><c:out value="${ selectUpdateMyInfo.memName }"/></td>
            </tr>
            <tr>
                <th scope="row">?????????</th>
                <td><c:out value="${ selectUpdateMyInfo.id }"/></td>
            </tr>
            <tr>
                <th rowspan="3" scope="row">???????????? ??????</th>
            </tr>
            <tr>
                <td><input type="password" name="memberPwd" id="memberPwd" placeholder="???????????????"></td>
            </tr>
            <tr>
                <td><input type="password" name="checkPwd" id="checkPwd" placeholder="???????????? ?????? ??????"></td>
            </tr>
            <tr>
                <th rowspan="5"  scope="row">?????????</th>
                <td><c:out value="${ fn:replace(selectUpdateMyInfo.address, \"$\" , \" \") }"/></td>
            </tr>
            <tr>
                <td><label>????????? ?????? </label></td>
            </tr>
            <tr>
            	<td><label>???????????? </label>  <input type="text" name="zipCode" id="zipCode" readonly class="form-control2">
                <input type="button" value="??????" class="btn btn-yg" id="searchZipCode">
                </td>
            </tr>
            <tr>
            	<td><label>?????? </label>  <input type="text" name="address1" id="address1" readonly  class="form-control"></td>            
            <tr>
            	<td><label>???????????? </label> <input type="text" name="address2" id="address2"  class="form-control">
            	
            <tr>
                <th rowspan="3" scope="row">???????????????</th>
                <td>????????? <c:out value="${ selectUpdateMyInfo.email }"/></td>
            </tr>
            <tr>
                <td><label>????????? ????????? </label> <input type="text" id="udpateEmail" name="updateEmail"></td>
            </tr>
          </tbody>
          </c:forEach>
       </table>
       	<br>
       	<div class="updateButton"><button id="updateMyInfo">????????????</button></div>
       </form>
     </section>
       
       
	
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		const $searchZipCode = document.getElementById("searchZipCode");
		
		$searchZipCode.onclick = function() {
		
			//?????? ???????????? ?????? ?????? ??????????????? ????????? ?????? ???????????? ????????? ????????? ??????????????? ????????????.
			new daum.Postcode({
				oncomplete: function(data){
					//???????????? ???????????? ????????? ???????????? ??? ????????? ????????? ???????????? ??????
					document.getElementById("zipCode").value = data.zonecode;
					document.getElementById("address1").value = data.address;
					document.getElementById("address2").focus();
				}
			}).open();
		}
	</script>
	 
	<script>
		
	function check() {
		//???????????? ?????????
		var getPwd = RegExp(/\w{8,15}$/)
		//????????? ?????????
		var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
		
		//???????????? ?????? ??????
	    if(!getPwd.test($("#memberPwd").val())){
	        alert("????????? ?????? ??????????????????");
	        $("#memberPwd").val("");
	        $("#memberPwd").focus();
	        return false;
	    }
        		
		//???????????? ??????
		if($("#memberPwd").val() != ($("#checkPwd").val())) {
			alert("??????????????? ???????????????.");
			$("#memberPwd").val("");
		    $("#checkPwd").val("");
			$("#memberPwd").focus();
			return false;
		}
		
	    //????????? ????????? ??????
	    if(!getMail.test($("#udpateEmail").val())){
	        alert("?????????????????? ?????? ??????????????????")
	        $("#udpateEmail").val("");
	        $("#udpateEmail").focus();
	        return false;
	     }
	    
	    //?????? ?????? ??????
	     if($("#zipCode").val() == ""){
		        alert("????????? ????????? ?????????");
		        $("#zipCode").focus();
		        return false;
	     }
	    
		return true;
	}

	</script>
		
</body>
</html>