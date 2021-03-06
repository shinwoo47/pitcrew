<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="${ pageContext.servletContext.contextPath }/resources/user/js/event.js"></script>
<title>Clean Home</title>
<style>

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
    width: 350px;
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
	<meta charset="UTF-8">
    <meta name="description" content="Loanday Template">
    <meta name="keywords" content="Loanday, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Clean Home</title>

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
</head>
<body>
	  
	  <!-- ?????? -->
	<jsp:include page="../cleaner/cleanermenubar.jsp"/>
	<section class="section">
	<h2 align="center">?????? ??????</h2>
	<br><br><br><br>
	<form name="regFrm" action="${ pageContext.servletContext.contextPath }/cleaner/member/update" method="post">
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
                <td><label>??? ???????????? </label> <input type="password" name="memberPwd" id="memberPwd"></td>
            </tr>
            <tr>
                <td><label>?????? ?????? </label> <input type="password" name="retypeNewPwd" id="retypeNewPwd"></td>
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
                <td><label>????????? ????????? </label> <input type="text" id="email" name="updateEmail"></td>
            </tr>
          </tbody>
          </c:forEach>
       </table>
       	<br>
       	<div class="updateButton"><input type="submit" value="????????????" id="updateMyInfo" onclick="inputCheck()"></div>
       </form>
     </section>
       
       
	<jsp:include page="../cleaner/footer.jsp"/>
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
		
</body>
</html>