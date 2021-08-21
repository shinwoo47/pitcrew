package com.pitcrew.cleanhome.admin.calculator.controller;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.pitcrew.cleanhome.admin.calculator.model.dto.CalListDTO;
import com.pitcrew.cleanhome.admin.calculator.model.dto.CalSettingDTO;
import com.pitcrew.cleanhome.admin.calculator.model.dto.CalculatingDTO;
import com.pitcrew.cleanhome.admin.calculator.model.dto.DeductRateDTO;
import com.pitcrew.cleanhome.admin.calculator.model.service.CalculatingService;

@WebServlet("/admin/yetcal/list")
public class SelectNotYetCal extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("controller 진입 성공");

		/* 입력받은 정산 기간을 hashMap에 넣기*/
		String searchStartDate = null;
		if(request.getParameter("searchStartDate") != null && !"".equals(request.getParameter("searchStartDate"))) {
			searchStartDate = (request.getParameter("searchStartDate"));
		}

		String searchEndDate = null;
		if(request.getParameter("searchEndDate") != null && !"".equals(request.getParameter("searchEndDate"))) {
			searchEndDate = (request.getParameter("searchEndDate"));
		}

		Map<String, String> searchMap = new HashMap<>();
		searchMap.put("searchStartDate", searchStartDate); // 날짜 조회
		searchMap.put("searchEndDate", searchEndDate); // 날짜 조회


		/* 해당 기간에 맞는 미정산 리스트를 불러온다*/
		CalculatingService calculatingService = new CalculatingService();
		List<CalculatingDTO> perReqCalcList = calculatingService.selectCalSetting(searchMap);
		System.out.println("controller calSettingList : " + perReqCalcList);

		String path = "";
		if(perReqCalcList != null) {
			path = "/WEB-INF/views/admin/calculator/notYetCalList.jsp";
			request.setAttribute("perReqCalcList", perReqCalcList);
		} else {
			path = "/WEB-INF/common/failed.jsp";
			request.setAttribute("message", "조회에 실패했습니다.");
		}

		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("post로 넘어옴");
		
		// 받은 데이터를 차례로 넣어준다? 아무튼 처리한다
		
		String jsonStr = request.getParameter("calcList");
		
		System.out.println(jsonStr);
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy/MM/dd").create();	
		
		
		Type ListType = new TypeToken<List<CalListDTO>>(){}.getType();
		List<CalListDTO> cal = gson.fromJson(jsonStr, ListType);
		
		System.out.println(cal);
		
		/* 서비스로 넘기고 서비스에서 연산 */
		CalculatingService calculatingService = new CalculatingService();
		
		
		/* DB에 입력 */
		int inputSetTbl = calculatingService.insertReqNum(cal);
		
		
			
		
		
			 
	}

}
