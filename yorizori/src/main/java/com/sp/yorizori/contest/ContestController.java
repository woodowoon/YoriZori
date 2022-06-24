package com.sp.yorizori.contest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sp.yorizori.common.MyUtil;

@Controller("contest.contestController")
@RequestMapping("/contest/*")
public class ContestController {
	@Autowired
	private ContestService service;
	@Autowired
	private MyUtil myUtil;

	@RequestMapping(value = "list")
	public String list(
			@RequestParam(value = "page", defaultValue = "1") int current_page,
			@RequestParam(defaultValue = "ing") String menu,
			HttpServletRequest req, Model model) throws Exception {
		
		String cp = req.getContextPath();
		
		int rows = 9;
		int total_page = 0;
		int dataCount = 0;
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("menu", menu);
		
		dataCount = service.dataCount(map);
		if(dataCount != 0) {
			total_page = myUtil.pageCount(rows, dataCount);
		}
		
		if(total_page < current_page) {
			current_page = total_page;
		}
		
		int start = (current_page - 1) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);
		
		List<Contest> list = service.listContest(map);
		
		String query = "menu=" + menu;
		String listUrl = cp + "/contest/list?" + query;
		String articleUrl = cp + "/contest/article?" + query + "&page=" + current_page;
		
		if(query.length() != 0) {
			listUrl = cp + "/contest/list?" + query;
			articleUrl = cp + "/contest/article?page=" + current_page + "&" + query;
		}
		
		String paging = myUtil.paging(current_page, total_page, listUrl);
		
		model.addAttribute("list", list);
		model.addAttribute("articleUrl", articleUrl);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);
		model.addAttribute("menu", menu);
				
		return ".contest.list";
	}
	
	@RequestMapping(value = "article")
	public String article(
			@RequestParam int contestNum,
			@RequestParam String page,
			@RequestParam(defaultValue = "ing") String menu,
			Model model) throws Exception {
		
		String query = "menu=" + menu;
		query += "&page=" + page;
		
		Contest dto = service.readContest(contestNum);
		if(dto == null) {
			return "redirect:/contest/list?" + query;
		}
		
		dto.setContestContent(myUtil.htmlSymbols(dto.getContestContent()));
		
		int rows = 9;
		int start = (Integer.parseInt(page) - 1) * rows + 1;
		int end = Integer.parseInt(page) * rows;
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("menu", menu);
		map.put("contestNum", contestNum);
		map.put("start", start);
		map.put("end", end);
		
		model.addAttribute("dto", dto);
		model.addAttribute("page", page);
		model.addAttribute("query", query);
		model.addAttribute("menu", menu);
		
		return ".contest.article";
	}
}
