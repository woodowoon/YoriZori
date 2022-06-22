package com.sp.yorizori.frige;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sp.yorizori.common.MyUtil;
import com.sp.yorizori.member.SessionInfo;
import com.sp.yorizori.recipe.Recipe;


@Controller("frige.frigeController")
@RequestMapping("/frige/*")
public class FrigeController {
	
	@Autowired
	private FrigeService service;
	
	@Autowired
	private MyUtil myUtil;
	
	
	@RequestMapping(value="main")
	public String main(Model model) throws Exception {
			
			List<Frige> list = service.listIngredient();

			model.addAttribute("list", list);
			
			return ".frige.main";
			
		}
	
	
	
	@RequestMapping(value = "list")
		public String listRecipe(
				@RequestParam(value = "page", defaultValue = "1") int current_page,
				@RequestParam(value = "rows", defaultValue = "5") int rows,
				HttpServletRequest req,
				HttpSession session,
				Recipe dto,
				Model model
				) throws Exception {
			
			SessionInfo info = (SessionInfo) session.getAttribute("member");
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("userId", info.getUserId());
			map.put("recipeNum", dto.getRecipeNum());
			
			int dataCount = service.dataCount(map);
			int total_page = myUtil.pageCount(rows, dataCount);
			if(current_page > total_page) {
				current_page = total_page;
			}
			
			int start = (current_page - 1) * rows + 1;
			int end = current_page * rows;
			map.put("start", start);
			map.put("end", end);
			map.put("dataCount", dataCount);
			
			String cp = req.getContextPath();
			String query = "";
			String listUrl = cp + "/frige/list";
			String articleUrl = cp + "/recipe/article?page=" + current_page;
			
			listUrl += "?" + query;
			articleUrl += "&" + query;
			
			String paging = myUtil.paging(current_page, total_page, listUrl);
			
			List<Frige> list = service.listRecipe(map);

			model.addAttribute("dataCount", dataCount);
			model.addAttribute("total_page", total_page);
			model.addAttribute("page", current_page);
			model.addAttribute("total_page", total_page);
			model.addAttribute("rows", rows);
			model.addAttribute("articleUrl", articleUrl);
			model.addAttribute("paging", paging);
			
			model.addAttribute("list", list);
			
			return ".frige.list";
		}

}
