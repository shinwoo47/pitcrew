package com.pitcrew.cleanhome.common.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pitcrew.cleanhome.member.model.dto.MemberDTO;



@WebFilter(urlPatterns = {"/cleaner/*", "/user/*", "/admin/*", "/member/*"})
public class AuthenticationFilter implements Filter {
	
	Map<String, List<String>> permitURIList;
	
	public void destroy() {}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest hrequest = (HttpServletRequest) request;
		String uri = hrequest.getRequestURI();
		String intent = uri.replace(hrequest.getContextPath(), "");
		
		
		/* 세션에 권한이 있는지 확인하여 허용된 url에만 접근 가능하도록 설정한다. */
		HttpSession requestSession = hrequest.getSession();
		MemberDTO loginMember = (MemberDTO) requestSession.getAttribute("loginMember");
		
		boolean isAuthorized = false;
		if(loginMember != null) {
			
			boolean isPermitAdmin = permitURIList.get("adminPermitList").contains(intent);
			boolean isPermitMember = permitURIList.get("memberPermitList").contains(intent);
			boolean isPermitAll = permitURIList.get("allPermitList").contains(intent);
			boolean iscleanerPermitList = permitURIList.get("cleanerPermitList").contains(intent);

			if("관리자".equals(loginMember.getRole())) {
				
				if(isPermitAdmin || isPermitMember || isPermitAll || iscleanerPermitList) {
					isAuthorized = true;
				}
				
			} else if("사용자".equals(loginMember.getRole())) {
				
				if((isPermitMember || isPermitAll) && !isPermitAdmin) {
					isAuthorized = true;
				}
				
			} else if("해결사".equals(loginMember.getRole())) {

				if((iscleanerPermitList || isPermitAll) && !isPermitAdmin) {
					isAuthorized = true;
				}
				
			}
			
			if(isAuthorized) {
				chain.doFilter(request, response);
				
			} else {
				((HttpServletResponse) response).sendError(403);
			}
			
		} else {
			
			if(permitURIList.get("allPermitList").contains(intent)) {
				chain.doFilter(request, response);
			} else {
				request.setAttribute("message", "로그인이 필요한 서비스 입니다.");
				request.getRequestDispatcher("/WEB-INF/views/common/failed.jsp").forward(hrequest, response);
			}
		}
		
	}

	public void init(FilterConfig fConfig) throws ServletException {
		
		permitURIList = new HashMap<>();
		List<String> adminPermitList = new ArrayList<>();
		List<String> memberPermitList = new ArrayList<>();
		List<String> allPermitList = new ArrayList<>();
		List<String> cleanerPermitList = new ArrayList<>();
		
		adminPermitList.add("/admin/home");
		adminPermitList.add("/admin/notice/list");
		adminPermitList.add("/admin/cleanernotice/list");
		adminPermitList.add("/admin/notice/detail");
		adminPermitList.add("/admin/cleanernotice/detail");
		adminPermitList.add("/admin/notice/insert");

		adminPermitList.add("/admin/faq/list");
		adminPermitList.add("/admin/faq/detail");
		adminPermitList.add("/admin/cleanerfaq/list");
		adminPermitList.add("/admin/cleanerfaq/detail");
		adminPermitList.add("/admin/faq/insert");
		adminPermitList.add("/admin/reply/list");

		adminPermitList.add("/admin/request/list");
		adminPermitList.add("/admin/request/detail");
		adminPermitList.add("/admin/yetcal/list");
		adminPermitList.add("/admin/calculating/list");
		adminPermitList.add("/notice/update");

		adminPermitList.add("/admin/home");
		adminPermitList.add("/admin/select/alluserinfo");
		adminPermitList.add("/admin/select/allcleanerinfo");
		adminPermitList.add("/admin/product/list");
		adminPermitList.add("/admin/product/insert");
		adminPermitList.add("/admin/product/update");
		adminPermitList.add("/admin/select/allblacklist");
		adminPermitList.add("/admin/blacklist/insert");
		adminPermitList.add("/admin/blacklist/delete");
		adminPermitList.add("/admin/report/select");
		adminPermitList.add("/admin/report/check");
		adminPermitList.add("/admin/signup/list");
		adminPermitList.add("/admin/signup/approval");
		adminPermitList.add("/admin/resign/allselect");
		adminPermitList.add("/admin/paylist/select");
		


		
		memberPermitList.add("/notice/list");
		memberPermitList.add("/notice/detail");
		memberPermitList.add("/board/list");
		memberPermitList.add("/board/insert");
		memberPermitList.add("/boart");
		memberPermitList.add("/thumbnaid/search");
		memberPermitList.add("/thumbnail/lisl/insert");
		memberPermitList.add("/thumbnail/detail");
		memberPermitList.add("/user/home");
		memberPermitList.add("/user/select/myInfo");
		memberPermitList.add("/user/member/selectUpdate/myInfo");
		memberPermitList.add("/user/clean/services");
		memberPermitList.add("/user/clean/select");
		memberPermitList.add("/user/request/detail");
		memberPermitList.add("/user/pay/request");

		memberPermitList.add("/user/select/myRequest");
		memberPermitList.add("/user/clean/list");
		memberPermitList.add("/user/regist/request");
		memberPermitList.add("/user/end/regist/request");
		memberPermitList.add("/user/end/request");
		memberPermitList.add("/user/clean/informa");
		memberPermitList.add("/user/clean/payment");
		memberPermitList.add("/user/comp/regist/request");
		memberPermitList.add("/user/request/report");
		memberPermitList.add("/user/quit/member");
		
		memberPermitList.add("/user/board/notice");
		memberPermitList.add("/user/notice/insert");
		memberPermitList.add("/user/notice/delete");
		memberPermitList.add("/user/notice/detail");
		memberPermitList.add("/user/notice/update");
		
		cleanerPermitList.add("/cleaner/request/enroll");
		cleanerPermitList.add("/cleaner/home");
		cleanerPermitList.add("/cleaner/request/accept");
		cleanerPermitList.add("/cleaner/request/manage");
		cleanerPermitList.add("/cleaner/account");
		cleanerPermitList.add("/cleaner/account/regist");
		cleanerPermitList.add("/cleaner/account/update");

		cleanerPermitList.add("/cleaner/request/ajax");
		cleanerPermitList.add("/cleaner/request/ajax2");
		cleanerPermitList.add("/cleaner/request/detail");
		cleanerPermitList.add("/cleaner/request/attach");
		cleanerPermitList.add("/cleaner/request/report");
		cleanerPermitList.add("/cleaner/notice/list");
		cleanerPermitList.add("/cleaner/notice/detail");
		cleanerPermitList.add("/cleaner/notice/insert");
		cleanerPermitList.add("/cleaner/notice/update");
		cleanerPermitList.add("/cleaner/notice/delete");
		cleanerPermitList.add("/cleaner/member/select");
		cleanerPermitList.add("/cleaner/member/update");
		cleanerPermitList.add("/cleaner/request/complete");
		cleanerPermitList.add("/cleaner/member/delete");
		cleanerPermitList.add("/cleaner/request/complete/check");
		cleanerPermitList.add("/cleaner/request/accept/check");
		cleanerPermitList.add("/cleaner/calculate");
		cleanerPermitList.add("/cleaner/calculate/detail");
		cleanerPermitList.add("/cleaner/account/authorize");
		cleanerPermitList.add("/cleaner/account/test");

		allPermitList.add("/member/regist");
		allPermitList.add("/member/login");
		allPermitList.add("/member/logout");
		allPermitList.add("/member/idCheck");
		allPermitList.add("/member/findId");

		allPermitList.add("/member/findPwd");
		allPermitList.add("/member/update/password");

		allPermitList.add("/main");
		allPermitList.add("/about");
		allPermitList.add("/service");
		allPermitList.add("/clean");
		
		permitURIList.put("adminPermitList", adminPermitList);
		permitURIList.put("memberPermitList", memberPermitList);
		permitURIList.put("allPermitList", allPermitList);
		permitURIList.put("cleanerPermitList", cleanerPermitList);
		
	}

}
