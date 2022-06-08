package com.sp.yorizori.rank;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("rank.rankController")
@RequestMapping("/rank/*")
public class RankController {
	
	@RequestMapping(value = "list")
	public String list() throws Exception {
		
		return ".rank.list";
	}
	
	@RequestMapping(value = "article")
	public String article() throws Exception {
		
		return ".rank.article";
	}
}
