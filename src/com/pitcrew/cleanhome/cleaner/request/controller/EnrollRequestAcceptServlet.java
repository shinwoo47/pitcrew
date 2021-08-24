package com.pitcrew.cleanhome.cleaner.request.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.pitcrew.cleanhome.cleaner.request.model.dto.RequestDTO;
import com.pitcrew.cleanhome.cleaner.request.model.service.RequestService;
import com.pitcrew.cleanhome.member.model.dto.MemberDTO;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;



@WebServlet("/cleaner/request/accept")
public class EnrollRequestAcceptServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int no = Integer.parseInt(request.getParameter("no"));                

		HttpSession session = request.getSession();
		MemberDTO member = (MemberDTO) session.getAttribute("loginMember");
		
		RequestDTO requestDto = new RequestDTO();
		requestDto.setReqNo(no);
		requestDto.setReqStatus("매칭              ");
		requestDto.setMemNoCleaner(member.getMemNo());

		RequestService requestService = new RequestService();
		
		/*입력 받은 의뢰 정보를 이용하여 선택한 의뢰 상태를 '매칭'으로 변경 후 성공 여부 반환 */
		int result = requestService.acceptRequest(requestDto);                           

		String path = "";
		if(result > 0) {
			
			/* 선택한 의뢰 번호에 해당하는 의뢰 상세 내역을 반환 */
			RequestDTO requestDetail = requestService.selectRequestDetail(requestDto);  
			
			/* 선택한 의뢰를 요청한 사용자의 핸드폰 번호 */
			String phone = requestDetail.getPhone().getPhone();
			
			/* 핸드폰 번호로 문자 발송 */
			testSend(phone);                                           

			path = "/WEB-INF/views/cleaner/requestDetails.jsp";               
			request.setAttribute("requestDetail", requestDetail);

		} else {

			path = "/WEB-INF/views/common.failed.jsp";
			request.setAttribute("message", "의뢰 매칭 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);

	}

	
	/* 문자 발생 메소드*/
	public void testSend(String phone) { 
		String api_key = "NCSLL8QTEE8VM0FI";                                //사이트에서 발급 받은 API KEY 
		String api_secret = "M6H3TRX1BWI86ADIDGTROWBH7AXWW71D";             //사이트에서 발급 받은 API SECRET KEY
		Message coolsms = new Message(api_key, api_secret); 
		HashMap<String, String> params = new HashMap<String, String>(); 
		params.put("to", phone);                                            //의뢰등록한 사용자의 핸드폰 번호
		params.put("from", "01064181281");                                  //문자를 발송하는 핸드폰 번호입력
		params.put("type", "SMS"); 
		params.put("text", "고객님이 등록하신 의뢰가 매칭되었습니다. ");                 //메시지 내용
		params.put("mode", "test");
		try { 
			JSONObject obj = (JSONObject) coolsms.send(params); 
		} catch (CoolsmsException e) { 
		} 
	}
}
