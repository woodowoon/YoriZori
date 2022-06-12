package com.sp.yorizori.foodclass;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("class.foodClassController")
@RequestMapping("/class/*")
public class FoodClassController {
	
	@RequestMapping(value = "list")
	public String list() throws Exception {
		return ".class.list";
	}
	
	@RequestMapping(value = "article")
	public String article() throws Exception {
		return ".class.article";
	}
	
	@RequestMapping(value = "write")
	public String write() throws Exception {
		return ".class.write";
	}
}
