package com.sp.yorizori.festival;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("festival.festivalController")
@RequestMapping("/festival/*")
public class FestivalController {
	
	@RequestMapping(value = "list")
	public String list() throws Exception {
		
		return ".festival.list";
	}
	
	@RequestMapping(value = "article")
	public String article() throws Exception {
		
		return ".festival.article";
	}
}
