package com.sp.yorizori.foodclass;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class FoodClass {
	private int rnum;
	private int classCode;
	private int category;
	private String classSubject;
	private String classContent;
	private String reg_date;
	private int classHitcount;
	private int serving;
	private int price;
	private int videoTime;
	private String userId;
	private int followCount;

	private List<MultipartFile> selectFile;
	
	private String imageFileName;
	private String previewFileName;
	private String videoFileName;
	
	private int classLikeCount;

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public int getClassCode() {
		return classCode;
	}

	public void setClassCode(int classCode) {
		this.classCode = classCode;
	}

	public int getClass_category() {
		return category;
	}

	public void setClass_category(int class_category) {
		this.category = class_category;
	}

	public String getClassSubject() {
		return classSubject;
	}

	public void setClassSubject(String classSubject) {
		this.classSubject = classSubject;
	}

	public String getClassContent() {
		return classContent;
	}

	public void setClassContent(String classContent) {
		this.classContent = classContent;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public int getClassHitcount() {
		return classHitcount;
	}

	public void setClassHitcount(int classHitcount) {
		this.classHitcount = classHitcount;
	}

	public int getServing() {
		return serving;
	}

	public void setServing(int serving) {
		this.serving = serving;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getVideoTime() {
		return videoTime;
	}

	public void setVideoTime(int videoTime) {
		this.videoTime = videoTime;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getFollowCount() {
		return followCount;
	}

	public void setFollowCount(int followCount) {
		this.followCount = followCount;
	}

	public List<MultipartFile> getSelectFile() {
		return selectFile;
	}

	public void setSelectFile(List<MultipartFile> selectFile) {
		this.selectFile = selectFile;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String getPreviewFileName() {
		return previewFileName;
	}

	public void setPreviewFileName(String previewFileName) {
		this.previewFileName = previewFileName;
	}

	public String getVideoFileName() {
		return videoFileName;
	}

	public void setVideoFileName(String videoFileName) {
		this.videoFileName = videoFileName;
	}

	public int getClassLikeCount() {
		return classLikeCount;
	}

	public void setClassLikeCount(int classLikeCount) {
		this.classLikeCount = classLikeCount;
	}
}
