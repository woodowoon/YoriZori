package com.sp.yorizori.recipe;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.sp.yorizori.common.MyUtil;
import com.sp.yorizori.member.SessionInfo;

@Controller("recipe.recipeController")
@RequestMapping("/recipe/*")
public class RecipeController {
	
	@Autowired
	private RecipeService service;
	
	@Autowired
	private MyUtil myUtil;
	
	@RequestMapping(value = "feed")
	public String list(
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
		boolean isFollow = service.isFollow(map);
		boolean isRecipeLike = service.isRecipeLike(map);
		
		map.put("isFollow", isFollow);
		map.put("isRecipeLike", isRecipeLike);
		map.put("userCountryNum", info.getCountryNum());
		
		int dataCount = service.dataCount(map);
		int total_page = myUtil.pageCount(rows, dataCount);
		if(current_page > total_page) {
			current_page = total_page;
		}
		
		int start = (current_page - 1) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);
		
		String cp = req.getContextPath();
		String query = "";
		String listUrl = cp + "/recipe/feed";
		String articleUrl = cp + "/recipe/article?page=" + current_page;
		
		listUrl += "?" + query;
		articleUrl += "&" + query;
		
		String paging = myUtil.paging(current_page, total_page, listUrl);
		
		List<Recipe> list = service.listRecipeFeed(map);

		model.addAttribute("dataCount", dataCount);
		model.addAttribute("total_page", total_page);
		model.addAttribute("page", current_page);
		model.addAttribute("total_page", total_page);
		model.addAttribute("rows", rows);
		model.addAttribute("articleUrl", articleUrl);
		model.addAttribute("paging", paging);
		model.addAttribute("isRecipeLike", isRecipeLike);
		
		model.addAttribute("list", list);
		
		return ".recipe.feed";
	}
	
	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String writeForm(Model model) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> ingredientMap = new HashMap<String, Object>();
		
		ingredientMap.put("parent", null);
		
		List<Recipe> caseCategory = service.listcaseCategory(map);
		List<Recipe> countryCategory = service.listcountryCategory(map);
		
		List<Recipe> ingredientCategory = service.listingredient(ingredientMap);
		
		model.addAttribute("mode", "write");
		model.addAttribute("caseCategory", caseCategory);
		model.addAttribute("countryCategory", countryCategory);
		model.addAttribute("ingredientCategory", ingredientCategory);
		
		return ".recipe.write";
	}
	
	@RequestMapping(value = "write", method = RequestMethod.POST)
	public String writeSubmit(Recipe dto, HttpSession session) throws Exception {
		
		String root = session.getServletContext().getRealPath("/");
		String path = root + "uploads" + File.separator + "recipe";
		
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		
		try {
			dto.setUserId(info.getUserId());
			service.insertRecipe(dto, path);
		} catch (Exception e) {
		}
		
		return "redirect:/recipe/feed";
	}
	
	
	@RequestMapping(value = "article")
	public String article(
			@RequestParam int recipeNum,
			@RequestParam String page,
			HttpSession session, Model model) throws Exception {
		
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		
		String query = "page=" + page;
		
		Recipe dto = service.readRecipe(recipeNum);
		
		if(dto == null) {
			return "redirect:/recipe/peed?" + query;
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("recipeNum", recipeNum);
		map.put("userId", info.getUserId());
		map.put("nickName", info.getNickName());
		
		boolean isRecipeLike = service.isRecipeLike(map);
		
		model.addAttribute("dto", dto);
		model.addAttribute("page", page);
		model.addAttribute("query", query);
		model.addAttribute("isRecipeLike", isRecipeLike);
		
		return ".recipe.article";
	}
	
	@RequestMapping(value = "ingredient", method = RequestMethod.GET) 
	@ResponseBody
	public Map<String, Object> listingredient (
			@RequestParam int ingredientCode
			) throws Exception {
		
		List<Recipe> list = service.listingredient(ingredientCode);
		
		Map<String, Object> model = new HashMap<String, Object>();
		
		model.put("list", list);
		
		return model;
	}
	
	
}
