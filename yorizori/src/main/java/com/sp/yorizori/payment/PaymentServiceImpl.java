package com.sp.yorizori.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.yorizori.common.dao.CommonDAO;

@Service("payment.paymentService")
public class PaymentServiceImpl implements PaymentService {
	
	@Autowired
	private CommonDAO dao;
	
	@Override
	public List<Payment> listCoupon(String userId) {
		
		List<Payment> listCoupon = null;
		
		try {
			listCoupon = dao.selectList("payment.listcoupon", userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return listCoupon;
	}

	@Override
	public Payment readClass(int classCode) {
		
		Payment dto = null;
		
		try {
			dto = dao.selectOne("payment.classInfo", classCode);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}

	@Override
	public Payment readMember(String userId) {
		Payment dto = null;
		
		try {
			dto = dao.selectOne("payment.readmember", userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}

	@Override
	public List<Payment> coupon(int eventNum) {
		List<Payment> list = null;
		
		try {
			list = dao.selectList("payment.readcoupon", eventNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
