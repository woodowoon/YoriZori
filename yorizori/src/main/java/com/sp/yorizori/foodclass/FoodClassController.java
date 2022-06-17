package com.sp.yorizori.foodclass;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sp.yorizori.common.FileManager;
import com.sp.yorizori.common.MyUtil;
import com.sp.yorizori.member.SessionInfo;

@Controller("class.foodClassController")
@RequestMapping("/class/*")
public class FoodClassController {
	@Autowired
	private FoodClassService service;
	
	@Autowired
	private MyUtil myUtil;
	
	@Autowired
	private FileManager fileManager;
	
	
	@RequestMapping(value = "list")
	public String list(
			@RequestParam(value = "page", defaultValue = "1") int current_page,
			@RequestParam(defaultValue = "all") String category,
			HttpServletRequest req, Model model) throws Exception {
		
		String cp = req.getContextPath();
		
		int rows = 5;
		int total_page = 0;
		int dataCount = 0;
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("category", category);
		
		dataCount = service.dataCount(map);
		if(dataCount != 0) {
			total_page = myUtil.pageCount(rows, dataCount);
		}
		
		if (total_page < current_page) {
			current_page = total_page;
		}
		
		int start = (current_page - 1) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);
		
		List<FoodClass> list = service.listClass(map);
		for(FoodClass dto : list) {
			FoodClass fileDto = service.searchFile(dto.getClassCode());
			if(fileDto != null) {
				dto.setImageFileName(fileDto.getImageFileName());
			}
		}
		
		String query = "category=" + category;
		String listUrl = cp + "/class/list?" + query;
		String articleUrl = cp + "/class/article?" + query + "&" + "page=" + current_page;
		
		String paging = myUtil.paging(current_page, total_page, listUrl);
		
		model.addAttribute("list", list);
		model.addAttribute("articleUrl", articleUrl);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);
		model.addAttribute("category", category);
		
		return ".class.list";
	}
	
	@RequestMapping(value = "article")
	public String article() throws Exception {
		return ".class.article";
	}
	
	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String writeForm(Model model) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		
		List<FoodClass> classCategory = service.classCategory(map);
		
		model.addAttribute("category", classCategory);
		
		return ".class.write";
	}
	
	@RequestMapping(value = "write", method = RequestMethod.POST)
	public String writeSubmit(FoodClass dto, HttpSession session) throws Exception {
		String root = session.getServletContext().getRealPath("/");
		String pathname = root + "uploads" + File.separator + "class";
		
		SessionInfo info = (SessionInfo)session.getAttribute("member");
		
		try {
			dto.setUserId(info.getUserId());
			service.insertClass(dto, pathname);
		} catch (Exception e) {
		}
		
		return "redirect:/class/list";
	}
}
