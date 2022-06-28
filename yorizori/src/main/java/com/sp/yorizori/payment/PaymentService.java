package com.sp.yorizori.payment;

import java.util.List;
import java.util.Map;

public interface PaymentService {
	public List<Payment> listCoupon(String userId);
	public Payment readClass(int classCode);
	public Payment readMember(String userId);
	
	public List<Payment> coupon(int eventNum);
	
	public String kakaoPay(Map<String, Object> map);
	 
}
