package com.sp.yorizori.payment;

import java.util.List;

public interface PaymentService {
	public List<Payment> listCoupon(String userId);
	public Payment readClass(int classCode);
	public Payment readMember(String userId);
	
	public List<Payment> coupon(int eventNum);
	 
}
