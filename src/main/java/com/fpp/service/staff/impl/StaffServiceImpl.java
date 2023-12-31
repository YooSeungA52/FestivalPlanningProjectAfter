package com.fpp.service.staff.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fpp.dao.staff.StaffDao;
import com.fpp.dto.staff.StaffApplyDto;
import com.fpp.dto.staff.StaffApplyListDto;
import com.fpp.dto.staff.StaffFormDto;
import com.fpp.dto.staff.StaffDto;
import com.fpp.service.staff.StaffService;

@Service
public class StaffServiceImpl implements StaffService {

	@Autowired
	StaffDao staffDao;
	
	//스탭 모집 공고 추가
	@Override
	public int recruitmentStaff(StaffDto staffDto) {
		// TODO Auto-generated method stub
		
		int result = staffDao.insertStaff(staffDto);
		
		return result;
	}

	//스탭 모집 공고 리스트 조회
	@Override
	public List<StaffDto> getStaffRecruitmentList() {
		// TODO Auto-generated method stub
		
		List<StaffDto> list = staffDao.selectStaffRecruitmentList();
		
		return list;
	}

	//스탭 신청
	@Override
	public void staffRecruitmentApply(StaffApplyDto staffApplyDto) {
		// TODO Auto-generated method stub
		
		staffDao.insertStaffApply(staffApplyDto);
		
	}

	//스탭 모집 공고 + 신청 양식 테이블 조회
	@Override
	public List<StaffFormDto> getStaffRecruitmentAndFormList() {
		// TODO Auto-generated method stub
		
		List<StaffFormDto> list = staffDao.selectStaffRecruitmentAndFormList();
		
		return list;
	}
	@Override
	public StaffFormDto getStaffRecruitmentFormListByFno(int fno) {
		// TODO Auto-generated method stub

		StaffFormDto staffFormDto = staffDao.selectStaffRecruitmentFormListByFno(fno);
		
		return staffFormDto;
	}

	@Override
	public List<StaffApplyListDto> getStaffApplyList() {
		// TODO Auto-generated method stub

		List<StaffApplyListDto> list = staffDao.selectStaffApplyList();
		
		return list;
	}

	@Override
	public List<StaffApplyListDto> getStaffApplyListByFno(int fno) {
		// TODO Auto-generated method stub

		List<StaffApplyListDto> list = staffDao.selectStaffApplyListByFno(fno);
		
		return list;
	}

}
