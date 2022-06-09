package com.sp.yorizori.faq;

import java.net.URLDecoder;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.sp.yorizori.common.MyUtil;
import com.sp.yorizori.member.SessionInfo;

@Controller("faq.faqController")
@RequestMapping("/faq/*")
public class FaqController {
	@Autowired
	private FaqService service;
	@Autowired
	private MyUtil myUtil;

	@RequestMapping(value = "main")
	public String main(@RequestParam(value = "pageNo", defaultValue = "1") int current_page,
			Model model) throws Exception {
		Map<String, Object> map = new HashMap<>();
		
		map.put("mode", "enabled");
		List<Faq> listCategory = service.listCategory(map);

		model.addAttribute("listCategory", listCategory);
		model.addAttribute("categoryNum", "0");
		model.addAttribute("pageNo", current_page);

		return ".faq.main";
	}

	// AJAX-Text(HTML)
	@RequestMapping(value = "list")
	public String list(@RequestParam(value = "pageNo", defaultValue = "1") int current_page,
			@RequestParam(defaultValue = "all") String condition,
			@RequestParam(defaultValue = "") String keyword,
			@RequestParam(defaultValue = "0") int categoryNum,
			HttpServletRequest req,
			Model model) throws Exception {

		int rows = 10;
		int total_page = 0;
		int dataCount = 0;

		if (req.getMethod().equalsIgnoreCase("GET")) {
			keyword = URLDecoder.decode(keyword, "utf-8");
		}

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("condition", condition);
		map.put("keyword", keyword);
		map.put("categoryNum", categoryNum);

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

		List<Faq> list = service.listFaq(map);
		int listNum, n = 0;
		for (Faq dto : list) {
			listNum = dataCount - (start + n - 1);
			dto.setListNum(listNum);
			n++;

			dto.setContent(myUtil.htmlSymbols(dto.getContent()));
		}

		String paging = myUtil.pagingMethod(current_page, total_page, "listPage");

		model.addAttribute("list", list);
		model.addAttribute("pageNo", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);

		model.addAttribute("condition", condition);
		model.addAttribute("keyword", keyword);
		model.addAttribute("categoryNum", categoryNum);

		return "faq/list";
	}

	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String writeForm(Model model) throws Exception {

		Map<String, Object> map = new HashMap<>();
		map.put("mode", "enabled");
		List<Faq> listCategory = service.listCategory(map);

		// map.put("mode", "all");
		// List<Faq> listAllCategory=service.listCategory(map);

		model.addAttribute("pageNo", "1");
		model.addAttribute("mode", "write");
		model.addAttribute("listCategory", listCategory);
		// model.addAttribute("listAllCategory", listAllCategory);

		return ".faq.write";
	}

	@RequestMapping(value = "write", method = RequestMethod.POST)
	public String writeSubmit(Faq dto, HttpSession session) throws Exception {

		SessionInfo info = (SessionInfo) session.getAttribute("member");

		try {
			if (info.getRole() == 0) {
				dto.setUserId(info.getUserId());
				service.insertFaq(dto);
			}
		} catch (Exception e) {
		}

		return "redirect:/faq/main?pageNo=1";
	}

	@RequestMapping(value = "update", method = RequestMethod.GET)
	public String updateForm(@RequestParam int num,
			@RequestParam String pageNo,
			HttpSession session,
			Model model) throws Exception {
		SessionInfo info = (SessionInfo) session.getAttribute("member");

		Faq dto = service.readFaq(num);
		if (dto == null) {
			return "redirect:/faq/main?pageNo=" + pageNo;
		}

		if (! info.getUserId().equals(dto.getUserId())) {
			return "redirect:/faq/main?pageNo=" + pageNo;
		}

		Map<String, Object> map = new HashMap<>();
		map.put("mode", "enabled");
		List<Faq> listCategory = service.listCategory(map);

		// map.put("mode", "all");
		// List<Faq> listAllCategory=service.listCategory(map);

		model.addAttribute("mode", "update");
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("dto", dto);
		model.addAttribute("listCategory", listCategory);
		// model.addAttribute("listAllCategory", listAllCategory);

		return ".faq.write";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String updateSubmit(Faq dto,
			@RequestParam String pageNo,
			HttpSession session) throws Exception {

		SessionInfo info = (SessionInfo) session.getAttribute("member");

		try {
			dto.setUserId(info.getUserId());
			service.updateFaq(dto);
		} catch (Exception e) {
		}

		return "redirect:/faq/main?pageNo=" + pageNo;
	}

	// AJAX-JSON
	@RequestMapping(value = "delete", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> delete(@RequestParam int num,
			HttpSession session) throws Exception {
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		String state = "false";

		if (info.getRole() == 0) {
			try {
				Map<String, Object> map = new HashMap<>();
				map.put("num", num);

				service.deleteFaq(map);
				state = "true";
			} catch (Exception e) {
			}
		}

		Map<String, Object> model = new HashMap<>();
		model.put("state", state);
		return model;
	}

	// AJAX-Text(HTML)
	@RequestMapping(value = "listAllCategory")
	public String listAllCategory(Model model) throws Exception {
		Map<String, Object> map = new HashMap<>();
		map.put("mode", "all");
		List<Faq> listCategory = service.listCategory(map);
		model.addAttribute("listAllCategory", listCategory);
		return "faq/listAllCategory";
	}

	// AJAX-JSON
	@RequestMapping(value = "listCategory")
	@ResponseBody
	public Map<String, Object> listCategory(@RequestParam String mode) throws Exception {
		Map<String, Object> map = new HashMap<>();
		map.put("mode", mode);
		List<Faq> listCategory = service.listCategory(map);

		Map<String, Object> model = new HashMap<>();
		model.put("listCategory", listCategory);
		return model;
	}

	// AJAX-JSON
	@RequestMapping(value = "insertCategory", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> insertCategory(Faq dto) throws Exception {

		String state = "false";
		try {
			service.insertCategory(dto);
			state = "true";
		} catch (Exception e) {
		}

		Map<String, Object> model = new HashMap<>();
		model.put("state", state);
		return model;
	}

	// AJAX-JSON
	@RequestMapping(value = "updateCategory", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> updateCategory(Faq dto) throws Exception {

		String state = "false";
		try {
			service.updateCategory(dto);
			state = "true";
		} catch (Exception e) {
		}

		Map<String, Object> model = new HashMap<>();
		model.put("state", state);
		return model;
	}

	// AJAX-JSON
	@RequestMapping(value = "deleteCategory", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> deleteCategory(@RequestParam int categoryNum) throws Exception {

		String state = "false";
		try {
			service.deleteCategory(categoryNum);
			state = "true";
		} catch (Exception e) {
		}

		Map<String, Object> model = new HashMap<>();
		model.put("state", state);
		return model;
	}

}
