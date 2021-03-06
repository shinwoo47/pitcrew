<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/admin/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="${ pageContext.servletContext.contextPath }/resources/admin/assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/admin/assets/libs/css/style.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/admin/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/admin/assets/vendor/charts/chartist-bundle/chartist.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/admin/assets/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/admin/assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/admin/assets/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/admin/assets/vendor/fonts/flag-icon-css/flag-icon.min.css">
	<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/admin/board/summernote-lite.css">
<title>맡겨줘 홈즈 관리자 모드</title>

</head>
<body>

 <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        <div class="dashboard-header">
            <nav class="navbar navbar-expand-lg bg-white fixed-top">
                <a class="navbar-brand" href="${ pageContext.servletContext.contextPath }/admin/home"><img src="${ pageContext.servletContext.contextPath }/resources/admin/assets/images/logo.png"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-right-top">
                        <li class="nav-item dropdown nav-user">
                            <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="${ pageContext.servletContext.contextPath }/resources/admin/assets/images/man.png" alt="" class="user-avatar-md rounded-circle"></a>
                            <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                                <div class="nav-user-info">
                                    <h5 class="mb-0 text-white nav-user-name">관리자 모드</h5>
                                    <span class="status"></span><span class="ml-2">접속 중</span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- ============================================================== -->
        <!-- 상단 navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- sidebar -->
        <!-- ============================================================== -->
        <div class="nav-left-sidebar sidebar-dark">
            <div class="menu-list">
            <br>
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="d-xl-none d-lg-none" href="#">Dashboard</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                    <br>
                        <ul class="navbar-nav flex-column">
                            <li class="nav-divider" style="color: white">
                                Menu
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-1" aria-controls="submenu-1">
                                <i class="fa fa-fw fa-user-circle"></i>Dashboard <span class="badge badge-success">6</span></a>
                            
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-2" aria-controls="submenu-2">
                                <i class="fa fa-fw fa-rocket"></i>사용자 관리</a>
                                <div id="submenu-2" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="${ pageContext.servletContext.contextPath }/admin/select/alluserinfo">사용자 정보 조회 </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="${ pageContext.servletContext.contextPath }/admin/select/allblacklist">블랙리스트</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="${ pageContext.servletContext.contextPath }/admin/report/select">신고 요청</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="${ pageContext.servletContext.contextPath }/admin/resign/allselect">탈퇴 회원</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-3" aria-controls="submenu-3">
                                <i class="fas fa-fw fa-chart-pie"></i>해결사 관리</a>
                                <div id="submenu-3" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="${ pageContext.servletContext.contextPath }/admin/select/allcleanerinfo">해결사 정보 조회</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="${ pageContext.servletContext.contextPath }/admin/select/allblacklist">블랙리스트</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="${ pageContext.servletContext.contextPath }/admin/report/select">신고 요청</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="${ pageContext.servletContext.contextPath }/admin/resign/allselect">탈퇴 회원</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="${ pageContext.servletContext.contextPath }/admin/signup/list">가입 승인</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                           <li class="nav-item ">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-4" aria-controls="submenu-4">
                                <i class="fa fa-fw fa-user-circle"></i>의뢰 관리 </a>
                                <div id="submenu-4" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" data-toggle="collapse" aria-expanded="false" data-target="#submenu-4-2" aria-controls="submenu-4-2">의뢰 조회</a>
                                            <div id="submenu-4-2" class="collapse submenu" style="">
                                                <ul class="nav flex-column">
                                                	<li class="nav-item">
                                                        <a class="nav-link" href="${ pageContext.servletContext.contextPath }/admin/request/list">의뢰 검색</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link">의뢰 히스토리</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link">의뢰 변경</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="${ pageContext.servletContext.contextPath }/admin/paylist/select">결제 조회</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link">수정신청</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>           
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-5" aria-controls="submenu-5">
                                <i class="fas fa-fw fa-table"></i>정산, 매출 관리</a>
                                <div id="submenu-5" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                    	<li class="nav-item">
                                            <a class="nav-link" href="${ pageContext.servletContext.contextPath }/admin/yetcal/list">미정산 항목</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link">정산 관리</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link">매출 관리</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-6" aria-controls="submenu-6">
                                <i class="fa fa-fw fa-user-circle"></i>게시글 관리 </a>
                                <div id="submenu-6" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-6-1" aria-controls="submenu-6-1">FAQ 관리</a>
                                            <div id="submenu-6-1" class="collapse submenu" style="">
                                                <ul class="nav flex-column">
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="${ pageContext.servletContext.contextPath }/admin/faq/list">사용자 FAQ</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="${ pageContext.servletContext.contextPath }/admin/cleanerfaq/list">해결사 FAQ</a>
                                                    </li>                                                   
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-6-2" aria-controls="submenu-6-2">공지사항 관리</a>
                                            <div id="submenu-6-2" class="collapse submenu" style="">
                                                <ul class="nav flex-column">
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="${ pageContext.servletContext.contextPath }/admin/notice/list">사용자 공지사항</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="${ pageContext.servletContext.contextPath }/admin/cleanernotice/list">해결사 공지사항</a>
                                                    </li>                                                   
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-6-3" aria-controls="submenu-6-3">1:1 문의 관리</a>
                                            <div id="submenu-6-3" class="collapse submenu" style="">
                                                <ul class="nav flex-column">
                                                    <li class="nav-item">
                                                        <a class="nav-link">사용자 1:1문의</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link">해결사 1:1문의</a>
                                                    </li>                                                   
                                                </ul>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </li>                            
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-7" aria-controls="submenu-7">
                                <i class="fas fa-fw fa-inbox"></i>상품 관리</a>
                                <div id="submenu-7" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="${ pageContext.servletContext.contextPath }/admin/product/list">상품 추가 및 수정</a>
                                        </li>                                      
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-8" aria-controls="submenu-8" href="${ pageContext.servletContext.contextPath }/member/logout">
                                <i class="fas fa-fw fa-columns" ></i>로그 아웃</a>
                                <div id="submenu-8" class="collapse submenu" >
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="${ pageContext.servletContext.contextPath }/member/logout">로그 아웃</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
<!-- Optional JavaScript -->
    <!-- jquery 3.3.1 -->
    <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <!-- bootstap bundle js -->
    <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <!-- slimscroll js -->
    <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <!-- main js -->
    <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/libs/js/main-js.js"></script>
    <!-- chart chartist js -->
    <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/vendor/charts/chartist-bundle/chartist.min.js"></script>
    <!-- sparkline js -->
    <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/vendor/charts/sparkline/jquery.sparkline.js"></script>
    <!-- morris js -->
    <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/vendor/charts/morris-bundle/raphael.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/vendor/charts/morris-bundle/morris.js"></script>
    <!-- chart c3 js -->
    <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/vendor/charts/c3charts/c3.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/vendor/charts/c3charts/d3-5.4.0.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/vendor/charts/c3charts/C3chartjs.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/libs/js/dashboard-ecommerce.js"></script>
	<!-- summerNote js -->
	<script src="${ pageContext.servletContext.contextPath }/resources/admin/board/summernote-lite.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/admin/board/summernote-ko-KR.js"></script>

</body>
</html>