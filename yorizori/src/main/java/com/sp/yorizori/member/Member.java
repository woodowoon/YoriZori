package com.sp.yorizori.member;

public class Member {
	private String userId;
	private String userPwd;
	private String userName;
	private int role;
	private int countryNum;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	public int getCountryNum() {
		return countryNum;
	}
	public void setCountryNum(int countryNum) {
		this.countryNum = countryNum;
	}
}
