package com.sp.yorizori.festival;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sp.yorizori.common.FileManager;
import com.sp.yorizori.common.MyUtil;

@Controller("festival.festivalController")
@RequestMapping("/festival/*")
public class FestivalController {
	@Autowired
	private FestivalService service;
	@Autowired
	private MyUtil myUtil;
	@Autowired
	private FileManager fileManager;
	
	@RequestMapping(value = "list")
	public String list(
			@RequestParam(value = "page", defaultValue = "1") int current_page,
			@RequestParam(defaultValue = "ing") String menu,
			HttpServletRequest req, Model model) throws Exception {
		
		String cp = req.getContextPath();
		
		int rows = 8;
		int total_page = 0;
		int dataCount = 0;
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("menu", menu);
		
		dataCount = service.dataCount(map);
		if (dataCount != 0) {
			total_page = myUtil.pageCount(rows, dataCount);
		}
		
		if (total_page < current_page) {
			current_page = total_page;
		}
		
		int start = (current_page - 1) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);
		
		List<Festival> list = service.listFest(map);
		
		String query = "menu=" + menu;
		String listUrl = cp + "/festival/list?" + query;
		String articleUrl = cp + "/festival/article?page=" + current_page + "&" + query;
		
		String paging = myUtil.paging(current_page, total_page, listUrl);
		
		model.addAttribute("list", list);
		model.addAttribute("articleUrl", articleUrl);
		model.addAttribute("paging", paging);
		model.addAttribute("menu", menu);
		
		return ".festival.list";
	}
	
	@RequestMapping(value = "article")
	public String article() throws Exception {
		
		return ".festival.article";
	}
}
