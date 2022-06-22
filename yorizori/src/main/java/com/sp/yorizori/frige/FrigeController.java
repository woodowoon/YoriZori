package com.sp.yorizori.frige;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller("frige.frigeController")
@RequestMapping("/frige/*")
public class FrigeController {
	
	@Autowired
	private FrigeService service;
	
	
	@RequestMapping(value="main")
	public String main(Model model) throws Exception {
			
			List<Frige> list = service.listIngredient();

			model.addAttribute("list", list);
			
			return ".frige.main";
			
		}
	
	
	
	@RequestMapping(value = "list")
		public String listRecipe(Model model) throws Exception {
		List<Frige> list = service.listRecipe();

		model.addAttribute("list", list);

			return ".frige.list";
		}

}
