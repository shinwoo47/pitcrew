package com.pitcrew.cleanhome.admin.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pitcrew.cleanhome.admin.notice.model.dto.NoticeDTO;
import com.pitcrew.cleanhome.admin.notice.model.service.NoticeService;

@WebServlet("/admin/cleanernotice/detail")
public class SelectNoticeCleanerDetail extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("no"));
		
		NoticeDTO noticeDTO = new NoticeService().selectNoticeDetail(no);
		
		String path = "";
		if(noticeDTO != null) {
			path = "/WEB-INF/views/admin/notice/noticeCleanerDetail.jsp";
			request.setAttribute("noticeDTO", noticeDTO);
		} else {
			path = "/WEB-INF/common/failed.jsp";
			request.setAttribute("message", "조회에 실패했습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
