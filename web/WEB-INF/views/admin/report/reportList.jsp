<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맡겨줘 홈즈 관리자 모드</title>
<style>
table {
	margin-top: 24px;
	margin-right: 300px;
}
button{
	background-color: #02A79D; 
	color: white; 
	border-color:transparent; 
	border-radius:0.3rem;
	}
</style>
</head>
<body>
	<jsp:include page="../menubar.jsp" />
<div class="dashboard-wrapper">
   	 <div class="container-fluid dashboard-content">
       <div class="row">
          <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
	<form action="${ pageContext.servletContext.contextPath }/admin/report/check" method="get">
	<div class="table-area">
		<table align="right" id="listArea" border="1">
			<tr>
				<th width="120px" style="text-align: center; font-size: 20pt;">회원 번호</th>
				<th width="200px" style="text-align: center; font-size: 20pt;">회원 분류</th>
				<th width="200px" style="text-align: center; font-size: 20pt;">아이디</th>
				<th width="120px" style="text-align: center; font-size: 20pt;">이름</th>
				<th width="200px" style="text-align: center; font-size: 20pt;">휴대폰 번호</th>
				<th width="200px" style="text-align: center; font-size: 20pt;">카테고리 명</th>
				<th width="120px" style="text-align: center; font-size: 20pt;">상세내역</th>
				<th width="120px" style="text-align: center; font-size: 20pt;">패널티 점수</th>
			</tr>
			<c:forEach items="${ reportList }" var="report">
			<input type="hidden" id="reportNo" name="reportNo" value="${ report.reportNo }">
				<tr>
					<td style="text-align: center; font-size: 20pt;"><c:out	value="${ report.memNoReporter }"></c:out></td>
					<td style="text-align: center; font-size: 20pt;"><c:out	value="${ report.memId.memberRole }"></c:out></td>
					<td style="text-align: center; font-size: 20pt;"><c:out	value="${ report.memId.memId }"></c:out></td>
					<td style="text-align: center; font-size: 20pt;"><c:out	value="${ report.memId.memName }"></c:out></td>
					<td style="text-align: center; font-size: 20pt;"><c:out	value="${ report.memId.phone }"></c:out></td>
					<td style="text-align: center; font-size: 20pt;"><c:out value="${ report.reportCategoryName.reportCategoryName }"></c:out></td>
					<td align="center" style="text-align: center; font-size: 15pt;"><button type="submit">자세히</button></td>
					<td style="text-align: center; font-size: 20pt;"><c:out value="${ report.penaltyScoreSum }"></c:out></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	</form>
	</div>
	</div>
	</div>
	</div>
</body>
</html>