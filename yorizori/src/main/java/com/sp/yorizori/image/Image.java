package com.sp.yorizori.image;

import org.springframework.web.multipart.MultipartFile;

public class Image {
	private MultipartFile upload;

	public MultipartFile getUpload() {
		return upload;
	}

	public void setUpload(MultipartFile upload) {
		this.upload = upload;
	}
}
