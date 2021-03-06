package com.pitcrew.cleanhome.user.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pitcrew.cleanhome.member.model.dto.MemberDTO;
import com.pitcrew.cleanhome.user.model.dto.CleanDTO;
import com.pitcrew.cleanhome.user.model.service.CleanService;

@WebServlet("/user/clean/payment")
public class Payment extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		CleanDTO clean = new CleanDTO();
		
		MemberDTO member = (MemberDTO) session.getAttribute("loginMember"); 
		clean = new CleanService().selectMember(member);
		
		int optPrice = 5000;
		double optTime = 0.5;
		//총가격
		clean.setProPrice(Integer.parseInt(request.getParameter("CleanPrice")));
		clean.setTime(Double.parseDouble(request.getParameter("CleanTime")));
		//상품번호
		clean.setProductNo(Integer.parseInt(request.getParameter("cleanNo")));
		if(request.getParameter("optionNo1") != null)	 {
			clean.setOptionNo1(Integer.parseInt(request.getParameter("optionNo1")));
			clean.setProPrice(clean.getProPrice() + optPrice);
			clean.setTime(clean.getTime() + optTime);
		}
		if(request.getParameter("optionNo2") != null)	 {
			clean.setOptionNo2(Integer.parseInt(request.getParameter("optionNo2")));
			clean.setProPrice(clean.getProPrice() + optPrice);
			clean.setTime(clean.getTime() + optTime);
		}
		//내용
		clean.setReqReq(request.getParameter("content"));
		
		String ta = request.getParameter("start");
		String tb = request.getParameter("startTime");
		clean.setRewDate(ta +" " + tb);
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		try {
			clean.setReqDate(format2.parse(clean.getRewDate()));
		} catch (ParseException e) {
			e.printStackTrace();
		}

		String path = "/WEB-INF/views/user/request/payment.jsp";
			request.setAttribute("clean", clean);

		request.getRequestDispatcher(path).forward(request, response);
	}

}
