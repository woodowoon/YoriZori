package com.sp.yorizori.mypage;

public class MyClass {
	private String userId;
	private int orderCode;
	private String orderRegDate;
	private int classCode;
	private String classSubject;
	private String price;
	private String classPhotoName;
	
	private String reviewContent;
	private String reviewStar;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getOrderCode() {
		return orderCode;
	}
	public void setOrderCode(int orderCode) {
		this.orderCode = orderCode;
	}
	public String getOrderRegDate() {
		return orderRegDate;
	}
	public void setOrderRegDate(String orderRegDate) {
		this.orderRegDate = orderRegDate;
	}
	public int getClassCode() {
		return classCode;
	}
	public void setClassCode(int classCode) {
		this.classCode = classCode;
	}
	public String getClassSubject() {
		return classSubject;
	}
	public void setClassSubject(String classSubject) {
		this.classSubject = classSubject;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getClassPhotoName() {
		return classPhotoName;
	}
	public void setClassPhotoName(String classPhotoName) {
		this.classPhotoName = classPhotoName;
	}
	public String getReviewStar() {
		return reviewStar;
	}
	public void setReviewStar(String reviewStar) {
		this.reviewStar = reviewStar;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
}
