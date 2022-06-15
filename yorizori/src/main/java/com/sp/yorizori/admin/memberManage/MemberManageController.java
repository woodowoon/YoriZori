package com.sp.yorizori.admin.memberManage;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sp.yorizori.common.MyUtil;

@Controller("admin.memberManage.memberManageController")
@RequestMapping("/admin/memberManage/*")
public class MemberManageController {
	@Autowired
	private MemberManageService service;
	
	@Autowired
	@Qualifier("myUtilGeneral")
	private MyUtil myUtil;
	
	@RequestMapping("memberList")
	public String memberManage(@RequestParam(value = "page", defaultValue = "1") int current_page,
			@RequestParam(defaultValue = "userId") String condition,
			@RequestParam(defaultValue = "") String keyword,
			@RequestParam(defaultValue = "") String enabled,
			HttpServletRequest req,
			Model model) throws Exception {
		
		String cp = req.getContextPath();
		
		int rows = 10;
		int total_page = 0;
		int dataCount = 0;
		
		if(req.getMethod().equalsIgnoreCase("GET")) {
			keyword = URLDecoder.decode(keyword, "utf-8");
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("enabled", enabled);
		map.put("condition", condition);
		map.put("keyword", keyword);
		
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
		
		List<Member> list = service.listMember(map);
		
		int listNum, n = 0;
		for(Member dto : list) {
			listNum = dataCount - (start + n - 1);
			dto.setListNum(listNum);
			n++;
		}
		
		String query = "";
		String listUrl = cp + "/admin/memberManage/memberList";
		
		if(keyword.length() != 0) {
			query = "condition=" + condition + "&keyword=" + URLEncoder.encode(keyword, "utf-8");
		}
		
		if(enabled.length() != 0) {
			if(query.length() != 0)
				query = query + "&enabled=" + enabled;
			else
				query = "enabled=" + enabled;
		}
		
		if (query.length() != 0) {
			listUrl = listUrl + "?" + query;
		}
		
		String paging = myUtil.paging(current_page, total_page, listUrl);
		
		model.addAttribute("list", list);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);
		model.addAttribute("enabled", enabled);
		model.addAttribute("condition", condition);
		model.addAttribute("keyword", keyword);
				
		return ".admin.memberManage.list";
	}
	
	@RequestMapping(value = "detaile")
	public String detaileMember(@RequestParam String userId, Model model) throws Exception {
		Member dto = service.readMember(userId);
		Member memberState = service.readMemberState(userId);
		List<Member> listState = service.listMemberState(userId);
		
		model.addAttribute("dto", dto);
		model.addAttribute("memberState", memberState);
		model.addAttribute("listState", listState);		
		
		return "admin/memberManage/detaile";
	}
	
	@RequestMapping(value = "updateMemberState", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> updateMemberState(Member dto) throws Exception {
		String state = "true";
		
		try {
			Map<String, Object> map = new HashMap<>();
			map.put("userId", dto.getUserId());
			if(dto.getStateCode() == 0) {
				map.put("enabled", 1);
			} else {
				map.put("enabled", 0);
			}
			service.updateMemberEnabled(map);
			
			service.insertMemberState(dto);
			
			if(dto.getStateCode() == 0) {
				service.updateFailureCountReset(dto.getUserId());
			}
		} catch (Exception e) {
			state = "false";
		}
		
		Map<String, Object> model = new HashMap<>();
		model.put("state", state);
		
		return model;
	}
}
