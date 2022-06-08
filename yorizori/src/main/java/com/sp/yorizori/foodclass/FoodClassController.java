package com.sp.yorizori.foodclass;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("foodClassController")
public class FoodClassController {
	@RequestMapping("/class")
	public String list() {
		return ".class.list";
	}
}
