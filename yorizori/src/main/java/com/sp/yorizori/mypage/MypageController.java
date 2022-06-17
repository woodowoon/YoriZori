package com.sp.yorizori.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("mypage.mypageController")
@RequestMapping("/mypage/*")
public class MypageController {
	
	@RequestMapping(value = "main", method = RequestMethod.GET)
	public String main() throws Exception {
		
		return ".mypage.main";
	}
	
	@RequestMapping(value = "modify", method = RequestMethod.GET)
	public String modifyForm(Model model) throws Exception {
		
		model.addAttribute("mode", "modify");
		
		return ".mypage.pwd";
	}
	
	@RequestMapping(value = "cancel", method = RequestMethod.GET)
	public String cancelForm(Model model) throws Exception {
		
		model.addAttribute("mode", "cancel");
		
		return ".mypage.pwd";
	}
	
	@RequestMapping(value = "like", method = RequestMethod.GET)
	public String like() throws Exception {
		
		return ".mypage.like";
	}
	
	@RequestMapping(value = "wish", method = RequestMethod.GET)
	public String wish() throws Exception {
		
		return ".mypage.wish";
	}
	
	@RequestMapping(value = "favorite", method = RequestMethod.GET)
	public String favorite() throws Exception {
		
		return ".mypage.favorite";
	}
	
	@RequestMapping(value = "order", method = RequestMethod.GET)
	public String order() throws Exception {
		
		return ".mypage.order";
	}
	
	@RequestMapping(value = "refund", method = RequestMethod.GET)
	public String refund() throws Exception {
		
		return ".mypage.refund";
	}
	
	@RequestMapping(value = "sell", method = RequestMethod.GET)
	public String sell() throws Exception {
		
		return ".mypage.sell";
	}
	
	@RequestMapping(value = "contest", method = RequestMethod.GET)
	public String contest() throws Exception {
		
		return ".mypage.contest";
	}
	
	@RequestMapping(value = "coupon", method = RequestMethod.GET)
	public String coupon() throws Exception {
		
		return ".mypage.coupon";
	}
	
	@RequestMapping(value = "qna", method = RequestMethod.GET)
	public String qna() throws Exception {
		
		return ".mypage.qna";
	}
}
