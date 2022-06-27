package com.sp.yorizori.payment;

public class Payment {
	private String userId;
	private String coupon;
	private String userName;
	private String email;
	
	private int classCode;
	private String classUser;
	private String classSubject;
	private int price; // 가격
	
	private int eventNum;
	private String couponName;
	private int discountprice; // 할인 쿠폰 가격
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getCoupon() {
		return coupon;
	}
	public void setCoupon(String coupon) {
		this.coupon = coupon;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getClassCode() {
		return classCode;
	}
	public void setClassCode(int classCode) {
		this.classCode = classCode;
	}
	public String getClassUser() {
		return classUser;
	}
	public void setClassUser(String classUser) {
		this.classUser = classUser;
	}
	public String getClassSubject() {
		return classSubject;
	}
	public void setClassSubject(String classSubject) {
		this.classSubject = classSubject;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getEventNum() {
		return eventNum;
	}
	public void setEventNum(int eventNum) {
		this.eventNum = eventNum;
	}
	public String getCouponName() {
		return couponName;
	}
	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}
	public int getDiscountprice() {
		return discountprice;
	}
	public void setDiscountprice(int discountprice) {
		this.discountprice = discountprice;
	}
}
