package com.sp.yorizori.recipe;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public String list() throws Exception {
		
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
