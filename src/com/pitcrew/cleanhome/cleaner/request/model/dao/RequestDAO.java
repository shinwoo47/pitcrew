package com.pitcrew.cleanhome.cleaner.request.model.dao;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.pitcrew.cleanhome.cleaner.request.model.dto.FullCalendarDTO;
import com.pitcrew.cleanhome.cleaner.request.model.dto.RequestAttachmentDTO;
import com.pitcrew.cleanhome.cleaner.request.model.dto.RequestDTO;
import com.pitcrew.cleanhome.cleaner.request.paging.SelectCriteria;
import com.pitcrew.cleanhome.member.model.dto.MemberDTO;


public class RequestDAO {

	public int selectTotalCount(SqlSession session, Map<String, String> searchMap) {
		
		return session.selectOne("RequestDAO.selectTotalCount", searchMap);
	}

	public List<RequestDTO> selectRequestList(SqlSession session, SelectCriteria selectCriteria) {
		
		return session.selectList("RequestDAO.selectRequestList", selectCriteria);
	}

	public int acceptRequest(SqlSession session, RequestDTO requestDto) {
		
		return session.update("RequestDAO.acceptRequest", requestDto);
	}

	public RequestDTO selectRequestDetail(SqlSession session, RequestDTO requestDto) {
				
		return session.selectOne("RequestDAO.selectRequestDetail", requestDto);
	}

	public String selectRequestStatus(SqlSession session, RequestDTO requestDto) {
		
		return session.selectOne("RequestDAO.selectRequestStatus", requestDto);
	}

	public int insertRequestStatusHistory(SqlSession session, RequestDTO requestDto) {
		
		return session.insert("RequestDAO.insertRequestStatusHistory", requestDto);
	}

	public int selectCleanerTotalCount(SqlSession session, Map<String, Object> searchMap) {
		
		return session.selectOne("RequestDAO.selectCleanerTotalCount", searchMap);
	}

	public List<RequestDTO> selectCleanerRequestList(SqlSession session, Map<String, Object> searchMap) {
		
		return session.selectList("RequestDAO.selectCleanerRequestList", searchMap);
	}

	public List<FullCalendarDTO> selectCalendar(SqlSession session, Map<String, Object> searchMap) {
		
		return session.selectList("RequestDAO.selectCalendar", searchMap);
	}

	public int completeRequest(SqlSession session, RequestDTO requestDto) {
		
		return session.update("RequestDAO.completeRequest", requestDto);
	}

	public RequestDTO checkRequestComplete(SqlSession session, int reqNo) {
		
		return session.selectOne("RequestDAO.checkRequestComplete", reqNo);
	}

	public List<RequestDTO> requestAcceptCheck(SqlSession session, MemberDTO member) {
		
		return session.selectList("RequestDAO.requestAcceptCheck", member);
	}

	public int insertAttachment(SqlSession session, RequestAttachmentDTO pictures) {
		
		return session.insert("RequestDAO.insertAttachment", pictures);
	}

}
