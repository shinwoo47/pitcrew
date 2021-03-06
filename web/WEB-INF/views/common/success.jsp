<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Clean Home</title>
</head>
<body>
	<script>
		(function(){
			const successCode = "${ requestScope.successCode }";
			
			let successMessage = "";
			let movePath = "";
			
			switch(successCode){
				case "insertMember" : 
					successMessage = "회원 가입에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }";
					break;
				case "updateMember" : 
					successMessage = "회원 정보 변경에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }/member/update";
					break;
				case "deleteMember" : 
					successMessage = "회원 탈퇴에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }/index.jsp";
					break;
				case "insertNotice" : 
					successMessage = "공지사항 등록에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }/notice/list";
					break;
				case "insertBoard" : 
					successMessage = "게시판 등록에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }/board/list";
					break;
				case "insertThumbnail" : 
					successMessage = "썸네일 게시판 등록에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }/thumbnail/list";
					break;
				case "cleanerLogin" : 
					successMessage = "해결사 로그인 성공";
					movePath = "${ pageContext.servletContext.contextPath }/cleaner/home";
					break;
				case "adminLogin" : 
					successMessage = "관리자 로그인 성공";
					movePath = "${ pageContext.servletContext.contextPath }/admin/home";
					break;
				case "userLogin" : 
					successMessage = "사용자 로그인 성공";
					movePath = "${ pageContext.servletContext.contextPath }/user/home";
					break;
				case "updateUserInfo" :
					movePath = "${ pageContext.servletContext.contextPath }/member/login";
					successMessage = "회원 정보 변경에 성공하셨습니다!";
					break;
				case "insertAccount" :
					movePath = "${ pageContext.servletContext.contextPath }/cleaner/account";
					successMessage = "계좌 정보 등록에 성공하셨습니다!";
					break;

				case "insertReport" :
					movePath = "${ pageContext.servletContext.contextPath }/cleaner/home";
					successMessage = "신고 등록에 성공하셨습니다!";
					break;

				case "insertProduct" : "상품 추가 성공"
					movePath = "${ pageContext.servletContext.contextPath }/admin/product/list";
					successMessage = "상품 추가에 성공하셨습니다!";
					break;
				case "updateProduct" : "상품 수정 성공"
					movePath = "${ pageContext.servletContext.contextPath }/admin/product/list";
					successMessage = "상품 수정에 성공하셨습니다!";
					break;
				case "deleteBlacklist" : "블랙리스트 삭제 성공"
					movePath = "${ pageContext.servletContext.contextPath }/admin/select/allblacklist";
					successMessage = "블랙리스트 삭제에 성공하셨습니다!";
					break;
				case "insertBlacklist" : "블랙리스트 추가 성공"
					movePath = "${ pageContext.servletContext.contextPath }/admin/select/allblacklist";
					successMessage = "블랙리스트 추가에 성공하셨습니다!";
					break;
				case "signupApproval" : "해결사 가입 승인 성공"
					movePath = "${ pageContext.servletContext.contextPath }/admin/select/allcleanerinfo";
					successMessage = "해결사 가입 승인에 성공하셨습니다!";
					break;
				case "cleanerinsertQuestion" : 
					movePath = "${ pageContext.servletContext.contextPath }/cleaner/notice/list?category=PERSONAL";
					successMessage = "문의사항 등록 성공!";
					break;
				case "cleanerupdateQuestion" : 
					movePath = "${ pageContext.servletContext.contextPath }/cleaner/notice/list?category=PERSONAL";
					successMessage = "문의사항 수정 성공!";
					break;
					
				case "userinsertQuestion" : 
					movePath = "${ pageContext.servletContext.contextPath }/user/board/notice?category=PERSONAL";
					successMessage = "문의사항 등록 성공!";
					break;
				case "userupdateQuestion" : 
					movePath = "${ pageContext.servletContext.contextPath }/user/board/notice?category=PERSONAL";
					successMessage = "문의사항 수정 성공!";
					break;
				case "userDeleteQuestion" : 
					movePath = "${ pageContext.servletContext.contextPath }/user/board/notice?category=PERSONAL";
					successMessage = "문의사항 삭제 성공!";
					break;
					
				case "updateCleanerInfo" : 
					movePath = "${ pageContext.servletContext.contextPath }/cleaner/member/select";
					successMessage = "회원정보 수정 성공!";
					break;
				case "completeRequest" : 
					movePath = "${ pageContext.servletContext.contextPath }/cleaner/request/manage";
					successMessage = "의뢰 완료 성공";
					break;
				case "updatePwd" : 
					movePath = "${ pageContext.servletContext.contextPath }/member/login";
					successMessage = "비밀번호 변경 완료!";
					break;	

				case "failedInput" : 
					movePath = "${ pageContext.servletContext.contextPath }/member/findPwd";
					successMessage = "정보를 다시 입력해주세요!";
					break;
					
				case "insertPicture" : 
					movePath = "${ pageContext.servletContext.contextPath }/cleaner/home";
					successMessage = "사진 등록 완료했습니다!";

					break;	
				
				case "sendCerticationNum" :
					movePath = "${ pageContext.servletContext.contextPath }/member/update/password";
					successMessage = "입력하신 메일로 인증번호가 발송되었습니다!";
					break;
					
				case "userInsertReport" :
					movePath = "${ pageContext.servletContext.contextPath }/user/select/myRequest";
					successMessage = "신고가 완료되었습니다!";
					break;

				case "inconsistentCertifiNum" :
					movePath = "${ pageContext.servletContext.contextPath }/member/update/password";
					successMessage = "인증번호가 일치하지 않습니다";
					break;
			}

			alert(successMessage);
			
			location.replace(movePath);
		})();
	
	</script>
</body>
</html>
