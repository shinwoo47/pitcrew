package com.pitcrew.cleanhome.user.report.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.pitcrew.cleanhome.cleaner.report.model.dto.ReportAttachmentDTO;
import com.pitcrew.cleanhome.cleaner.report.model.dto.ReportDTO;
import com.pitcrew.cleanhome.cleaner.request.model.dto.RequestDTO;

public class UserReportDAO {

	public RequestDTO selectCleanerNo(SqlSession session, int reqNo) {
		
		return session.selectOne("UserReportDAO.selectCleanerNo", reqNo);
	}

	public int insertReport(SqlSession session, ReportDTO report) {
		
		return session.insert("UserReportDAO.insertReport", report);
	}

	public int insertAttachment(SqlSession session, ReportAttachmentDTO reportAttachmentDTO) {

		return session.insert("ReportDAO.insertAttachment", reportAttachmentDTO);
	}

}
