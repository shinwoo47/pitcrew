package com.pitcrew.cleanhome.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pitcrew.cleanhome.member.model.dto.MemberDTO;
import com.pitcrew.cleanhome.member.model.service.MemberService;

@WebServlet("/member/findId")
public class FindIdServlet extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/member/findId.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memName = request.getParameter("memName");
		String email = request.getParameter("email");
		
		MemberDTO findMyId = new MemberDTO();
		findMyId.setMemName(memName);
		findMyId.setEmail(email);
		
		/* 아이디 불러온 값*/
		MemberDTO selectMyId = new MemberService().selectMyId(findMyId);
		
		
		String path = "";
		
		if(selectMyId != null) {
			path = "/WEB-INF/views/member/successFindId.jsp";

			request.setAttribute("selectMyId", selectMyId);
			
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "아이디 찾기 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
