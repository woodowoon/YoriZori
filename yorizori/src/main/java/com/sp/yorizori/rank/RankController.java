package com.sp.yorizori.rank;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("rank.rankController")
@RequestMapping("/rank/*")
public class RankController {
	
	@RequestMapping(value = "recipe")
	public String recipe() throws Exception {
		
		return ".rank.recipe";
	}
	
	@RequestMapping(value = "chef")
	public String chef() throws Exception {
		
		return ".rank.chef";
	}
	
	@RequestMapping(value = "article")
	public String article() throws Exception {
		
		return ".rank.article";
	}
}
